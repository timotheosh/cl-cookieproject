(defpackage {{cookiecutter.project_name}}/tests
  (:use :cl
        :{{cookiecutter.project_name}}
        :fiveam))
(in-package :{{cookiecutter.project_name}}/tests)

;; NOTE: To run this test file, execute `(asdf:test-system :{{cookiecutter.project_name}})' in your Lisp.
;; 

(def-suite all-tests
  :description "The master suite of all run-testing tests.")

(in-suite all-tests)

(test dummy-tests
  "Some fake tests. You should add your own i.e. (is (= ({{cookiecutter.project_name}}::some-function 2) 5)"
  (is (listp (list 1 2)))
  (is (= 5 (+ 2 3))))
  
