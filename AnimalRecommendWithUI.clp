(defrule user-input-budget
  => (printout t crlf "Enter budget (low, mid, high): " crlf)
  (bind ?user-budget (read))
  (assert (budget ?user-budget))
)
(defrule user-input-time
  => (printout t crlf "Enter Time available for pet (low, mid, high): " crlf)
  (bind ?user-time (read))
  (assert (time ?user-time))
)
;IF time = low THEN pet = mice, fish
(defrule Rule1
  (time low)
  => (assert (pet mice fish))
  (printout t "We recommend mice and fish" crlf)
)

;IF budget = low and time =mid THEN pet= rabbit, cat
(defrule Rule2
  (budget low)
  (time mid)
  => (assert (pet rabbit cat))
  (printout t "We recommend rabbit and cat" crlf)
)
;IF budget  = high and time = high THEN pet = dog
(defrule Rule3
  (budget high)
  (time high)
  =>(assert (pet dog))
  (printout t "We recommend dog" crlf)
)
