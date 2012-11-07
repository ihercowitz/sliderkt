#lang racket/base

(require slideshow
         slideshow/play)

(provide fade-item
         scale-item
         big-text)


(define (big-text tx) (text tx (current-main-font) 64))

(define (animate animation an)
  (play-n 
   #:steps 30
   #:skip-first? #t
   #:skip-last? #t
  
   (lambda (n1 n2)
     (animation an
          (* n1  (- 1.0 n2)))))
  )

(define (fade-item an)
 (animate cellophane an)) 

(define (scale-item an)
  (animate scale an)
)
