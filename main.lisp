;; sbcl
;; (load "main.lisp")
;; (quit)

(format t "hello")

(defun soma (a b) (+ a b))

(defun menor-de-dois (a b)
    (if (< a b) a b))

(defun menor-de-tres (a b c) (menor-de-dois c (menor-de-dois a b)))

(defun area-circunferencia (r) (* pi (expt r 2 )))

(defun and-tres (a b c) (and a (and b c)))

(defun fatorial (n) 
    (if (< n 2)
         1 
         (* n (fatorial (- n 1)))))

;; # ja em uso pelo sistema
(defun hash (str1 str2) 
    (if (equal str1 str2)
        str1
        (concatenate 'string str1 str2)))

(defun fibonacci (n)
  (if (< n 2)
      n
      (+ (fibonacci (- n 1))
         (fibonacci (- n 2)))))

(defun elemento (l n)
  (if (zerop n)
    (first l)
    (elemento (rest l) (- n 1) )))

(defun e-primo (n)
    (cond ((= n 1) nil)
          ((= n 2) t)
          ((> (length (loop for x from 2 below n when (= (mod n x) 0) collect x)) 0) nil)
          (t t)))