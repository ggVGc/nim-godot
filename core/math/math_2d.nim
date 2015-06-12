type
  real_t* = float
type 
  Margin* = enum 
    MARGIN_LEFT, MARGIN_TOP, MARGIN_RIGHT, MARGIN_BOTTOM


type 
  Orientation* = enum 
    HORIZONTAL, VERTICAL


type 
  HAlign* = enum 
    HALIGN_LEFT, HALIGN_CENTER, HALIGN_RIGHT


type 
  VAlign* = enum 
    VALIGN_TOP, VALIGN_CENTER, VALIGN_BOTTOM


type 
  Vector2* {.importcpp: "Vector2", header: "math_2d.h".} = object 
    x* {.importc: "x".}: cfloat
    width* {.importc: "width".}: cfloat
    y* {.importc: "y".}: cfloat
    height* {.importc: "height".}: cfloat
  

type 
  Point2i* {.importcpp: "Point2i", header: "math_2d.h".} = object 
type 
  Size2* = Vector2
  Point2* = Vector2
  Size2i* = Point2i
  Rect2i* {.importcpp: "Rect2i", header: "math_2d.h".} = object 
    pos* {.importc: "pos".}: Point2i
    size* {.importc: "size".}: Size2i

proc `[]`*(this: var Vector2; p_idx: cint): var cfloat {.importcpp: "#[@]", 
    header: "math_2d.h".}
proc `[]`*(this: Vector2; p_idx: cint): cfloat {.noSideEffect, 
    importcpp: "#[@]", header: "math_2d.h".}
proc normalize*(this: var Vector2) {.importcpp: "normalize", header: "math_2d.h".}
proc normalized*(this: Vector2): Vector2 {.noSideEffect, 
    importcpp: "normalized", header: "math_2d.h".}
proc length*(this: Vector2): cfloat {.noSideEffect, importcpp: "length", 
                                      header: "math_2d.h".}
proc length_squared*(this: Vector2): cfloat {.noSideEffect, 
    importcpp: "length_squared", header: "math_2d.h".}
proc distance_to*(this: Vector2; p_vector2: Vector2): cfloat {.noSideEffect, 
    importcpp: "distance_to", header: "math_2d.h".}
proc distance_squared_to*(this: Vector2; p_vector2: Vector2): cfloat {.
    noSideEffect, importcpp: "distance_squared_to", header: "math_2d.h".}
proc angle_to*(this: Vector2; p_vector2: Vector2): cfloat {.noSideEffect, 
    importcpp: "angle_to", header: "math_2d.h".}
proc angle_to_point*(this: Vector2; p_vector2: Vector2): cfloat {.noSideEffect, 
    importcpp: "angle_to_point", header: "math_2d.h".}
proc dot*(this: Vector2; p_other: Vector2): cfloat {.noSideEffect, 
    importcpp: "dot", header: "math_2d.h".}
proc cross*(this: Vector2; p_other: Vector2): cfloat {.noSideEffect, 
    importcpp: "cross", header: "math_2d.h".}
proc cross*(this: Vector2; p_other: real_t): Vector2 {.noSideEffect, 
    importcpp: "cross", header: "math_2d.h".}
proc project*(this: Vector2; p_vec: Vector2): Vector2 {.noSideEffect, 
    importcpp: "project", header: "math_2d.h".}
proc plane_project*(this: Vector2; p_d: real_t; p_vec: Vector2): Vector2 {.
    noSideEffect, importcpp: "plane_project", header: "math_2d.h".}
proc clamped*(this: Vector2; p_len: real_t): Vector2 {.noSideEffect, 
    importcpp: "clamped", header: "math_2d.h".}
proc linear_interpolate*(p_a: Vector2; p_b: Vector2; p_t: cfloat): Vector2 {.
    importcpp: "Vector2::linear_interpolate(@)", header: "math_2d.h".}
proc linear_interpolate*(this: Vector2; p_b: Vector2; p_t: cfloat): Vector2 {.
    noSideEffect, importcpp: "linear_interpolate", header: "math_2d.h".}
