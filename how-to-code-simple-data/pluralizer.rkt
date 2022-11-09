;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pluralizer) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; String -> String     !signature!
;; pluralize a given word (add s to the end)    !purpose!

;; (define (plural word) "Word") ; stub

(check-expect (plural "Word") "Words")
(check-expect (plural "Boat") "Boats")

;(define (plural word) ; template
; (... word))

(define (plural word)
  (string-append word "s"))

(plural "Word")
(plural "Boat")