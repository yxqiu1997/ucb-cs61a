
(define-macro (def func args body)
    'YOUR-CODE-HERE
    `(define, func (lambda, args, body)))


(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define all-three-multiples
  (map-stream (lambda (x) (+ 3 x)) (cons-stream 0 all-three-multiples))
)


(define (compose-all funcs)
  'YOUR-CODE-HERE
    (lambda (x)
        (if (null? funcs)
            x
            ((compose-all (cdr funcs)) ((car funcs) x))))
)


(define (partial-sums stream)
  'YOUR-CODE-HERE
  (define (helper sum stream)
      (if (null? stream) nil
      (cons-stream (+ (car stream) sum) (helper (+ (car stream) sum) (cdr-stream stream)))))
  (helper 0 stream)
)