proc cubic_interpolate*(this: Vector2; p_b: Vector2; p_pre_a: Vector2; 
                        p_post_b: Vector2; p_t: cfloat): Vector2 {.noSideEffect, 
    importcpp: "cubic_interpolate", header: "math_2d.h".}
proc cubic_interpolate_soft*(this: Vector2; p_b: Vector2; p_pre_a: Vector2; 
                             p_post_b: Vector2; p_t: cfloat): Vector2 {.
    noSideEffect, importcpp: "cubic_interpolate_soft", header: "math_2d.h".}
proc slide*(this: Vector2; p_vec: Vector2): Vector2 {.noSideEffect, 
    importcpp: "slide", header: "math_2d.h".}
proc reflect*(this: Vector2; p_vec: Vector2): Vector2 {.noSideEffect, 
    importcpp: "reflect", header: "math_2d.h".}
proc `+`*(this: Vector2; p_v: Vector2): Vector2 {.noSideEffect, 
    importcpp: "(# + #)", header: "math_2d.h".}
proc `+=`*(this: var Vector2; p_v: Vector2) {.importcpp: "(# += #)", 
    header: "math_2d.h".}
proc `-`*(this: Vector2; p_v: Vector2): Vector2 {.noSideEffect, 
    importcpp: "(# - #)", header: "math_2d.h".}
proc `-=`*(this: var Vector2; p_v: Vector2) {.importcpp: "(# -= #)", 
    header: "math_2d.h".}
proc `*`*(this: Vector2; p_v1: Vector2): Vector2 {.noSideEffect, 
    importcpp: "(# * #)", header: "math_2d.h".}
proc `*`*(this: Vector2; rvalue: cfloat): Vector2 {.noSideEffect, 
    importcpp: "(# * #)", header: "math_2d.h".}
proc `*=`*(this: var Vector2; rvalue: cfloat) {.importcpp: "(# *= #)", 
    header: "math_2d.h".}
proc `*=`*(this: var Vector2; rvalue: Vector2) {.importcpp: "(# *= #)", 
    header: "math_2d.h".}
proc `/`*(this: Vector2; p_v1: Vector2): Vector2 {.noSideEffect, 
    importcpp: "(# / #)", header: "math_2d.h".}
proc `/`*(this: Vector2; rvalue: cfloat): Vector2 {.noSideEffect, 
    importcpp: "(# / #)", header: "math_2d.h".}
proc `/=`*(this: var Vector2; rvalue: cfloat) {.importcpp: "(# /= #)", 
    header: "math_2d.h".}
proc `-`*(this: Vector2): Vector2 {.noSideEffect, importcpp: "(- #)", 
                                    header: "math_2d.h".}
proc `==`*(this: Vector2; p_vec2: Vector2): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "math_2d.h".}
proc `<`*(this: Vector2; p_vec2: Vector2): bool {.noSideEffect, 
    importcpp: "(# < #)", header: "math_2d.h".}
proc `<=`*(this: Vector2; p_vec2: Vector2): bool {.noSideEffect, 
    importcpp: "(# <= #)", header: "math_2d.h".}
proc atan2*(this: Vector2): real_t {.noSideEffect, importcpp: "atan2", 
                                     header: "math_2d.h".}
proc set_rotation*(this: var Vector2; p_radians: cfloat) {.
    importcpp: "set_rotation", header: "math_2d.h".}
proc abs*(this: Vector2): Vector2 {.noSideEffect, importcpp: "abs", 
                                    header: "math_2d.h".}
proc rotated*(this: Vector2; p_by: cfloat): Vector2 {.noSideEffect, 
    importcpp: "rotated", header: "math_2d.h".}
proc tangent*(this: Vector2): Vector2 {.noSideEffect, importcpp: "tangent", 
                                        header: "math_2d.h".}
proc floor*(this: Vector2): Vector2 {.noSideEffect, importcpp: "floor", 
                                      header: "math_2d.h".}
proc snapped*(this: Vector2; p_by: Vector2): Vector2 {.noSideEffect, 
    importcpp: "snapped", header: "math_2d.h".}
proc get_aspect*(this: Vector2): cfloat {.noSideEffect, importcpp: "get_aspect", 
    header: "math_2d.h".}
