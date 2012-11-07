#SlideShow Racket Improvements
This is a trying to make slideshow animations and other stuffs more simple in Racket

## Sample test code

```
#lang slideshow
(require "slideimpr.rkt")

(fade-item (para #:align 'center (big-text "Teste")))
     
(fade-item (para #:align 'center (big-text "Teste slide X")))

(slide
 #:name "slide1"
  (para #:align 'center (big-text "Teste slide 1")))
```