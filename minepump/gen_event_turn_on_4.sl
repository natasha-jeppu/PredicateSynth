(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 19
			 32
			 41
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

(constraint (= (next 84 593 false ) 6))
(constraint (= (next 83 594 false ) 6))
(constraint (= (next 79 597 false ) 6))
(constraint (= (next 80 598 false ) 6))
(constraint (= (next 80 599 false ) 6))
(constraint (= (next 57 597 false ) 6))
(constraint (= (next 57 592 false ) 6))
(constraint (= (next 56 599 false ) 6))
(constraint (= (next 56 594 false ) 3))
(constraint (= (next 31 580 false ) 3))
(constraint (= (next 31 580 false ) 3))
(constraint (= (next 31 583 false ) 3))
(constraint (= (next 30 588 false ) 3))
(constraint (= (next 30 586 false ) 3))
(constraint (= (next 31 591 false ) 3))
(constraint (= (next 30 573 false ) 3))
(constraint (= (next 31 574 false ) 3))
(constraint (= (next 31 572 false ) 3))
(constraint (= (next 31 561 false ) 3))
(constraint (= (next 31 551 false ) 3))
(constraint (= (next 30 556 false ) 3))
(constraint (= (next 31 555 false ) 3))
(constraint (= (next 30 561 false ) 3))
(constraint (= (next 30 554 false ) 3))
(constraint (= (next 31 544 false ) 3))
(constraint (= (next 31 537 false ) 3))
(constraint (= (next 30 538 false ) 3))
(constraint (= (next 30 540 false ) 3))
(constraint (= (next 31 516 false ) 3))
(constraint (= (next 30 505 false ) 3))
(constraint (= (next 31 518 false ) 3))
(constraint (= (next 32 508 false ) 3))
(constraint (= (next 30 502 false ) 3))
(constraint (= (next 30 497 false ) 3))

(check-synth)
