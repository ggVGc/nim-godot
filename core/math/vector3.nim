import 
  ustring

type 
  Vector3* {.importcpp: "Vector3", header: "vector3.h".} = object 
  

type 
  real_t* = int
  Axis* = enum 
    AXIS_X, AXIS_Y, AXIS_Z
type 
  INNER_C_STRUCT_14893577797819941872* {.importcpp: "no_name", 
      header: "vector3.h".} = object 
    x* {.importc: "x".}: real_t
    y* {.importc: "y".}: real_t
    z* {.importc: "z".}: real_t

proc `[]`*(this: Vector3; p_axis: cint): real_t {.noSideEffect, 
    importcpp: "#[@]", header: "vector3.h".}
proc `[]`*(this: var Vector3; p_axis: cint): var real_t {.importcpp: "#[@]", 
    header: "vector3.h".}
proc set_axis*(this: var Vector3; p_axis: cint; p_value: real_t) {.
    importcpp: "set_axis", header: "vector3.h".}
proc get_axis*(this: Vector3; p_axis: cint): real_t {.noSideEffect, 
    importcpp: "get_axis", header: "vector3.h".}
proc min_axis*(this: Vector3): cint {.noSideEffect, importcpp: "min_axis", 
                                      header: "vector3.h".}
proc max_axis*(this: Vector3): cint {.noSideEffect, importcpp: "max_axis", 
                                      header: "vector3.h".}
proc length*(this: Vector3): real_t {.noSideEffect, importcpp: "length", 
                                      header: "vector3.h".}
proc length_squared*(this: Vector3): real_t {.noSideEffect, 
    importcpp: "length_squared", header: "vector3.h".}
proc normalize*(this: var Vector3) {.importcpp: "normalize", header: "vector3.h".}
proc normalized*(this: Vector3): Vector3 {.noSideEffect, 
    importcpp: "normalized", header: "vector3.h".}
proc inverse*(this: Vector3): Vector3 {.noSideEffect, importcpp: "inverse", 
                                        header: "vector3.h".}
proc zero*(this: var Vector3) {.importcpp: "zero", header: "vector3.h".}
proc snap*(this: var Vector3; p_val: cfloat) {.importcpp: "snap", 
    header: "vector3.h".}
proc snapped*(this: Vector3; p_val: cfloat): Vector3 {.noSideEffect, 
    importcpp: "snapped", header: "vector3.h".}
proc rotate*(this: var Vector3; p_axis: Vector3; p_phi: cfloat) {.
    importcpp: "rotate", header: "vector3.h".}
proc rotated*(this: Vector3; p_axis: Vector3; p_phi: cfloat): Vector3 {.
    noSideEffect, importcpp: "rotated", header: "vector3.h".}
proc linear_interpolate*(this: Vector3; p_b: Vector3; p_t: cfloat): Vector3 {.
    noSideEffect, importcpp: "linear_interpolate", header: "vector3.h".}
proc cubic_interpolate*(this: Vector3; p_b: Vector3; p_pre_a: Vector3; 
                        p_post_b: Vector3; p_t: cfloat): Vector3 {.noSideEffect, 
    importcpp: "cubic_interpolate", header: "vector3.h".}
proc cubic_interpolaten*(this: Vector3; p_b: Vector3; p_pre_a: Vector3; 
                         p_post_b: Vector3; p_t: cfloat): Vector3 {.
    noSideEffect, importcpp: "cubic_interpolaten", header: "vector3.h".}
proc cross*(this: Vector3; p_b: Vector3): Vector3 {.noSideEffect, 
    importcpp: "cross", header: "vector3.h".}
proc dot*(this: Vector3; p_b: Vector3): real_t {.noSideEffect, importcpp: "dot", 
    header: "vector3.h".}
proc abs*(this: Vector3): Vector3 {.noSideEffect, importcpp: "abs", 
                                    header: "vector3.h".}
proc distance_to*(this: Vector3; p_b: Vector3): real_t {.noSideEffect, 
    importcpp: "distance_to", header: "vector3.h".}
proc distance_squared_to*(this: Vector3; p_b: Vector3): real_t {.noSideEffect, 
    importcpp: "distance_squared_to", header: "vector3.h".}
proc slide*(this: Vector3; p_vec: Vector3): Vector3 {.noSideEffect, 
    importcpp: "slide", header: "vector3.h".}
proc reflect*(this: Vector3; p_vec: Vector3): Vector3 {.noSideEffect, 
    importcpp: "reflect", header: "vector3.h".}
proc `+=`*(this: var Vector3; p_v: Vector3) {.importcpp: "(# += #)", 
    header: "vector3.h".}
proc `+`*(this: Vector3; p_v: Vector3): Vector3 {.noSideEffect, 
    importcpp: "(# + #)", header: "vector3.h".}
proc `-=`*(this: var Vector3; p_v: Vector3) {.importcpp: "(# -= #)", 
    header: "vector3.h".}
proc `-`*(this: Vector3; p_v: Vector3): Vector3 {.noSideEffect, 
    importcpp: "(# - #)", header: "vector3.h".}
proc `*=`*(this: var Vector3; p_v: Vector3) {.importcpp: "(# *= #)", 
    header: "vector3.h".}
proc `*`*(this: Vector3; p_v: Vector3): Vector3 {.noSideEffect, 
    importcpp: "(# * #)", header: "vector3.h".}
proc `/=`*(this: var Vector3; p_v: Vector3) {.importcpp: "(# /= #)", 
    header: "vector3.h".}
proc `/`*(this: Vector3; p_v: Vector3): Vector3 {.noSideEffect, 
    importcpp: "(# / #)", header: "vector3.h".}
proc `*=`*(this: var Vector3; p_scalar: real_t) {.importcpp: "(# *= #)", 
    header: "vector3.h".}
proc `*`*(this: Vector3; p_scalar: real_t): Vector3 {.noSideEffect, 
    importcpp: "(# * #)", header: "vector3.h".}
proc `/=`*(this: var Vector3; p_scalar: real_t) {.importcpp: "(# /= #)", 
    header: "vector3.h".}
proc `/`*(this: Vector3; p_scalar: real_t): Vector3 {.noSideEffect, 
    importcpp: "(# / #)", header: "vector3.h".}
proc `-`*(this: Vector3): Vector3 {.noSideEffect, importcpp: "(- #)", 
                                    header: "vector3.h".}
proc `==`*(this: Vector3; p_v: Vector3): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "vector3.h".}
proc `<`*(this: Vector3; p_v: Vector3): bool {.noSideEffect, 
    importcpp: "(# < #)", header: "vector3.h".}
proc `<=`*(this: Vector3; p_v: Vector3): bool {.noSideEffect, 
    importcpp: "(# <= #)", header: "vector3.h".}
proc constructVector3*(): Vector3 {.constructor, importcpp: "Vector3(@)", 
                                    header: "vector3.h".}
proc constructVector3*(p_x: real_t; p_y: real_t; p_z: real_t): Vector3 {.
    constructor, importcpp: "Vector3(@)", header: "vector3.h".}

