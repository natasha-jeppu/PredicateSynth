(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 9
			 27
			 31
			 513
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

(constraint (= (next 73 604 true ) 5))
(constraint (= (next 29 512 true ) 5))
(constraint (= (next 29 505 true ) 5))
(constraint (= (next 29 503 true ) 5))
(constraint (= (next 29 506 true ) 5))
(constraint (= (next 30 495 true ) 5))
(constraint (= (next 29 499 true ) 5))
(constraint (= (next 29 505 true ) 5))
(constraint (= (next 29 493 true ) 5))
(constraint (= (next 28 504 true ) 5))
(constraint (= (next 29 489 true ) 5))
(constraint (= (next 28 491 true ) 5))
(constraint (= (next 30 484 true ) 5))
(constraint (= (next 30 482 true ) 5))
(constraint (= (next 29 496 true ) 5))
(constraint (= (next 30 496 true ) 5))
(constraint (= (next 29 503 true ) 5))
(constraint (= (next 30 515 true ) 5))
(constraint (= (next 28 509 true ) 5))
(constraint (= (next 30 524 true ) 5))
(constraint (= (next 30 542 true ) 5))
(constraint (= (next 29 551 true ) 5))
(constraint (= (next 29 546 true ) 5))
(constraint (= (next 29 539 true ) 5))
(constraint (= (next 29 522 true ) 5))

(check-synth)
