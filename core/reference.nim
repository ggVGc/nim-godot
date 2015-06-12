import
  ref_ptr
type 
  Ref* {.importcpp: "Ref", header: "reference.h".}[T] = object 
    reference* {.importc: "reference".}: ptr T


proc `<`*[T](this: Ref[T]; p_r: Ref[T]): bool {.noSideEffect, 
    importcpp: "(# < #)", header: "reference.h".}
proc `==`*[T](this: Ref[T]; p_r: Ref[T]): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "reference.h".}
proc `->`*[T](this: var Ref[T]): ptr T {.importcpp: "(# -> #)", 
    header: "reference.h".}
proc `*`*[T](this: var Ref[T]): ptr T {.importcpp: "(* #)", 
                                        header: "reference.h".}
proc `->`*[T](this: Ref[T]): ptr T {.noSideEffect, importcpp: "(# -> #)", 
                                     header: "reference.h".}
proc `ptr`*[T](this: Ref[T]): ptr T {.noSideEffect, importcpp: "ptr", 
                                      header: "reference.h".}
proc `ptr`*[T](this: var Ref[T]): ptr T {.importcpp: "ptr", 
    header: "reference.h".}
proc `*`*[T](this: Ref[T]): ptr T {.noSideEffect, importcpp: "(* #)", 
                                    header: "reference.h".}
proc get_ref_ptr*[T](this: Ref[T]): RefPtr {.noSideEffect, 
    importcpp: "get_ref_ptr", header: "reference.h".}
proc constructRef*[T](p_from: Ref): Ref[T] {.constructor, importcpp: "Ref(@)", 
    header: "reference.h".}
proc is_valid*[T](this: Ref[T]): bool {.inline, noSideEffect, 
                                        importcpp: "is_valid", 
                                        header: "reference.h".}
proc is_null*[T](this: Ref[T]): bool {.inline, noSideEffect, 
                                       importcpp: "is_null", 
                                       header: "reference.h".}
proc unref*[T](this: var Ref[T]) {.importcpp: "unref", header: "reference.h".}
proc constructRef*[T](): Ref[T] {.constructor, importcpp: "Ref(@)", 
                                  header: "reference.h".}
proc destroyRef*[T](this: var Ref[T]) {.importcpp: "#.~Ref()", 
                                        header: "reference.h".}
type 
  WeakRef* {.importcpp: "WeakRef", header: "reference.h".} = object


proc set_ref*(this: var WeakRef; p_ref: REF) {.importcpp: "set_ref", 
    header: "reference.h".}
proc constructWeakRef*(): WeakRef {.constructor, importcpp: "WeakRef(@)", 
                                    header: "reference.h".}

