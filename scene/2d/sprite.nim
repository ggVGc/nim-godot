import 
  node_2d,reference,math/math_2d,color

type 
  Sprite* {.importcpp: "Sprite", header: "sprite.h".} = object of Node2D #OBJ_TYPE( Sprite, Node2D );
    #texture* {.importc: "texture".}: Ref[Texture]
    centered* {.importc: "centered".}: bool
    offset* {.importc: "offset".}: Point2
    hflip* {.importc: "hflip".}: bool
    vflip* {.importc: "vflip".}: bool
    region* {.importc: "region".}: bool
    region_rect* {.importc: "region_rect".}: Rect2
    frame* {.importc: "frame".}: cint
    vframes* {.importc: "vframes".}: cint
    hframes* {.importc: "hframes".}: cint
    modulate* {.importc: "modulate".}: Color


proc edit_set_pivot*(this: var Sprite; p_pivot: Point2) {.
    importcpp: "edit_set_pivot", header: "sprite.h".}
proc edit_get_pivot*(this: Sprite): Point2 {.noSideEffect, 
    importcpp: "edit_get_pivot", header: "sprite.h".}
proc edit_has_pivot*(this: Sprite): bool {.noSideEffect, 
    importcpp: "edit_has_pivot", header: "sprite.h".}
#proc set_texture*(this: var Sprite; p_texture: Ref[Texture]) {.
    #importcpp: "set_texture", header: "sprite.h".}
#proc get_texture*(this: Sprite): Ref[Texture] {.noSideEffect, 
    #importcpp: "get_texture", header: "sprite.h".}
proc set_centered*(this: var Sprite; p_center: bool) {.
    importcpp: "set_centered", header: "sprite.h".}
proc is_centered*(this: Sprite): bool {.noSideEffect, importcpp: "is_centered", 
                                        header: "sprite.h".}
proc set_offset*(this: var Sprite; p_offset: Point2) {.importcpp: "set_offset", 
    header: "sprite.h".}
proc get_offset*(this: Sprite): Point2 {.noSideEffect, importcpp: "get_offset", 
    header: "sprite.h".}
proc set_flip_h*(this: var Sprite; p_flip: bool) {.importcpp: "set_flip_h", 
    header: "sprite.h".}
proc is_flipped_h*(this: Sprite): bool {.noSideEffect, 
    importcpp: "is_flipped_h", header: "sprite.h".}
proc set_flip_v*(this: var Sprite; p_flip: bool) {.importcpp: "set_flip_v", 
    header: "sprite.h".}
proc is_flipped_v*(this: Sprite): bool {.noSideEffect, 
    importcpp: "is_flipped_v", header: "sprite.h".}
proc set_region*(this: var Sprite; p_region: bool) {.importcpp: "set_region", 
    header: "sprite.h".}
proc is_region*(this: Sprite): bool {.noSideEffect, importcpp: "is_region", 
                                      header: "sprite.h".}
proc set_region_rect*(this: var Sprite; p_region_rect: Rect2) {.
    importcpp: "set_region_rect", header: "sprite.h".}
proc get_region_rect*(this: Sprite): Rect2 {.noSideEffect, 
    importcpp: "get_region_rect", header: "sprite.h".}
proc set_frame*(this: var Sprite; p_frame: cint) {.importcpp: "set_frame", 
    header: "sprite.h".}
proc get_frame*(this: Sprite): cint {.noSideEffect, importcpp: "get_frame", 
                                      header: "sprite.h".}
proc set_vframes*(this: var Sprite; p_amount: cint) {.importcpp: "set_vframes", 
    header: "sprite.h".}
proc get_vframes*(this: Sprite): cint {.noSideEffect, importcpp: "get_vframes", 
                                        header: "sprite.h".}
proc set_hframes*(this: var Sprite; p_amount: cint) {.importcpp: "set_hframes", 
    header: "sprite.h".}
proc get_hframes*(this: Sprite): cint {.noSideEffect, importcpp: "get_hframes", 
                                        header: "sprite.h".}
proc set_modulate*(this: var Sprite; p_color: Color) {.
    importcpp: "set_modulate", header: "sprite.h".}
proc get_modulate*(this: Sprite): Color {.noSideEffect, 
    importcpp: "get_modulate", header: "sprite.h".}
proc get_item_rect*(this: Sprite): Rect2 {.noSideEffect, 
    importcpp: "get_item_rect", header: "sprite.h".}
proc constructSprite*(): Sprite {.constructor, importcpp: "Sprite(@)", 
                                  header: "sprite.h".}
type 
  ViewportSprite* {.importcpp: "ViewportSprite", header: "sprite.h".} = object of Node2D #OBJ_TYPE( ViewportSprite, Node2D );
    #texture* {.importc: "texture".}: Ref[Texture]
    #viewport_path* {.importc: "viewport_path".}: NodePath
    centered* {.importc: "centered".}: bool
    offset* {.importc: "offset".}: Point2
    modulate* {.importc: "modulate".}: Color


proc edit_set_pivot*(this: var ViewportSprite; p_pivot: Point2) {.
    importcpp: "edit_set_pivot", header: "sprite.h".}
proc edit_get_pivot*(this: ViewportSprite): Point2 {.noSideEffect, 
    importcpp: "edit_get_pivot", header: "sprite.h".}
proc edit_has_pivot*(this: ViewportSprite): bool {.noSideEffect, 
    importcpp: "edit_has_pivot", header: "sprite.h".}
#proc set_viewport_path*(this: var ViewportSprite; p_viewport: NodePath) {.
    #importcpp: "set_viewport_path", header: "sprite.h".}
#proc get_viewport_path*(this: ViewportSprite): NodePath {.noSideEffect, 
    #importcpp: "get_viewport_path", header: "sprite.h".}
proc set_centered*(this: var ViewportSprite; p_center: bool) {.
    importcpp: "set_centered", header: "sprite.h".}
proc is_centered*(this: ViewportSprite): bool {.noSideEffect, 
    importcpp: "is_centered", header: "sprite.h".}
proc set_offset*(this: var ViewportSprite; p_offset: Point2) {.
    importcpp: "set_offset", header: "sprite.h".}
proc get_offset*(this: ViewportSprite): Point2 {.noSideEffect, 
    importcpp: "get_offset", header: "sprite.h".}
proc set_modulate*(this: var ViewportSprite; p_color: Color) {.
    importcpp: "set_modulate", header: "sprite.h".}
proc get_modulate*(this: ViewportSprite): Color {.noSideEffect, 
    importcpp: "get_modulate", header: "sprite.h".}
proc get_item_rect*(this: ViewportSprite): Rect2 {.noSideEffect, 
    importcpp: "get_item_rect", header: "sprite.h".}
proc constructViewportSprite*(): ViewportSprite {.constructor, 
    importcpp: "ViewportSprite(@)", header: "sprite.h".}
##endif // SPRITE_H


