#import 
  #scene/main/node, scene/resources/texture, scene/main/scene_main_loop, 
  #scene/resources/shader
import
  reference,ustring,math/math_2d,color

discard "forward decl of CanvasLayer"
discard "forward decl of Viewport"
discard "forward decl of Font"
discard "forward decl of StyleBox"
type 
  ShadingMode* = enum 
    SHADING_NORMAL, SHADING_UNSHADED, SHADING_ONLY_LIGHT
type 
  CanvasItemMaterial* {.importcpp: "CanvasItemMaterial", header: "canvas_item.h".} = object
    #material* {.importc: "material".}: RID
    #shader* {.importc: "shader".}: Ref[Shader]
    shading_mode* {.importc: "shading_mode".}: ShadingMode

type 
  BlendMode* = enum 
    BLEND_MODE_MIX,         #default
    BLEND_MODE_ADD, BLEND_MODE_SUB, BLEND_MODE_MUL, BLEND_MODE_PREMULT_ALPHA

#proc set_shader*(this: var CanvasItemMaterial; p_shader: Ref[Shader]) {.
    #importcpp: "set_shader", header: "canvas_item.h".}
#proc get_shader*(this: CanvasItemMaterial): Ref[Shader] {.noSideEffect, 
    #importcpp: "get_shader", header: "canvas_item.h".}
#proc set_shader_param*(this: var CanvasItemMaterial; p_param: StringName; 
                       #p_value: Variant) {.importcpp: "set_shader_param", 
    #header: "canvas_item.h".}
#proc get_shader_param*(this: CanvasItemMaterial; p_param: StringName): Variant {.
    #noSideEffect, importcpp: "get_shader_param", header: "canvas_item.h".}
proc set_shading_mode*(this: var CanvasItemMaterial; p_mode: ShadingMode) {.
    importcpp: "set_shading_mode", header: "canvas_item.h".}
proc get_shading_mode*(this: CanvasItemMaterial): ShadingMode {.noSideEffect, 
    importcpp: "get_shading_mode", header: "canvas_item.h".}
#proc get_rid*(this: CanvasItemMaterial): RID {.noSideEffect, 
    #importcpp: "get_rid", header: "canvas_item.h".}
proc constructCanvasItemMaterial*(): CanvasItemMaterial {.constructor, 
    importcpp: "CanvasItemMaterial(@)", header: "canvas_item.h".}
proc destroyCanvasItemMaterial*(this: var CanvasItemMaterial) {.
    importcpp: "#.~CanvasItemMaterial()", header: "canvas_item.h".}
#VARIANT_ENUM_CAST(ShadingMode)
type 
  CanvasItem* {.importcpp: "CanvasItem", header: "canvas_item.h".} = object of RootObj
    #xform_change* {.importc: "xform_change".}: SelfList[Node]
    #canvas_item* {.importc: "canvas_item".}: RID
    group* {.importc: "group".}: String
    #canvas_layer* {.importc: "canvas_layer".}: ptr CanvasLayer
    opacity* {.importc: "opacity".}: cfloat
    self_opacity* {.importc: "self_opacity".}: cfloat
    #children_items* {.importc: "children_items".}: List[ptr CanvasItem]
    #C* {.importc: "C".}: ptr Element
    blend_mode* {.importc: "blend_mode".}: BlendMode
    light_mask* {.importc: "light_mask".}: cint
    first_draw* {.importc: "first_draw".}: bool
    hidden* {.importc: "hidden".}: bool
    pending_update* {.importc: "pending_update".}: bool
    toplevel* {.importc: "toplevel".}: bool
    pending_children_sort* {.importc: "pending_children_sort".}: bool
    drawing* {.importc: "drawing".}: bool
    block_transform_notify* {.importc: "block_transform_notify".}: bool
    behind* {.importc: "behind".}: bool
    use_parent_material* {.importc: "use_parent_material".}: bool
    material* {.importc: "material".}: Ref[CanvasItemMaterial]
    global_transform* {.importc: "global_transform".}: Matrix32
    global_invalid* {.importc: "global_invalid".}: bool


const 
  NOTIFICATION_TRANSFORM_CHANGED* = 29
  NOTIFICATION_DRAW* = 30
  NOTIFICATION_VISIBILITY_CHANGED* = 31
  NOTIFICATION_ENTER_CANVAS* = 32
  NOTIFICATION_EXIT_CANVAS* = 33
  NOTIFICATION_LOCAL_TRANSFORM_CHANGED* = 35
  NOTIFICATION_WORLD_2D_CHANGED* = 36

#proc edit_get_state*(this: CanvasItem): Variant {.noSideEffect, 
    #importcpp: "edit_get_state", header: "canvas_item.h".}
#proc edit_set_state*(this: var CanvasItem; p_state: Variant) {.
    #importcpp: "edit_set_state", header: "canvas_item.h".}
proc edit_set_rect*(this: var CanvasItem; p_edit_rect: Rect2) {.
    importcpp: "edit_set_rect", header: "canvas_item.h".}
proc edit_rotate*(this: var CanvasItem; p_rot: cfloat) {.
    importcpp: "edit_rotate", header: "canvas_item.h".}
