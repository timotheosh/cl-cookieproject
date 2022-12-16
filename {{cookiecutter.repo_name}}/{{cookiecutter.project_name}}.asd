(defsystem "{{cookiecutter.project_name}}"
  :version "0.1.0"
  :author "{{cookiecutter.full_name}} <{{cookiecutter.email}}"
  :license "MIT"
  :depends-on ("cl-ppcre"
               "unix-opts")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "{{cookiecutter.project_description}}"
  :build-operation "asdf:program-op"
  :build-pathname "target/{{cookiecutter.project_name}}"
  :entry-point "{{cookiecutter.project_name}}:-main"
  :in-order-to ((test-op (test-op "{{cookiecutter.project_name}}/tests"))))

(defsystem "project_name/tests"
  :author "{{cookiecutter.full_name}} <{{cookiecutter.email}}"
  :license "MIT"
  :depends-on ("{{cookiecutter.project_name}}"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for {{cookiecutter.project_name}}"
  :perform (test-op (op c) (symbol-call :rove :run c)))
