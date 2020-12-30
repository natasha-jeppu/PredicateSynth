(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 29
			 30
			 563
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

(constraint (= (next 30 597 true ) 2))
(constraint (= (next 29 593 true ) 2))
(constraint (= (next 30 599 true ) 2))
(constraint (= (next 30 597 true ) 2))
(constraint (= (next 30 596 true ) 2))
(constraint (= (next 29 587 true ) 2))
(constraint (= (next 28 592 true ) 2))
(constraint (= (next 30 570 true ) 2))
(constraint (= (next 30 577 true ) 2))
(constraint (= (next 30 571 true ) 2))
(constraint (= (next 30 560 true ) 2))
(constraint (= (next 29 558 true ) 2))
(constraint (= (next 28 543 true ) 2))
(constraint (= (next 30 544 true ) 2))
(constraint (= (next 28 527 true ) 2))
(constraint (= (next 30 519 true ) 2))
(constraint (= (next 28 519 true ) 2))
(constraint (= (next 29 525 true ) 2))
(constraint (= (next 28 530 true ) 2))

(check-synth)
