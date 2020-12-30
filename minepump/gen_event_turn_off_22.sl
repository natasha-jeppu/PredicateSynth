(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 15
			 30
			 37
			 579
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

(constraint (= (next 76 601 true ) 7))
(constraint (= (next 73 606 true ) 6))
(constraint (= (next 75 601 true ) 7))
(constraint (= (next 56 602 true ) 7))
(constraint (= (next 50 603 true ) 6))
(constraint (= (next 50 603 true ) 6))
(constraint (= (next 52 601 true ) 7))
(constraint (= (next 52 600 true ) 7))
(constraint (= (next 30 597 true ) 0))
(constraint (= (next 29 593 true ) 0))
(constraint (= (next 30 603 true ) 6))
(constraint (= (next 30 599 true ) 0))
(constraint (= (next 30 597 true ) 0))
(constraint (= (next 30 596 true ) 0))
(constraint (= (next 30 600 true ) 7))
(constraint (= (next 29 587 true ) 0))
(constraint (= (next 28 592 true ) 0))
(constraint (= (next 30 602 true ) 6))
(constraint (= (next 30 602 true ) 7))
(constraint (= (next 30 603 true ) 6))
(constraint (= (next 30 570 true ) 0))
(constraint (= (next 30 577 true ) 0))
(constraint (= (next 30 571 true ) 0))
(constraint (= (next 30 560 true ) 0))
(constraint (= (next 29 558 true ) 0))
(constraint (= (next 28 543 true ) 0))
(constraint (= (next 30 544 true ) 0))
(constraint (= (next 28 527 true ) 0))
(constraint (= (next 30 519 true ) 0))
(constraint (= (next 28 519 true ) 0))
(constraint (= (next 29 525 true ) 0))
(constraint (= (next 28 530 true ) 0))

(check-synth)