proc constructVector2*(p_x: cfloat; p_y: cfloat): Vector2 {.constructor, 
    importcpp: "Vector2(@)", header: "math_2d.h".}
proc constructVector2*(): Vector2 {.constructor, importcpp: "Vector2(@)", 
                                    header: "math_2d.h".}
type 
  Matrix32* {.importcpp: "Matrix32", header: "math_2d.h".} = object 
    elements* {.importc: "elements".}: array[3, Vector2]
type 
  Rect2* {.importcpp: "Rect2", header: "math_2d.h".} = object 
    pos* {.importc: "pos".}: Point2
    size* {.importc: "size".}: Size2


proc get_pos*(this: Rect2): Vector2 {.noSideEffect, importcpp: "get_pos", 
                                      header: "math_2d.h".}
proc set_pos*(this: var Rect2; p_pos: Vector2) {.importcpp: "set_pos", 
    header: "math_2d.h".}
proc get_size*(this: Rect2): Vector2 {.noSideEffect, importcpp: "get_size", 
                                       header: "math_2d.h".}
proc set_size*(this: var Rect2; p_size: Vector2) {.importcpp: "set_size", 
    header: "math_2d.h".}
proc get_area*(this: Rect2): cfloat {.noSideEffect, importcpp: "get_area", 
                                      header: "math_2d.h".}
proc intersects*(this: Rect2; p_rect: Rect2): bool {.inline, noSideEffect, 
    importcpp: "intersects", header: "math_2d.h".}
proc intersects_transformed*(this: Rect2; p_xform: Matrix32; p_rect: Rect2): bool {.
    noSideEffect, importcpp: "intersects_transformed", header: "math_2d.h".}
proc intersects_segment*(this: Rect2; p_from: Point2; p_to: Point2; 
                         r_pos: ptr Point2 = nil; r_normal: ptr Point2 = nil): bool {.
    noSideEffect, importcpp: "intersects_segment", header: "math_2d.h".}
proc encloses*(this: Rect2; p_rect: Rect2): bool {.inline, noSideEffect, 
    importcpp: "encloses", header: "math_2d.h".}
proc has_no_area*(this: Rect2): bool {.inline, noSideEffect, 
                                       importcpp: "has_no_area", 
                                       header: "math_2d.h".}
proc clip*(this: Rect2; p_rect: Rect2): Rect2 {.inline, noSideEffect, 
    importcpp: "clip", header: "math_2d.h".}
proc merge*(this: Rect2; p_rect: Rect2): Rect2 {.inline, noSideEffect, 
    importcpp: "merge", header: "math_2d.h".}
proc has_point*(this: Rect2; p_point: Point2): bool {.inline, noSideEffect, 
    importcpp: "has_point", header: "math_2d.h".}
proc no_area*(this: Rect2): bool {.inline, noSideEffect, importcpp: "no_area", 
                                   header: "math_2d.h".}
proc `==`*(this: Rect2; p_rect: Rect2): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "math_2d.h".}
proc grow*(this: Rect2; p_by: real_t): Rect2 {.inline, noSideEffect, 
    importcpp: "grow", header: "math_2d.h".}
proc expand*(this: Rect2; p_vector: Vector2): Rect2 {.inline, noSideEffect, 
    importcpp: "expand", header: "math_2d.h".}
proc expand_to*(this: var Rect2; p_vector: Vector2) {.inline, 
    importcpp: "expand_to", header: "math_2d.h".}
proc constructRect2*(): Rect2 {.constructor, importcpp: "Rect2(@)", 
                                header: "math_2d.h".}
proc constructRect2*(p_x: cfloat; p_y: cfloat; p_width: cfloat; p_height: cfloat): Rect2 {.
    constructor, importcpp: "Rect2(@)", header: "math_2d.h".}
proc constructRect2*(p_pos: Point2; p_size: Size2): Rect2 {.constructor, 
    importcpp: "Rect2(@)", header: "math_2d.h".}
# INTEGER STUFF 

  

proc `[]`*(this: var Point2i; p_idx: cint): var cint {.importcpp: "#[@]", 
    header: "math_2d.h".}
