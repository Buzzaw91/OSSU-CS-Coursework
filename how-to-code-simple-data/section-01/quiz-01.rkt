;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname quiz-01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image -> Boolean
;;  consume two images, return true, if first image is larger

(check-expect (compare-img (rectangle 12 12 "solid" "red") (rectangle 10 10 "solid" "red")) true)
(check-expect (compare-img (rectangle 8 8 "solid" "red") (rectangle 10 10 "solid" "red")) false)
(check-expect (compare-img (rectangle 10 10 "solid" "red") (rectangle 10 10 "solid" "red")) false)
(check-expect (compare-img (rectangle 10 16 "solid" "red") (rectangle 11 12 "solid" "red")) true)
(check-expect (compare-img (rectangle 12 9 "solid" "red") (rectangle 9 10 "solid" "red")) true)

;(define (compare-img first second) false) ;stub

(define (compare-img first second)
 (> (* (image-width first) (image-height first)) (* (image-width second) (image-height second))))
