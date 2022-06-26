(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cdr (cdr s)))
)


(define (sign num)
  'YOUR-CODE-HERE
  (cond
      ((< num 0) -1)
      ((= num 0) 0)
      ((> num 0) 1)
      )
)


(define (square x) (* x x))

(define (pow x y)
  'YOUR-CODE-HERE
  (if (= y 1) x
      (if (even? y)
          (square (pow x (/ y 2)))
          (* x (square (pow x (floor (/ y 2))))))
      )
)


(define (unique s)
  'YOUR-CODE-HERE
  (if (null? s) nil
      (cons (car s)
            (unique (filter (lambda (x) (not (equal? (car s) x)))(cdr s))))
      )
)


(define (replicate x n)
  'YOUR-CODE-HERE
  (define (helper n result)
      (if (= n 0) result
          (helper (- n 1) (cons x result))))
      (helper n nil)
  )


(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (if (= n 0) start
      (combiner (term n) (accumulate combiner start (- n 1) term)))
)


(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
  (define (helper n result)
      (if (= n 0) result
          (helper (- n 1) (combiner (term n) result))))
      (helper n start)
)


(define-macro (list-of map-expr for var in lst if filter-expr)
  'YOUR-CODE-HERE
  `(map (lambda (,var), map-expr) (filter (lambda (,var), filter-expr), lst))
)