proc `[]`*(this: Point2i; p_idx: cint): cint {.noSideEffect, importcpp: "#[@]", 
    header: "math_2d.h".}
proc `+`*(this: Point2i; p_v: Point2i): Point2i {.noSideEffect, 
    importcpp: "(# + #)", header: "math_2d.h".}
proc `+=`*(this: var Point2i; p_v: Point2i) {.importcpp: "(# += #)", 
    header: "math_2d.h".}
proc `-`*(this: Point2i; p_v: Point2i): Point2i {.noSideEffect, 
    importcpp: "(# - #)", header: "math_2d.h".}
proc `-=`*(this: var Point2i; p_v: Point2i) {.importcpp: "(# -= #)", 
    header: "math_2d.h".}
proc `*`*(this: Point2i; p_v1: Point2i): Point2i {.noSideEffect, 
    importcpp: "(# * #)", header: "math_2d.h".}
proc `*`*(this: Point2i; rvalue: cint): Point2i {.noSideEffect, 
    importcpp: "(# * #)", header: "math_2d.h".}
proc `*=`*(this: var Point2i; rvalue: cint) {.importcpp: "(# *= #)", 
    header: "math_2d.h".}
proc `/`*(this: Point2i; p_v1: Point2i): Point2i {.noSideEffect, 
    importcpp: "(# / #)", header: "math_2d.h".}
proc `/`*(this: Point2i; rvalue: cint): Point2i {.noSideEffect, 
    importcpp: "(# / #)", header: "math_2d.h".}
proc `/=`*(this: var Point2i; rvalue: cint) {.importcpp: "(# /= #)", 
    header: "math_2d.h".}
proc `-`*(this: Point2i): Point2i {.noSideEffect, importcpp: "(- #)", 
                                    header: "math_2d.h".}
proc `<`*(this: Point2i; p_vec2: Point2i): bool {.noSideEffect, 
    importcpp: "(# < #)", header: "math_2d.h".}
proc `==`*(this: Point2i; p_vec2: Point2i): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "math_2d.h".}
proc get_aspect*(this: Point2i): cfloat {.noSideEffect, importcpp: "get_aspect", 
    header: "math_2d.h".}
proc constructPoint2i*(p_vec2: Vector2): Point2i {.inline, constructor, 
    importcpp: "Point2i(@)", header: "math_2d.h".}
proc constructPoint2i*(p_x: cint; p_y: cint): Point2i {.inline, constructor, 
    importcpp: "Point2i(@)", header: "math_2d.h".}
proc constructPoint2i*(): Point2i {.inline, constructor, 
                                    importcpp: "Point2i(@)", header: "math_2d.h".}


proc get_pos*(this: Rect2i): Point2i {.noSideEffect, importcpp: "get_pos", 
                                       header: "math_2d.h".}
proc set_pos*(this: var Rect2i; p_pos: Point2i) {.importcpp: "set_pos", 
    header: "math_2d.h".}
proc get_size*(this: Rect2i): Point2i {.noSideEffect, importcpp: "get_size", 
                                        header: "math_2d.h".}
proc set_size*(this: var Rect2i; p_size: Point2i) {.importcpp: "set_size", 
    header: "math_2d.h".}
proc get_area*(this: Rect2i): cint {.noSideEffect, importcpp: "get_area", 
                                     header: "math_2d.h".}
proc intersects*(this: Rect2i; p_rect: Rect2i): bool {.inline, noSideEffect, 
    importcpp: "intersects", header: "math_2d.h".}
proc encloses*(this: Rect2i; p_rect: Rect2i): bool {.inline, noSideEffect, 
    importcpp: "encloses", header: "math_2d.h".}
proc has_no_area*(this: Rect2i): bool {.inline, noSideEffect, 
                                        importcpp: "has_no_area", 
                                        header: "math_2d.h".}
proc clip*(this: Rect2i; p_rect: Rect2i): Rect2i {.inline, noSideEffect, 
    importcpp: "clip", header: "math_2d.h".}
proc merge*(this: Rect2i; p_rect: Rect2i): Rect2i {.inline, noSideEffect, 
    importcpp: "merge", header: "math_2d.h".}