proc edit_get_minimum_size*(this: CanvasItem): Size2 {.noSideEffect, 
    importcpp: "edit_get_minimum_size", header: "canvas_item.h".}
proc is_visible*(this: CanvasItem): bool {.noSideEffect, 
    importcpp: "is_visible", header: "canvas_item.h".}
proc is_hidden*(this: CanvasItem): bool {.noSideEffect, importcpp: "is_hidden", 
    header: "canvas_item.h".}
proc show*(this: var CanvasItem) {.importcpp: "show", header: "canvas_item.h".}
proc hide*(this: var CanvasItem) {.importcpp: "hide", header: "canvas_item.h".}
proc update*(this: var CanvasItem) {.importcpp: "update", 
                                     header: "canvas_item.h".}
proc set_blend_mode*(this: var CanvasItem; p_blend_mode: BlendMode) {.
    importcpp: "set_blend_mode", header: "canvas_item.h".}
proc get_blend_mode*(this: CanvasItem): BlendMode {.noSideEffect, 
    importcpp: "get_blend_mode", header: "canvas_item.h".}
proc set_light_mask*(this: var CanvasItem; p_light_mask: cint) {.
    importcpp: "set_light_mask", header: "canvas_item.h".}
proc get_light_mask*(this: CanvasItem): cint {.noSideEffect, 
    importcpp: "get_light_mask", header: "canvas_item.h".}
proc set_opacity*(this: var CanvasItem; p_opacity: cfloat) {.
    importcpp: "set_opacity", header: "canvas_item.h".}
proc get_opacity*(this: CanvasItem): cfloat {.noSideEffect, 
    importcpp: "get_opacity", header: "canvas_item.h".}
proc set_self_opacity*(this: var CanvasItem; p_self_opacity: cfloat) {.
    importcpp: "set_self_opacity", header: "canvas_item.h".}
proc get_self_opacity*(this: CanvasItem): cfloat {.noSideEffect, 
    importcpp: "get_self_opacity", header: "canvas_item.h".}
proc draw_line*(this: var CanvasItem; p_from: Point2; p_to: Point2; 
                p_color: Color; p_width: cfloat = 1.0) {.importcpp: "draw_line", 
    header: "canvas_item.h".}
proc draw_rect*(this: var CanvasItem; p_rect: Rect2; p_color: Color) {.
    importcpp: "draw_rect", header: "canvas_item.h".}
proc draw_circle*(this: var CanvasItem; p_pos: Point2; p_radius: cfloat; 
                  p_color: Color) {.importcpp: "draw_circle", 
                                    header: "canvas_item.h".}
#proc draw_texture*(this: var CanvasItem; p_texture: Ref[Texture]; p_pos: Point2) {.
    #importcpp: "draw_texture", header: "canvas_item.h".}
#proc draw_texture_rect*(this: var CanvasItem; p_texture: Ref[Texture]; 
                        #p_rect: Rect2; p_tile: bool = false; 
                        #p_modulate: Color = Color(1, 1, 1); 
                        #p_transpose: bool = false) {.
    #importcpp: "draw_texture_rect", header: "canvas_item.h".}
#proc draw_texture_rect_region*(this: var CanvasItem; p_texture: Ref[Texture]; 
                               #p_rect: Rect2; p_src_rect: Rect2; 
                               #p_modulate: Color = Color(1, 1, 1); 
                               #p_transpose: bool = false) {.
    #importcpp: "draw_texture_rect_region", header: "canvas_item.h".}
#proc draw_style_box*(this: var CanvasItem; p_style_box: Ref[StyleBox]; 
                     #p_rect: Rect2) {.importcpp: "draw_style_box", 
                                      #header: "canvas_item.h".}
#proc draw_primitive*(this: var CanvasItem; p_points: Vector[Point2]; 
                     #p_colors: Vector[Color]; p_uvs: Vector[Point2]; 
                     #p_texture: Ref[Texture] = Ref[Texture](); 
                     #p_width: cfloat = 1) {.importcpp: "draw_primitive", 
    #header: "canvas_item.h".}
#proc draw_polygon*(this: var CanvasItem; p_points: Vector[Point2]; 
                   #p_colors: Vector[Color]; 
                   #p_uvs: Vector[Point2] = Vector[Point2](); 
                   #p_texture: Ref[Texture] = Ref[Texture]()) {.
    #importcpp: "draw_polygon", header: "canvas_item.h".}
#proc draw_colored_polygon*(this: var CanvasItem; p_points: Vector[Point2]; 
                           #p_color: Color; 
                           #p_uvs: Vector[Point2] = Vector[Point2](); 
                           #p_texture: Ref[Texture] = Ref[Texture]()) {.
    #importcpp: "draw_colored_polygon", header: "canvas_item.h".}
#proc draw_string*(this: var CanvasItem; p_font: Ref[Font]; p_pos: Point2; 
                  #p_text: String; p_modulate: Color = Color(1, 1, 1); 
                  #p_clip_w: cint = - 1) {.importcpp: "draw_string", 
    #header: "canvas_item.h".}
