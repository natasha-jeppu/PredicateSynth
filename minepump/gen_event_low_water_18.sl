(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 16
			 29
			 495
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

(constraint (= (next 29 488 true ) 2))
(constraint (= (next 29 482 true ) 2))
(constraint (= (next 29 476 true ) 2))
(constraint (= (next 30 468 true ) 2))
(constraint (= (next 30 477 true ) 2))
(constraint (= (next 29 497 true ) 2))
(constraint (= (next 29 509 true ) 2))
(constraint (= (next 29 522 true ) 2))
(constraint (= (next 29 505 true ) 2))
(constraint (= (next 28 504 true ) 2))
(constraint (= (next 29 494 true ) 2))
(constraint (= (next 29 502 true ) 2))
(constraint (= (next 30 509 true ) 2))
(constraint (= (next 30 506 true ) 2))
(constraint (= (next 28 506 true ) 2))
(constraint (= (next 29 515 true ) 2))
(constraint (= (next 30 509 true ) 2))
(constraint (= (next 29 510 true ) 2))
(constraint (= (next 29 508 true ) 2))
(constraint (= (next 30 501 true ) 2))
(constraint (= (next 30 485 true ) 2))
(constraint (= (next 29 487 true ) 2))
(constraint (= (next 29 480 true ) 2))
(constraint (= (next 29 464 true ) 2))
(constraint (= (next 29 467 true ) 2))

(check-synth)
