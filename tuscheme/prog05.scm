; type definitions
(val null-int? (@ null? int))
(val car-int (@ car int))
(val cdr-int (@ cdr int))
(val equal-int? (@ = int))

(define bool findInList ( ((list int) xs) (int y) )
  (if (null-int? xs) #f
    (if (equal-int? (car-int xs) y) #t
      (findInList (cdr-int xs) y)
    )
  )
)

(define int maxHelper ( ((list int) xs) (int maxV) )
  (if (null-int? xs) maxV
    (if (> (car-int xs) maxV)
      (maxHelper (cdr-int xs) (car-int xs))
      (maxHelper (cdr-int xs) maxV)
    )
  )
)

(define int maxStarter ( ((list int) xs) (int default) )
  (if (null-int? xs) default
    (maxHelper xs (car-int xs))
  )
)

(define int maxValue ( ((list int) xs) )
  (maxHelper xs 0)
)

(define int minHelper ( ((list int) xs) (int minV) )
  (if (null-int? xs) minV
    (if (< (car-int xs) minV)
      (minHelper (cdr-int xs) (car-int xs))
      (minHelper (cdr-int xs) minV)
    )
  )
)

(define int minStarter ( ((list int) xs) (int default) )
  (if (null-int? xs) default
    (minHelper xs (car-int xs))
  )
)

(define int minValue (xs)
  (minStarter xs 0)
)

(define int avgHelper ( ((list int) xs) (int avg) (int avgCount) )
  (if (null-int? xs) (/ avg avgCount)
    (avgHelper (cdr-int xs) (+ (car-int xs) avg) (+ avgCount 1))
  )
)

(define int avgStarter (((list int) xs) (int default))
  (if (null-int? xs) default
    (avgHelper xs 0 0)
  )
)

(define int avgValue ( ((list int) xs) )
  (avgStarter xs 0)
)

(define int medMinSearch ( ((list int) xs) (int medMin) (int medMax) ((list int) medMinXs) ((list int) medMaxXs) ((list int) tmpMinXs) ((list int) tmpMaxXs) )
  (if (null-int? xs) medMin
    (if (> (car-int xs) medMin)
      (if (findInList (car-int xs) (tmpMinXs))
        (medMinSearch (cdr-int xs) medMin medMax minMedXs medMaxXs (cdr-int tmpMinXs) tmpMaxXs)
        (medMaxSearch (cdr-int xs) medMin medMax minMedXs medMaxXs (cons medMinXs (car-int xs)) medMaxXs)
      )
      (medMinSearch (cdr-int xs) medMin medMax medMinXs medMaxXs medMinXs medMaxXs)
    )
  )
)

(define int medMaxSearch ( ((list int) xs) (int medMin) (int medMax) ((list int) medMinXs) ((list int) medMaxXs) ((list int) tmpMinXs) ((list int) tmpMaxXs) )
  (if (null-int? xs) medMax
    (if (< (car-int xs) medMax)
      (if (findInList (car-int xs) (tmpMaxXs))
        (medMaxSearch (cdr-int xs) medMin medMax minMedXs medMaxXs tmpMinXs (cdr-int tmpMaxXs))
        (medMinSearch (cdr-int xs) medMin medMax minMedXs medMaxXs medMinxs (cons medMaxXs (car-int xs)))
      )
      (medMaxSearch (cdr-int xs) medMin medMax medMinXs medMaxXs medMinXs medMaxXs)
    )
  )
)

(define int medStarter ( ((list int) xs) (int default) )
  (if (null-int? xs) default
    (medMinSearch xs (minValue xs) (maxValue xs) (minValue xs) (maxValue xs) '(minValue xs) '(maxValue xs) '(minValue xs) '(maxValue xs))
  )
)

(define int medValue ( ((list int) xs) )
  (medStarter xs 0)
)
