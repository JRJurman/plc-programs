; Prog 06, created by Jesse Jurman (jrj2703)

; Polygon class
(class Polygon Object
  (numOfSides area perimeter)
  (method numOfSides () numOfSides)
  (method area () area)
  (method perimeter () perimeter)
)

; Rectangle subclass of Polygon
(class Rectangle Polygon
  (length width)
  (method initRectangle ()
    (set numOfSides 4)
    (set area (* length width))
    (set perimeter (+ (* length 2) (* width 2)))
  )
)

; Square subclass of Rectangle
(class Square Rectangle
  (side)
  (method initSquare ()
    (set length side)
    (set width side)
  )
)

; Triangle subclass of Polygon
; assumes side1 is the base
(class Triangle Polygon
  (side1 side2 side3 height)
  (method initTriangle ()
    (set numOfSides 3)
    (set area (/ (* height side1) 2))
    (set perimeter (+ (+ side1 side2) side3))
  )
)

; RightTriangle subclass of Triangle
; There are no details on the instance variables for this class
; assumes there are three parameters, side1, side2, and side3
; assumes height is just one of the sides
(class RightTriangle Triangle
  (side1 side2 side3)
  (method initRightTriangle ()
    (if (> side1 side2)
      (if (> side1 side3)
        [
          (set height side2)
          (set area (/ (* side2 side3) 2))
        ]
        [
          (set height side1)
          (set area (/ (* side1 side2) 2))
        ]
      )
      (if (> side2 side3)
        [
          (set height side1)
          (set area (/ (* side1 side3) 2))
        ]
        [
          (set height side1)
          (set area (/ (* side1 side2) 2))
        ]
      )
    )
  )
)

; Circle class
; assumes pi is 3.14
(class Circle Object
  (radius)
  (method perimeter () (* 2 (* 3.14 radius)))
  (method area () (* 3.14 (* radius radius)))
)