proc has_point*(this: Rect2i; p_point: Point2): bool {.noSideEffect, 
    importcpp: "has_point", header: "math_2d.h".}
proc no_area*(this: var Rect2i): bool {.importcpp: "no_area", 
                                        header: "math_2d.h".}
proc `==`*(this: Rect2i; p_rect: Rect2i): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "math_2d.h".}
proc grow*(this: Rect2i; p_by: cint): Rect2i {.noSideEffect, importcpp: "grow", 
    header: "math_2d.h".}
proc expand_to*(this: var Rect2i; p_vector: Point2i) {.inline, 
    importcpp: "expand_to", header: "math_2d.h".}
proc constructRect2i*(p_r2: Rect2): Rect2i {.constructor, 
    importcpp: "Rect2i(@)", header: "math_2d.h".}
proc constructRect2i*(): Rect2i {.constructor, importcpp: "Rect2i(@)", 
                                  header: "math_2d.h".}
proc constructRect2i*(p_x: cint; p_y: cint; p_width: cint; p_height: cint): Rect2i {.
    constructor, importcpp: "Rect2i(@)", header: "math_2d.h".}
proc constructRect2i*(p_pos: Point2; p_size: Size2): Rect2i {.constructor, 
    importcpp: "Rect2i(@)", header: "math_2d.h".}


proc tdotx*(this: Matrix32; v: Vector2): cfloat {.noSideEffect, 
    importcpp: "tdotx", header: "math_2d.h".}
proc tdoty*(this: Matrix32; v: Vector2): cfloat {.noSideEffect, 
    importcpp: "tdoty", header: "math_2d.h".}
proc `[]`*(this: Matrix32; p_idx: cint): Vector2 {.noSideEffect, 
    importcpp: "#[@]", header: "math_2d.h".}
proc `[]`*(this: var Matrix32; p_idx: cint): var Vector2 {.importcpp: "#[@]", 
    header: "math_2d.h".}
proc get_axis*(this: Matrix32; p_axis: cint): Vector2 {.noSideEffect, 
    importcpp: "get_axis", header: "math_2d.h".}
proc set_axis*(this: var Matrix32; p_axis: cint; p_vec: Vector2) {.
    importcpp: "set_axis", header: "math_2d.h".}
proc invert*(this: var Matrix32) {.importcpp: "invert", header: "math_2d.h".}
proc inverse*(this: Matrix32): Matrix32 {.noSideEffect, importcpp: "inverse", 
    header: "math_2d.h".}
proc affine_invert*(this: var Matrix32) {.importcpp: "affine_invert", 
    header: "math_2d.h".}
proc affine_inverse*(this: Matrix32): Matrix32 {.noSideEffect, 
    importcpp: "affine_inverse", header: "math_2d.h".}
proc set_rotation*(this: var Matrix32; p_phi: real_t) {.
    importcpp: "set_rotation", header: "math_2d.h".}
proc get_rotation*(this: Matrix32): real_t {.noSideEffect, 
    importcpp: "get_rotation", header: "math_2d.h".}
proc set_rotation_and_scale*(this: var Matrix32; p_phi: real_t; p_scale: Size2) {.
    importcpp: "set_rotation_and_scale", header: "math_2d.h".}
proc rotate*(this: var Matrix32; p_phi: real_t) {.importcpp: "rotate", 
    header: "math_2d.h".}
proc scale*(this: var Matrix32; p_scale: Vector2) {.importcpp: "scale", 
    header: "math_2d.h".}
proc scale_basis*(this: var Matrix32; p_scale: Vector2) {.
    importcpp: "scale_basis", header: "math_2d.h".}
proc translate*(this: var Matrix32; p_tx: real_t; p_ty: real_t) {.
    importcpp: "translate", header: "math_2d.h".}
proc translate*(this: var Matrix32; p_translation: Vector2) {.
    importcpp: "translate", header: "math_2d.h".}
proc basis_determinant*(this: Matrix32): cfloat {.noSideEffect, 
    importcpp: "basis_determinant", header: "math_2d.h".}
