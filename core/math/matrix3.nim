import
  vector3
type 
  Matrix3* {.importcpp: "Matrix3", header: "matrix3.h".} = object 
    elements* {.importc: "elements".}: array[3, Vector3]


proc `[]`*(this: Matrix3; axis: cint): Vector3 {.noSideEffect, 
    importcpp: "#[@]", header: "matrix3.h".}
proc `[]`*(this: var Matrix3; axis: cint): var Vector3 {.importcpp: "#[@]", 
    header: "matrix3.h".}
proc invert*(this: var Matrix3) {.importcpp: "invert", header: "matrix3.h".}
proc transpose*(this: var Matrix3) {.importcpp: "transpose", header: "matrix3.h".}
proc inverse*(this: Matrix3): Matrix3 {.noSideEffect, importcpp: "inverse", 
                                        header: "matrix3.h".}
proc transposed*(this: Matrix3): Matrix3 {.noSideEffect, 
    importcpp: "transposed", header: "matrix3.h".}
proc determinant*(this: Matrix3): cfloat {.noSideEffect, 
    importcpp: "determinant", header: "matrix3.h".}
proc from_z*(this: var Matrix3; p_z: Vector3) {.importcpp: "from_z", 
    header: "matrix3.h".}
proc get_axis*(this: Matrix3; p_axis: cint): Vector3 {.noSideEffect, 
    importcpp: "get_axis", header: "matrix3.h".}
proc set_axis*(this: var Matrix3; p_axis: cint; p_value: Vector3) {.
    importcpp: "set_axis", header: "matrix3.h".}
proc rotate*(this: var Matrix3; p_axis: Vector3; p_phi: real_t) {.
    importcpp: "rotate", header: "matrix3.h".}
proc rotated*(this: Matrix3; p_axis: Vector3; p_phi: real_t): Matrix3 {.
    noSideEffect, importcpp: "rotated", header: "matrix3.h".}
proc scale*(this: var Matrix3; p_scale: Vector3) {.importcpp: "scale", 
    header: "matrix3.h".}
proc scaled*(this: Matrix3; p_scale: Vector3): Matrix3 {.noSideEffect, 
    importcpp: "scaled", header: "matrix3.h".}
proc get_scale*(this: Matrix3): Vector3 {.noSideEffect, importcpp: "get_scale", 
    header: "matrix3.h".}
proc get_euler*(this: Matrix3): Vector3 {.noSideEffect, importcpp: "get_euler", 
    header: "matrix3.h".}
proc set_euler*(this: var Matrix3; p_euler: Vector3) {.importcpp: "set_euler", 
    header: "matrix3.h".}
proc tdotx*(this: Matrix3; v: Vector3): real_t {.noSideEffect, 
    importcpp: "tdotx", header: "matrix3.h".}
proc tdoty*(this: Matrix3; v: Vector3): real_t {.noSideEffect, 
    importcpp: "tdoty", header: "matrix3.h".}
proc tdotz*(this: Matrix3; v: Vector3): real_t {.noSideEffect, 
    importcpp: "tdotz", header: "matrix3.h".}
proc `==`*(this: Matrix3; p_matrix: Matrix3): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "matrix3.h".}
proc xform*(this: Matrix3; p_vector: Vector3): Vector3 {.noSideEffect, 
    importcpp: "xform", header: "matrix3.h".}
proc xform_inv*(this: Matrix3; p_vector: Vector3): Vector3 {.noSideEffect, 
    importcpp: "xform_inv", header: "matrix3.h".}
proc `*=`*(this: var Matrix3; p_matrix: Matrix3) {.importcpp: "(# *= #)", 
    header: "matrix3.h".}
proc `*`*(this: Matrix3; p_matrix: Matrix3): Matrix3 {.noSideEffect, 
    importcpp: "(# * #)", header: "matrix3.h".}
proc get_orthogonal_index*(this: Matrix3): cint {.noSideEffect, 
    importcpp: "get_orthogonal_index", header: "matrix3.h".}
proc set_orthogonal_index*(this: var Matrix3; p_index: cint) {.
    importcpp: "set_orthogonal_index", header: "matrix3.h".}
proc get_axis_and_angle*(this: Matrix3; r_axis: var Vector3; r_angle: var real_t) {.
    noSideEffect, importcpp: "get_axis_and_angle", header: "matrix3.h".}
proc set*(this: var Matrix3; xx: real_t; xy: real_t; xz: real_t; yx: real_t; 
          yy: real_t; yz: real_t; zx: real_t; zy: real_t; zz: real_t) {.
    importcpp: "set", header: "matrix3.h".}
proc get_column*(this: Matrix3; i: cint): Vector3 {.noSideEffect, 
    importcpp: "get_column", header: "matrix3.h".}
proc get_row*(this: Matrix3; i: cint): Vector3 {.noSideEffect, 
    importcpp: "get_row", header: "matrix3.h".}
proc set_row*(this: var Matrix3; i: cint; p_row: Vector3) {.
    importcpp: "set_row", header: "matrix3.h".}
proc set_zero*(this: var Matrix3) {.importcpp: "set_zero", header: "matrix3.h".}
proc transpose_xform*(this: Matrix3; m: Matrix3): Matrix3 {.noSideEffect, 
    importcpp: "transpose_xform", header: "matrix3.h".}
proc constructMatrix3*(xx: real_t; xy: real_t; xz: real_t; yx: real_t; 
                       yy: real_t; yz: real_t; zx: real_t; zy: real_t; 
                       zz: real_t): Matrix3 {.constructor, 
    importcpp: "Matrix3(@)", header: "matrix3.h".}
proc orthonormalize*(this: var Matrix3) {.importcpp: "orthonormalize", 
    header: "matrix3.h".}
proc orthonormalized*(this: Matrix3): Matrix3 {.noSideEffect, 
    importcpp: "orthonormalized", header: "matrix3.h".}

