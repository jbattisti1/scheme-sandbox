(define (min x y)
    (if (> x y) y x))

(define (square x)
    (* x x))

(define (min-of-3 x y z)
    (min (min x y) z))

(define (sum-square x y)
    (+ (square x) (square y)))

(define (fun x y z)
    (cond ((= (min-of-3 x y z) x) (sum-square y z))
          ((= (min-of-3 x y z) y) (sum-square x z))
          (else                   (sum-square x y))
    ))

(display (= (fun 10 10 10) (sum-square 10 10)))

(display (= (fun 1 10 10) (sum-square 10 10)))
(display (= (fun 10 1 10) (sum-square 10 10)))
(display (= (fun 10 10 1) (sum-square 10 10)))

(display (= (fun 1 10 100) (sum-square 10 100)))
(display (= (fun 1 100 10) (sum-square 10 100)))
(display (= (fun 10 1 100) (sum-square 10 100)))
(display (= (fun 10 100 1) (sum-square 10 100)))
(display (= (fun 100 10 1) (sum-square 10 100)))
(display (= (fun 100 1 10) (sum-square 10 100)))