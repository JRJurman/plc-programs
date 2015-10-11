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

(define avgHelper (xs avg avgCount)
  (if (null? xs) (/ avg avgCount)
    (avgHelper (cdr xs) (+ (car xs) avg) (+ avgCount 1))
  )
)

(define avgStarter (xs default)
  (if (null? xs) default
    (avgHelper xs 0 0)
  )
)

(define avgValue (xs)
  (avgStarter xs 0)
)

(define medMinSearch (xs medMin medMax medMinXs medMaxXs tmpMinXs tmpMaxXs)
  (if (null? xs) medMin
    (if (> (car xs) medMin)
      (if (findInList (car xs) (tmpMinXs))
        (medMinSearch (cdr xs) medMin medMax minMedXs medMaxXs (cdr tmpMinXs) tmpMaxXs)
        (medMaxSearch (cdr xs) medMin medMax minMedXs medMaxXs (cons medMinXs (car xs)) medMaxXs)
      )
      (medMinSearch (cdr xs) medMin medMax medMinXs medMaxXs medMinXs medMaxXs)
    )
  )
)

(define medMaxSearch (xs medMin medMax medMinXs medMaxXs tmpMinXs tmpMaxXs)
  (if (null? xs) medMax
    (if (< (car xs) medMax)
      (if (findInList (car xs) (tmpMaxXs))
        (medMaxSearch (cdr xs) medMin medMax minMedXs medMaxXs tmpMinXs (cdr tmpMaxXs))
        (medMinSearch (cdr xs) medMin medMax minMedXs medMaxXs medMinxs (cons medMaxXs (car xs)))
      )
      (medMaxSearch (cdr xs) medMin medMax medMinXs medMaxXs medMinXs medMaxXs)
    )
  )
)

(define medStarter (xs default)
  (if (null? xs) default
    (medMinSearch xs (minValue xs) (maxValue xs) (minValue xs) (maxValue xs) '(minValue xs) '(maxValue xs) '(minValue xs) '(maxValue xs))
  )
)

(define medValue (xs)
  (medStarter xs 0)
)
