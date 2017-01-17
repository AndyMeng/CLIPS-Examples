(deftemplate tropical-fruits
  (slot name)
  (slot color)
)

(deffacts my_fruits
  (tropical-fruits (name Apple) (color Red))
  (tropical-fruits (name Grape) (color Purple))
  (tropical-fruits (name Banana) (color Yellow))
  (tropical-fruits (name Durian) (color Green))
)

;Select fruits that are not red
(defrule fruit-not-red-color
  (tropical-fruits (name ?name) (color ~Red))
  =>
  (printout t ?name " is not red in color" crlf)
)

;Select either red or green fruits
(defrule fruit-red-or-green-color
  (tropical-fruits (name ?name) (color Red | Green))
  =>
  (printout t ?name " is red or green in color" crlf)
)
