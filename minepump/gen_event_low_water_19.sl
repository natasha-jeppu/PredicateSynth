(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 19
			 29
			 509
			 water
			 methane
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 pump
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 29 512 true ) 2))
(constraint (= (next 29 505 true ) 2))
(constraint (= (next 29 503 true ) 2))
(constraint (= (next 29 506 true ) 2))
(constraint (= (next 30 495 true ) 2))
(constraint (= (next 29 499 true ) 2))
(constraint (= (next 29 505 true ) 2))
(constraint (= (next 29 493 true ) 2))
(constraint (= (next 28 504 true ) 2))
(constraint (= (next 29 489 true ) 2))
(constraint (= (next 28 491 true ) 2))
(constraint (= (next 30 484 true ) 2))
(constraint (= (next 30 482 true ) 2))
(constraint (= (next 29 496 true ) 2))
(constraint (= (next 30 496 true ) 2))
(constraint (= (next 29 503 true ) 2))
(constraint (= (next 30 515 true ) 2))
(constraint (= (next 28 509 true ) 2))
(constraint (= (next 30 524 true ) 2))
(constraint (= (next 30 542 true ) 2))
(constraint (= (next 29 551 true ) 2))
(constraint (= (next 29 546 true ) 2))
(constraint (= (next 29 539 true ) 2))
(constraint (= (next 29 522 true ) 2))

(check-synth)