#proc draw_char*(this: var CanvasItem; p_font: Ref[Font]; p_pos: Point2; 
                #p_char: String; p_next: String = ""; 
                #p_modulate: Color = Color(1, 1, 1)): cfloat {.
    #importcpp: "draw_char", header: "canvas_item.h".}
proc draw_set_transform*(this: var CanvasItem; p_offset: Point2; p_rot: cfloat; 
                         p_scale: Size2) {.importcpp: "draw_set_transform", 
    header: "canvas_item.h".}
proc set_as_toplevel*(this: var CanvasItem; p_toplevel: bool) {.
    importcpp: "set_as_toplevel", header: "canvas_item.h".}
proc is_set_as_toplevel*(this: CanvasItem): bool {.noSideEffect, 
    importcpp: "is_set_as_toplevel", header: "canvas_item.h".}
proc set_draw_behind_parent*(this: var CanvasItem; p_enable: bool) {.
    importcpp: "set_draw_behind_parent", header: "canvas_item.h".}
proc is_draw_behind_parent_enabled*(this: CanvasItem): bool {.noSideEffect, 
    importcpp: "is_draw_behind_parent_enabled", header: "canvas_item.h".}
proc get_parent_item*(this: CanvasItem): ptr CanvasItem {.noSideEffect, 
    importcpp: "get_parent_item", header: "canvas_item.h".}
proc get_item_rect*(this: CanvasItem): Rect2 {.noSideEffect, 
    importcpp: "get_item_rect", header: "canvas_item.h".}
proc get_transform*(this: CanvasItem): Matrix32 {.noSideEffect, 
    importcpp: "get_transform", header: "canvas_item.h".}
proc get_global_transform*(this: CanvasItem): Matrix32 {.noSideEffect, 
    importcpp: "get_global_transform", header: "canvas_item.h".}
proc get_global_transform_with_canvas*(this: CanvasItem): Matrix32 {.
    noSideEffect, importcpp: "get_global_transform_with_canvas", 
    header: "canvas_item.h".}
proc get_toplevel*(this: CanvasItem): ptr CanvasItem {.noSideEffect, 
    importcpp: "get_toplevel", header: "canvas_item.h".}
#proc get_canvas_item*(this: CanvasItem): RID {.noSideEffect, 
    #importcpp: "get_canvas_item", header: "canvas_item.h".}
proc set_block_transform_notify*(this: var CanvasItem; p_enable: bool) {.
    importcpp: "set_block_transform_notify", header: "canvas_item.h".}
proc is_block_transform_notify_enabled*(this: CanvasItem): bool {.noSideEffect, 
    importcpp: "is_block_transform_notify_enabled", header: "canvas_item.h".}
proc get_canvas_transform*(this: CanvasItem): Matrix32 {.noSideEffect, 
    importcpp: "get_canvas_transform", header: "canvas_item.h".}
proc get_viewport_transform*(this: CanvasItem): Matrix32 {.noSideEffect, 
    importcpp: "get_viewport_transform", header: "canvas_item.h".}
proc get_viewport_rect*(this: CanvasItem): Rect2 {.noSideEffect, 
    importcpp: "get_viewport_rect", header: "canvas_item.h".}
#proc get_viewport_rid*(this: CanvasItem): RID {.noSideEffect, 
    #importcpp: "get_viewport_rid", header: "canvas_item.h".}
#proc get_canvas*(this: CanvasItem): RID {.noSideEffect, importcpp: "get_canvas", 
    #header: "canvas_item.h".}
#proc get_world_2d*(this: CanvasItem): Ref[World2D] {.noSideEffect, 
    #importcpp: "get_world_2d", header: "canvas_item.h".}
proc set_material*(this: var CanvasItem; p_material: Ref[CanvasItemMaterial]) {.
    importcpp: "set_material", header: "canvas_item.h".}
proc get_material*(this: CanvasItem): Ref[CanvasItemMaterial] {.noSideEffect, 
    importcpp: "get_material", header: "canvas_item.h".}
proc set_use_parent_material*(this: var CanvasItem; p_use_parent_material: bool) {.
    importcpp: "set_use_parent_material", header: "canvas_item.h".}
proc get_use_parent_material*(this: CanvasItem): bool {.noSideEffect, 
    importcpp: "get_use_parent_material", header: "canvas_item.h".}
#proc make_input_local*(this: CanvasItem; pevent: InputEvent): InputEvent {.
    #noSideEffect, importcpp: "make_input_local", header: "canvas_item.h".}
proc get_global_mouse_pos*(this: CanvasItem): Vector2 {.noSideEffect, 
    importcpp: "get_global_mouse_pos", header: "canvas_item.h".}
proc get_local_mouse_pos*(this: CanvasItem): Vector2 {.noSideEffect, 
    importcpp: "get_local_mouse_pos", header: "canvas_item.h".}
proc constructCanvasItem*(): CanvasItem {.constructor, 
    importcpp: "CanvasItem(@)", header: "canvas_item.h".}
proc destroyCanvasItem*(this: var CanvasItem) {.importcpp: "#.~CanvasItem()", 
    header: "canvas_item.h".}
#VARIANT_ENUM_CAST(BlendMode)

