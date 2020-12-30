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
			 16
			 24
			 40
			 567
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

(constraint (= (next 79 598 false ) 6))
(constraint (= (next 82 593 false ) 6))
(constraint (= (next 82 599 false ) 6))
(constraint (= (next 80 596 false ) 6))
(constraint (= (next 56 593 false ) 6))
(constraint (= (next 54 594 false ) 6))
(constraint (= (next 54 600 false ) 6))
(constraint (= (next 53 593 false ) 6))
(constraint (= (next 43 598 false ) 6))
(constraint (= (next 42 595 false ) 6))
(constraint (= (next 42 594 false ) 3))
(constraint (= (next 30 558 false ) 3))
(constraint (= (next 31 560 false ) 3))
(constraint (= (next 31 554 false ) 3))
(constraint (= (next 31 530 false ) 3))
(constraint (= (next 31 526 false ) 3))
(constraint (= (next 31 512 false ) 3))
(constraint (= (next 32 525 false ) 3))
(constraint (= (next 30 535 false ) 3))
(constraint (= (next 30 545 false ) 3))
(constraint (= (next 31 546 false ) 3))
(constraint (= (next 31 559 false ) 3))
(constraint (= (next 30 554 false ) 3))
(constraint (= (next 30 564 false ) 3))
(constraint (= (next 31 570 false ) 3))
(constraint (= (next 31 563 false ) 3))
(constraint (= (next 30 572 false ) 3))
(constraint (= (next 30 560 false ) 3))
(constraint (= (next 31 561 false ) 3))
(constraint (= (next 31 565 false ) 3))
(constraint (= (next 31 573 false ) 3))
(constraint (= (next 31 567 false ) 3))
(constraint (= (next 30 557 false ) 3))
(constraint (= (next 30 568 false ) 3))
(constraint (= (next 31 549 false ) 3))
(constraint (= (next 31 567 false ) 3))

(check-synth)
