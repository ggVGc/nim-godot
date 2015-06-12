type 
  Point2* {.importcpp: "Javelin::Point2", header: "Point2.h".}[T] = object 
    x* {.importc: "x".}: T
    y* {.importc: "y".}: T


proc constructPoint2*[T](a: cint; b: cint): Point2[T] {.constructor, 
    importcpp: "Javelin::Point2(@)", header: "Point2.h".}

