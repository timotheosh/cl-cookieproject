(defpackage {{cookiecutter.project_name}}/tests/main
  (:use :cl
        :{{cookiecutter.project_name}}
        :rove))
(in-package :{{cookiecutter.project_name}}/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :project_name)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
