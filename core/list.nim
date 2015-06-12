import 
  os/memory, sort

type 
  List* {.importcpp: "_Data", header: "list.h".}[T, A] = object
    _data* {.importc: "_data".}: ptr _Data #*

type 
  Element* {.importcpp: "Element", header: "list.h".}[T, A] = object #*
                                                                     #    Get NEXT Element iterator, for constant lists.
                                                                     #   
    value* {.importc: "value".}: T
    next_ptr* {.importc: "next_ptr".}: ptr Element
    prev_ptr* {.importc: "prev_ptr".}: ptr Element
    data* {.importc: "data".}: ptr _Data #*
    
proc next*[T, A](this: Element[T, A]): ptr Element {.noSideEffect, 
    importcpp: "next", header: "list.h".}
proc next*[T, A](this: var Element[T, A]): ptr Element {.importcpp: "next", 
    header: "list.h".}
proc prev*[T, A](this: Element[T, A]): ptr Element {.noSideEffect, 
    importcpp: "prev", header: "list.h".}
proc prev*[T, A](this: var Element[T, A]): ptr Element {.importcpp: "prev", 
    header: "list.h".}
proc `*`*[T, A](this: Element[T, A]): T {.noSideEffect, importcpp: "(* #)", 
    header: "list.h".}
proc `->`*[T, A](this: Element[T, A]): ptr T {.noSideEffect, 
    importcpp: "(# -> #)", header: "list.h".}
proc `*`*[T, A](this: var Element[T, A]): var T {.importcpp: "(* #)", 
    header: "list.h".}
proc `->`*[T, A](this: var Element[T, A]): ptr T {.importcpp: "(# -> #)", 
    header: "list.h".}
proc get*[T, A](this: var Element[T, A]): var T {.importcpp: "get", 
    header: "list.h".}
proc get*[T, A](this: Element[T, A]): T {.noSideEffect, importcpp: "get", 
    header: "list.h".}
proc set*[T, A](this: var Element[T, A]; p_value: T) {.importcpp: "set", 
    header: "list.h".}
proc erase*[T, A](this: var Element[T, A]) {.importcpp: "erase", 
    header: "list.h".}
proc constructElement*[T, A](): Element[T, A] {.constructor, 
    importcpp: "Element(@)", header: "list.h".}
proc front*[T, A](this: _Data[T, A]): ptr Element {.noSideEffect, 
    importcpp: "front", header: "list.h".}
proc front*[T, A](this: var _Data[T, A]): ptr Element {.importcpp: "front", 
    header: "list.h".}
proc back*[T, A](this: _Data[T, A]): ptr Element {.noSideEffect, 
    importcpp: "back", header: "list.h".}
proc back*[T, A](this: var _Data[T, A]): ptr Element {.importcpp: "back", 
    header: "list.h".}
proc push_back*[T, A](this: var _Data[T, A]; value: T): ptr Element {.
    importcpp: "push_back", header: "list.h".}
proc pop_back*[T, A](this: var _Data[T, A]) {.importcpp: "pop_back", 
    header: "list.h".}
proc push_front*[T, A](this: var _Data[T, A]; value: T): ptr Element {.
    importcpp: "push_front", header: "list.h".}
proc pop_front*[T, A](this: var _Data[T, A]) {.importcpp: "pop_front", 
    header: "list.h".}
proc find*[T, A, T_v](this: var _Data[T, A]; p_val: T_v): ptr Element {.
    importcpp: "find", header: "list.h".}
proc erase*[T, A](this: var _Data[T, A]; p_I: ptr Element): bool {.
    importcpp: "erase", header: "list.h".}
proc erase*[T, A](this: var _Data[T, A]; value: T): bool {.importcpp: "erase", 
    header: "list.h".}
proc empty*[T, A](this: _Data[T, A]): bool {.noSideEffect, importcpp: "empty", 
    header: "list.h".}
proc clear*[T, A](this: var _Data[T, A]) {.importcpp: "clear", header: "list.h".}
proc size*[T, A](this: _Data[T, A]): cint {.noSideEffect, importcpp: "size", 
    header: "list.h".}
proc swap*[T, A](this: var _Data[T, A]; p_A: ptr Element; p_B: ptr Element) {.
    importcpp: "swap", header: "list.h".}
proc `[]`*[T, A](this: var _Data[T, A]; p_index: cint): var T {.
    importcpp: "#[@]", header: "list.h".}
proc `[]`*[T, A](this: _Data[T, A]; p_index: cint): T {.noSideEffect, 
    importcpp: "#[@]", header: "list.h".}
proc move_to_back*[T, A](this: var _Data[T, A]; p_I: ptr Element) {.
    importcpp: "move_to_back", header: "list.h".}
proc invert*[T, A](this: var _Data[T, A]) {.importcpp: "invert", 
    header: "list.h".}
proc move_to_front*[T, A](this: var _Data[T, A]; p_I: ptr Element) {.
    importcpp: "move_to_front", header: "list.h".}
proc move_before*[T, A](this: var _Data[T, A]; value: ptr Element; 
                        where: ptr Element) {.importcpp: "move_before", 
    header: "list.h".}
proc sort*[T, A](this: var _Data[T, A]) {.importcpp: "sort", header: "list.h".}
proc sort_custom_inplace*[T, A, C](this: var _Data[T, A]) {.
    importcpp: "sort_custom_inplace", header: "list.h".}
  type 
    AuxiliaryComparator* {.importcpp: "AuxiliaryComparator", header: "list.h".}[
        T, A, C] = object 
    
proc sort_custom*[T, A, C](this: var _Data[T, A]) {.importcpp: "sort_custom", 
    header: "list.h".}

