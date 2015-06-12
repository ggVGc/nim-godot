import 
  canvas_item, math/math_2d

type 
  Node2D* {.importcpp: "Node2D", header: "node_2d.h".} = object of CanvasItem
    pos* {.importc: "pos".}: Point2
    angle* {.importc: "angle".}: cfloat
    #_scale* {.importc: "_scale".}: Size2
    z* {.importc: "z".}: cint
    z_relative* {.importc: "z_relative".}: bool
    #_mat* {.importc: "_mat".}: Matrix32
    #_xform_dirty* {.importc: "_xform_dirty".}: bool


#proc edit_get_state*(this: Node2D): Variant {.noSideEffect, 
    #importcpp: "edit_get_state", header: "node_2d.h".}
#proc edit_set_state*(this: var Node2D; p_state: Variant) {.
    #importcpp: "edit_set_state", header: "node_2d.h".}
proc edit_set_rect*(this: var Node2D; p_edit_rect: Rect2) {.
    importcpp: "edit_set_rect", header: "node_2d.h".}
proc edit_rotate*(this: var Node2D; p_rot: cfloat) {.importcpp: "edit_rotate", 
    header: "node_2d.h".}
proc edit_set_pivot*(this: var Node2D; p_pivot: Point2) {.
    importcpp: "edit_set_pivot", header: "node_2d.h".}
proc edit_get_pivot*(this: Node2D): Point2 {.noSideEffect, 
    importcpp: "edit_get_pivot", header: "node_2d.h".}
proc edit_has_pivot*(this: Node2D): bool {.noSideEffect, 
    importcpp: "edit_has_pivot", header: "node_2d.h".}
proc set_pos*(this: var Node2D; p_pos: Point2) {.importcpp: "set_pos", 
    header: "node_2d.h".}
proc set_rot*(this: var Node2D; p_angle: cfloat) {.importcpp: "set_rot", 
    header: "node_2d.h".}
proc set_scale*(this: var Node2D; p_scale: Size2) {.importcpp: "set_scale", 
    header: "node_2d.h".}
proc rotate*(this: var Node2D; p_radians: cfloat) {.importcpp: "rotate", 
    header: "node_2d.h".}
proc move_x*(this: var Node2D; p_delta: cfloat; p_scaled: bool = false) {.
    importcpp: "move_x", header: "node_2d.h".}
proc move_y*(this: var Node2D; p_delta: cfloat; p_scaled: bool = false) {.
    importcpp: "move_y", header: "node_2d.h".}
proc translate*(this: var Node2D; p_amount: Vector2) {.importcpp: "translate", 
    header: "node_2d.h".}
proc global_translate*(this: var Node2D; p_amount: Vector2) {.
    importcpp: "global_translate", header: "node_2d.h".}
proc scale*(this: var Node2D; p_amount: Vector2) {.importcpp: "scale", 
    header: "node_2d.h".}
proc get_pos*(this: Node2D): Point2 {.noSideEffect, importcpp: "get_pos", 
                                      header: "node_2d.h".}
proc get_rot*(this: Node2D): cfloat {.noSideEffect, importcpp: "get_rot", 
                                      header: "node_2d.h".}
proc get_scale*(this: Node2D): Size2 {.noSideEffect, importcpp: "get_scale", 
                                       header: "node_2d.h".}
proc get_global_pos*(this: Node2D): Point2 {.noSideEffect, 
    importcpp: "get_global_pos", header: "node_2d.h".}
proc get_item_rect*(this: Node2D): Rect2 {.noSideEffect, 
    importcpp: "get_item_rect", header: "node_2d.h".}
proc set_transform*(this: var Node2D; p_transform: Matrix32) {.
    importcpp: "set_transform", header: "node_2d.h".}
proc set_global_transform*(this: var Node2D; p_transform: Matrix32) {.
    importcpp: "set_global_transform", header: "node_2d.h".}
proc set_global_pos*(this: var Node2D; p_pos: Point2) {.
    importcpp: "set_global_pos", header: "node_2d.h".}
proc set_z*(this: var Node2D; p_z: cint) {.importcpp: "set_z", 
    header: "node_2d.h".}
proc get_z*(this: Node2D): cint {.noSideEffect, importcpp: "get_z", 
                                  header: "node_2d.h".}
proc look_at*(this: var Node2D; p_pos: Vector2) {.importcpp: "look_at", 
    header: "node_2d.h".}
proc get_angle_to*(this: Node2D; p_pos: Vector2): cfloat {.noSideEffect, 
    importcpp: "get_angle_to", header: "node_2d.h".}
proc set_z_as_relative*(this: var Node2D; p_enabled: bool) {.
    importcpp: "set_z_as_relative", header: "node_2d.h".}
proc is_z_relative*(this: Node2D): bool {.noSideEffect, 
    importcpp: "is_z_relative", header: "node_2d.h".}
#proc get_relative_transform*(this: Node2D; p_parent: ptr Node): Matrix32 {.
    #noSideEffect, importcpp: "get_relative_transform", header: "node_2d.h".}
proc get_transform*(this: Node2D): Matrix32 {.noSideEffect, 
    importcpp: "get_transform", header: "node_2d.h".}
proc constructNode2D*(): Node2D {.constructor, importcpp: "Node2D(@)", 
                                  header: "node_2d.h".}

