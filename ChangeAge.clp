(deftemplate person
  (slot name)
  (slot age)
  (slot sex (default Male))
  (multislot itskills)
)

(deffacts people
  (person (name Brian) (age 35) (itskills java c++ python))
  (person (name Angie) (age 27) (sex Female))
)

::Modifying a record
(defrule change_age
  ?u <- (change ?name ?new-age)
  ?p <- (person (name ?name))
  =>
  (modify ?p (age ?new-age))
  (retract ?u)
)
