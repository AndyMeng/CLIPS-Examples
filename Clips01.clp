(deffacts user-preference
	(budget low)
	(time mid)
)
;IF time=low THEN pet=mice, fish
(defrule Rule1
  (time low)
  => (assert (pet mice fish))
)
;IF budge=low and time = mid THEN pet=rabbit, cat
(defrule Rule2
  (budget low)
  (time mid)
  => (assert (pet rabbit cat))
)
;IF budget =high and time = high THEN pet=dog
(defrule Rule3
  (budget high)
  (time high)
  => (assert (pet dog))
)
	
