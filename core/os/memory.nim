import 
  os/memory_pool_dynamic, os/memory_pool_static

#*
# @author Juan Linietsky <reduzio@gmail.com>
#

type 
  MID* {.importcpp: "MID", header: "memory.h".} = object 
    data* {.importc: "data".}: ptr Data


proc is_valid*(this: MID): bool {.noSideEffect, importcpp: "is_valid", 
                                  header: "memory.h".}
proc bool*(this: MID): operator {.noSideEffect, importcpp: "bool", 
                                  header: "memory.h".}
proc get_size*(this: MID): csize {.noSideEffect, importcpp: "get_size", 
                                   header: "memory.h".}
proc resize*(this: var MID; p_size: csize): Error {.importcpp: "resize", 
    header: "memory.h".}
proc is_locked*(this: MID): bool {.inline, noSideEffect, importcpp: "is_locked", 
                                   header: "memory.h".}
proc constructMID*(p_mid: MID): MID {.inline, constructor, importcpp: "MID(@)", 
                                      header: "memory.h".}
proc constructMID*(): MID {.inline, constructor, importcpp: "MID(@)", 
                            header: "memory.h".}
proc destroyMID*(this: var MID) {.importcpp: "#.~MID()", header: "memory.h".}
type 
  MID_Lock* {.importcpp: "MID_Lock", header: "memory.h".} = object 
    mid* {.importc: "mid".}: MID


proc data*(this: var MID_Lock): pointer {.importcpp: "data", header: "memory.h".}
proc constructMID_Lock*(p_mid: MID): MID_Lock {.inline, constructor, 
    importcpp: "MID_Lock(@)", header: "memory.h".}
proc constructMID_Lock*(p_lock: MID_Lock): MID_Lock {.inline, constructor, 
    importcpp: "MID_Lock(@)", header: "memory.h".}
proc constructMID_Lock*(): MID_Lock {.constructor, importcpp: "MID_Lock(@)", 
                                      header: "memory.h".}
proc destroyMID_Lock*(this: var MID_Lock) {.importcpp: "#.~MID_Lock()", 
    header: "memory.h".}
type 
  Memory* {.importcpp: "Memory", header: "memory.h".} = object 
  

proc alloc_static*(p_bytes: csize; p_descr: cstring = ""): pointer {.
    importcpp: "Memory::alloc_static(@)", header: "memory.h".}
proc realloc_static*(p_memory: pointer; p_bytes: csize): pointer {.
    importcpp: "Memory::realloc_static(@)", header: "memory.h".}
proc free_static*(p_ptr: pointer) {.importcpp: "Memory::free_static(@)", 
                                    header: "memory.h".}
proc get_static_mem_available*(): csize {.
    importcpp: "Memory::get_static_mem_available(@)", header: "memory.h".}
proc get_static_mem_usage*(): csize {.importcpp: "Memory::get_static_mem_usage(@)", 
                                      header: "memory.h".}
proc get_static_mem_max_usage*(): csize {.
    importcpp: "Memory::get_static_mem_max_usage(@)", header: "memory.h".}
proc dump_static_mem_to_file*(p_file: cstring) {.
    importcpp: "Memory::dump_static_mem_to_file(@)", header: "memory.h".}
proc alloc_dynamic*(p_bytes: csize; p_descr: cstring = ""): MID {.
    importcpp: "Memory::alloc_dynamic(@)", header: "memory.h".}
proc realloc_dynamic*(p_mid: MID; p_bytes: csize): Error {.
    importcpp: "Memory::realloc_dynamic(@)", header: "memory.h".}
proc get_dynamic_mem_available*(): csize {.
    importcpp: "Memory::get_dynamic_mem_available(@)", header: "memory.h".}
proc get_dynamic_mem_usage*(): csize {.importcpp: "Memory::get_dynamic_mem_usage(@)", 
                                       header: "memory.h".}
type 
  MemAalign* {.importcpp: "MemAalign", header: "memory.h".}[T] = object 
  

proc get_align*[T](): cint {.importcpp: "MemAalign::get_align(@)", 
                             header: "memory.h".}
type 
  DefaultAllocator* {.importcpp: "DefaultAllocator", header: "memory.h".} = object 
  

proc alloc*(p_memory: csize): pointer {.importcpp: "DefaultAllocator::alloc(@)", 
                                        header: "memory.h".}
proc free*(p_ptr: pointer) {.importcpp: "DefaultAllocator::free(@)", 
                             header: "memory.h".}
proc new*(p_size: csize; p_description: cstring): pointer {.importcpp: "new(@)", 
    header: "memory.h".}
#/< operator new that takes a description and uses MemoryStaticPool

proc new*(p_size: csize; p_allocfunc: proc (p_size: csize): pointer): pointer {.
    importcpp: "new(@)", header: "memory.h".}
#/< operator new that takes a description and uses MemoryStaticPool

proc new*(p_size: csize; p_pointer: pointer; check: csize; 
          p_description: cstring): pointer {.importcpp: "new(@)", 
    header: "memory.h".}
#/< operator new that takes a description and uses a pointer to the preallocated memory

when defined(DEBUG_MEMORY_ENABLED): 
  template memalloc*(m_size: expr): expr = 
    alloc_static(m_size, __FILE__, ":", __STR(__LINE__), ", memalloc.")

  template memrealloc*(m_mem, m_size: expr): expr = 
    realloc_static(m_mem, m_size)

  template memfree*(m_size: expr): expr = 
    free_static(m_size)

else: 
  template memalloc*(m_size: expr): expr = 
    alloc_static(m_size)

  template memrealloc*(m_mem, m_size: expr): expr = 
    realloc_static(m_mem, m_size)

  template memfree*(m_size: expr): expr = 
    free_static(m_size)

when defined(DEBUG_MEMORY_ENABLED): 
  template dynalloc*(m_size: expr): expr = 
    alloc_dynamic(m_size, __FILE__, ":", __STR(__LINE__), ", type: DYNAMIC")

  template dynrealloc*(m_mem, m_size: expr): expr = 
    m_mem.resize(m_size)

else: 
  template dynalloc*(m_size: expr): expr = 
    alloc_dynamic(m_size)

  template dynrealloc*(m_mem, m_size: expr): expr = 
    m_mem.resize(m_size)

proc postinitialize_handler*(a2: pointer)
proc _post_initialize*[T](p_obj: ptr T): ptr T
proc predelete_handler*(a2: pointer): bool
proc memdelete*[T](p_class: ptr T)
proc memdelete_allocator*[T, A](p_class: ptr T)
proc memnew_arr_template*[T](p_elements: csize; p_descr: cstring = ""): ptr T
#*
#  Wonders of having own array functions, you can actually check the length of
#  an allocated-with memnew_arr() array
# 

proc memarr_len*[T](p_class: ptr T): csize
proc memdelete_arr*[T](p_class: ptr T)
type 
  _GlobalNil* {.importcpp: "_GlobalNil", header: "memory.h".} = object 
    color* {.importc: "color".}: cint
    right* {.importc: "right".}: ptr _GlobalNil
    left* {.importc: "left".}: ptr _GlobalNil
    parent* {.importc: "parent".}: ptr _GlobalNil


proc construct_GlobalNil*(): _GlobalNil {.constructor, 
    importcpp: "_GlobalNil(@)", header: "memory.h".}
type 
  _GlobalNilClass* {.importcpp: "_GlobalNilClass", header: "memory.h".} = object 
  


