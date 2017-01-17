;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; This is a very simple expert system to demonstrate the use of
;; rule-based system for problem diagnostic application.
;; Please refer to the diagram given in class for the rule formulation.
;; CLIPS is a declarative AI programming language.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Is the starter turning?
(defrule starter
;; no condition for this rule - hence always fire
=>	(printout t "Is the Starter Turning ?" crlf)
	(bind ?answer (read))
	(assert (Starter-turning ?answer)))

;;; Are the lights working?
(defrule lights
	(Starter-turning no)
=>	(printout t "Are the lights working ?" crlf)
	(bind ?answer (read))
	(assert (Lights-working ?answer)))

;;; Change the battery
(defrule battery
	(Lights-working no)
=>	(printout t "Please change the battery" crlf))

;;; Does the Solenoid Click?
(defrule solenoid
	(Lights-working yes)
=>	(printout t "Does the Solenoid click ?" crlf)
	(bind ?answer (read))
	(assert (Solenoid-click ?answer)))

;;; Are the terminals clean?
(defrule terminals
	(Solenoid-click yes)
=>	(printout t "Are the terminals clean ?" crlf)
	(bind ?answer (read))
	(assert (Terminal-clean ?answer)))

;;; Are the terminals clean?
(defrule solenoid-fuse
	(Solenoid-click no)
=>	(printout t "Solenoid fuse ?" crlf)
	(bind ?answer (read))
	(assert (Solenoid-fuse-ok ?answer)))

;;; Replace the starter
(defrule replace-starter
	(Terminal-clean yes)
=>	(printout t "Please replace the Starter!" crlf))

;;; Replace the starter
(defrule clearn-terminal
	(Terminal-clean no)
=>	(printout t "Please clean the terminal!" crlf))

;;; Replace the solenoid
(defrule replace-solenoid
	(Solenoid-fuse-ok yes)
=>	(printout t "Please replace the Solenoid!" crlf))

;;; Replace the fuse
(defrule replace-fuse
	(Solenoid-fuse-ok no)
=>	(printout t "Please replace the fuse!" crlf))

;;; Got any petrol?
(defrule petrol
	(Starter-turning yes)
=>	(printout t "Does the fuel guage show empty ?" crlf)
	(bind ?answer (read))
	(assert (Got-petrol ?answer)))

;;; Go get some petrol
(defrule buy-petrol
	(Got-petrol no)
=>	(printout t "Please go get some petrol!" crlf))

;;; call AA
(defrule call-AA
	(Got-petrol yes)
=>	(printout t "Please go and call AA!" crlf))
