import
  ustring
type 
  Color* {.importcpp: "Color", header: "color.h".} = object 
  

type 
  INNER_C_STRUCT_7253790907906687646* {.importcpp: "no_name", 
      header: "color.h".} = object 
    r* {.importc: "r".}: cfloat
    g* {.importc: "g".}: cfloat
    b* {.importc: "b".}: cfloat
    a* {.importc: "a".}: cfloat

proc to_32*(this: Color): uint32_t {.noSideEffect, importcpp: "to_32", 
                                     header: "color.h".}
proc to_ARGB32*(this: Color): uint32_t {.noSideEffect, importcpp: "to_ARGB32", 
    header: "color.h".}
proc gray*(this: Color): cfloat {.noSideEffect, importcpp: "gray", 
                                  header: "color.h".}
proc get_h*(this: Color): cfloat {.noSideEffect, importcpp: "get_h", 
                                   header: "color.h".}
proc get_s*(this: Color): cfloat {.noSideEffect, importcpp: "get_s", 
                                   header: "color.h".}
proc get_v*(this: Color): cfloat {.noSideEffect, importcpp: "get_v", 
                                   header: "color.h".}
proc set_hsv*(this: var Color; p_h: cfloat; p_s: cfloat; p_v: cfloat; 
              p_alpha: cfloat = 1.0) {.importcpp: "set_hsv", header: "color.h".}
proc invert*(this: var Color) {.importcpp: "invert", header: "color.h".}
proc contrast*(this: var Color) {.importcpp: "contrast", header: "color.h".}
proc inverted*(this: Color): Color {.noSideEffect, importcpp: "inverted", 
                                     header: "color.h".}
proc contrasted*(this: Color): Color {.noSideEffect, importcpp: "contrasted", 
                                       header: "color.h".}
proc linear_interpolate*(this: Color; p_b: Color; p_t: cfloat): Color {.
    noSideEffect, importcpp: "linear_interpolate", header: "color.h".}
proc blend*(this: Color; p_over: Color): Color {.noSideEffect, 
    importcpp: "blend", header: "color.h".}
proc to_linear*(this: Color): Color {.noSideEffect, importcpp: "to_linear", 
                                      header: "color.h".}
proc hex*(p_hex: uint32_t): Color {.importcpp: "Color::hex(@)", 
                                    header: "color.h".}
proc html*(p_color: String): Color {.importcpp: "Color::html(@)", 
                                     header: "color.h".}
proc html_is_valid*(p_color: String): bool {.
    importcpp: "Color::html_is_valid(@)", header: "color.h".}
proc to_html*(this: Color; p_alpha: bool = true): String {.noSideEffect, 
    importcpp: "to_html", header: "color.h".}
proc constructColor*(): Color {.constructor, importcpp: "Color(@)", 
                                header: "color.h".}
proc constructColor*(p_r: cfloat; p_g: cfloat; p_b: cfloat; p_a: cfloat = 1.0): Color {.
    constructor, importcpp: "Color(@)", header: "color.h".}

