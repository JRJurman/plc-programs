(define findInList (xs y)
  (if (null? xs) #f
    (if (equal? (car xs) y) #t
      (findInList (cdr xs) y)
    )
  )
)

(define maxHelper (xs maxV)
  (if (null? xs) maxV
    (if (> (car xs) maxV)
      (maxHelper (cdr xs) (car xs))
      (maxHelper (cdr xs) maxV)
    )
  )
)

(define maxStarter (xs default)
  (if (null? xs) default
    (maxHelper xs (car xs))
  )
)

(define maxValue (xs)
  (maxHelper xs 0)
)

(define minHelper (xs minV)
  (if (null? xs) minV
    (if (< (car xs) minV)
      (minHelper (cdr xs) (car xs))
      (minHelper (cdr xs) minV)
    )
  )
)

(define minStarter (xs default)
  (if (null? xs) default
    (minHelper xs (car xs))
  )
)

(define minValue (xs)
  (minStarter xs 0)
)