proc get_scale*(this: Matrix32): Vector2 {.noSideEffect, importcpp: "get_scale", 
    header: "math_2d.h".}
proc get_origin*(this: Matrix32): Vector2 {.noSideEffect, 
    importcpp: "get_origin", header: "math_2d.h".}
proc set_origin*(this: var Matrix32; p_origin: Vector2) {.
    importcpp: "set_origin", header: "math_2d.h".}
proc scaled*(this: Matrix32; p_scale: Vector2): Matrix32 {.noSideEffect, 
    importcpp: "scaled", header: "math_2d.h".}
proc basis_scaled*(this: Matrix32; p_scale: Vector2): Matrix32 {.noSideEffect, 
    importcpp: "basis_scaled", header: "math_2d.h".}
proc translated*(this: Matrix32; p_offset: Vector2): Matrix32 {.noSideEffect, 
    importcpp: "translated", header: "math_2d.h".}
proc rotated*(this: Matrix32; p_phi: cfloat): Matrix32 {.noSideEffect, 
    importcpp: "rotated", header: "math_2d.h".}
proc untranslated*(this: Matrix32): Matrix32 {.noSideEffect, 
    importcpp: "untranslated", header: "math_2d.h".}
proc orthonormalize*(this: var Matrix32) {.importcpp: "orthonormalize", 
    header: "math_2d.h".}
proc orthonormalized*(this: Matrix32): Matrix32 {.noSideEffect, 
    importcpp: "orthonormalized", header: "math_2d.h".}
proc `==`*(this: Matrix32; p_transform: Matrix32): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "math_2d.h".}
proc `*=`*(this: var Matrix32; p_transform: Matrix32) {.importcpp: "(# *= #)", 
    header: "math_2d.h".}
proc `*`*(this: Matrix32; p_transform: Matrix32): Matrix32 {.noSideEffect, 
    importcpp: "(# * #)", header: "math_2d.h".}
proc interpolate_with*(this: Matrix32; p_transform: Matrix32; p_c: cfloat): Matrix32 {.
    noSideEffect, importcpp: "interpolate_with", header: "math_2d.h".}
proc basis_xform*(this: Matrix32; p_vec: Vector2): Vector2 {.noSideEffect, 
    importcpp: "basis_xform", header: "math_2d.h".}
proc basis_xform_inv*(this: Matrix32; p_vec: Vector2): Vector2 {.noSideEffect, 
    importcpp: "basis_xform_inv", header: "math_2d.h".}
proc xform*(this: Matrix32; p_vec: Vector2): Vector2 {.noSideEffect, 
    importcpp: "xform", header: "math_2d.h".}
proc xform_inv*(this: Matrix32; p_vec: Vector2): Vector2 {.noSideEffect, 
    importcpp: "xform_inv", header: "math_2d.h".}
proc xform*(this: Matrix32; p_vec: Rect2): Rect2 {.noSideEffect, 
    importcpp: "xform", header: "math_2d.h".}
proc xform_inv*(this: Matrix32; p_vec: Rect2): Rect2 {.noSideEffect, 
    importcpp: "xform_inv", header: "math_2d.h".}
proc constructMatrix32*(p_rot: real_t; p_pos: Vector2): Matrix32 {.constructor, 
    importcpp: "Matrix32(@)", header: "math_2d.h".}
proc constructMatrix32*(): Matrix32 {.constructor, importcpp: "Matrix32(@)", 
                                      header: "math_2d.h".}
#proc Matrix32::basis_xform*(v: Vector2): Vector2 {.noSideEffect.}
#proc Matrix32::basis_xform_inv*(v: Vector2): Vector2 {.noSideEffect.}
#proc Matrix32::xform*(v: Vector2): Vector2 {.noSideEffect.}
#proc Matrix32::xform_inv*(p_vec: Vector2): Vector2 {.noSideEffect.}
#proc Matrix32::xform*(p_rect: Rect2): Rect2 {.noSideEffect.}
#proc Matrix32::set_rotation_and_scale*(p_rot: real_t; p_scale: Size2)
#proc Matrix32::xform_inv*(p_rect: Rect2): Rect2 {.noSideEffect.}

