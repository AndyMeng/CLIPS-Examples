;Select persons who are older than 21
(defrule adulthood
  (person ?name ?age&:(> ?age 21))
  =>
  (assert (adult ?name ?age))
)

;Select persons who are between 21 and 30 years
(defrule between-21-and-30
  (person ?name ?age&:(and (> ?age 21) (< ?age 30)))
  =>
  (printout t "Between 21 and 30 : " ?name " " ?age crlf)
)

;Check if a=b+2
(defrule comparison
  (compare ?a ?b&: (eq ?a (+ ?b 2)))
  =>
  (printout t ?a "->" ?b crlf)
)

;Select all fruits except durians
(defrule exception
  (fruits ?c&~ "Durians")
  =>
  (printout t "Fruits that I love : " ?c crlf)
)
