;;; leasp.el --- Toy theorem prover for the Integer Ring -*- lexical-binding: t; -*-

;; Copyright (c) 2025 Abhinav Tushar

;; Author: Abhinav Tushar <abhinav@lepisma.xyz>
;; Version: 0.0.1
;; Package-Requires: ((emacs "29"))
;; Keywords: mathematics
;; URL: https://github.com/lepisma/leasp

;;; Commentary:

;; Toy theorem prover for the Integer Ring
;; This file is not a part of GNU Emacs.

;;; License:

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;;; Code:

(defmacro deftheorem (name arglist &rest definition)
  (declare (indent 2)))

(deftheorem associativity (a b c)
  ;; = lets us do term rewriting
  (= (* (* a b) c)
     (* a (* b c))))

(deftheorem commutativity (a b)
  (= (* a b)
     (* b a)))

(deftheorem evenness (n)
  ;; Existential quantification
  (⇔ (is-even n)
     (∃ p (= n (* 2 p)))))

(deftheorem oddness (n)
  ;; A rather odd way to state this
  (⇔ (is-odd n)
     (~ (is-even n))))

(deftheorem even-sq-is-even (n)
  ;; Implication
  (⇒ (is-even n)
     (is-even (* n n))))

(provide 'leasp)

;;; leasp.el ends here
