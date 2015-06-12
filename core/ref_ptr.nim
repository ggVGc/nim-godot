type 
  RefPtr* {.importcpp: "RefPtr", header: "ref_ptr.h".} = object 
  

proc is_null*(this: RefPtr): bool {.noSideEffect, importcpp: "is_null", 
                                    header: "ref_ptr.h".}
proc `==`*(this: RefPtr; p_other: RefPtr): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "ref_ptr.h".}
proc unref*(this: var RefPtr) {.importcpp: "unref", header: "ref_ptr.h".}
proc get_data*(this: RefPtr): pointer {.noSideEffect, importcpp: "get_data", 
                                        header: "ref_ptr.h".}
proc constructRefPtr*(p_other: RefPtr): RefPtr {.constructor, 
    importcpp: "RefPtr(@)", header: "ref_ptr.h".}
proc constructRefPtr*(): RefPtr {.constructor, importcpp: "RefPtr(@)", 
                                  header: "ref_ptr.h".}
proc destroyRefPtr*(this: var RefPtr) {.importcpp: "#.~RefPtr()", 
                                        header: "ref_ptr.h".}

