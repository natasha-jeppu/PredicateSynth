(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 16
			 29
			 40
			 576
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

(constraint (= (next 82 594 false ) 4))
(constraint (= (next 78 599 false ) 4))
(constraint (= (next 76 598 false ) 4))
(constraint (= (next 76 595 false ) 4))
(constraint (= (next 56 598 false ) 4))
(constraint (= (next 53 597 false ) 4))
(constraint (= (next 52 596 false ) 4))
(constraint (= (next 53 594 false ) 4))
(constraint (= (next 54 591 false ) 4))
(constraint (= (next 31 595 false ) 4))
(constraint (= (next 31 596 false ) 4))
(constraint (= (next 32 594 false ) 4))
(constraint (= (next 31 592 false ) 4))
(constraint (= (next 31 593 false ) 4))
(constraint (= (next 31 595 false ) 4))
(constraint (= (next 32 598 false ) 4))
(constraint (= (next 31 584 false ) 4))
(constraint (= (next 32 597 false ) 4))
(constraint (= (next 32 600 false ) 4))
(constraint (= (next 32 595 false ) 4))
(constraint (= (next 34 590 false ) 4))
(constraint (= (next 31 577 false ) 4))
(constraint (= (next 30 579 false ) 4))
(constraint (= (next 31 561 false ) 4))
(constraint (= (next 31 552 false ) 4))
(constraint (= (next 30 549 false ) 4))
(constraint (= (next 30 536 false ) 4))
(constraint (= (next 30 535 false ) 4))
(constraint (= (next 30 528 false ) 4))
(constraint (= (next 31 514 false ) 4))
(constraint (= (next 31 530 false ) 4))
(constraint (= (next 30 523 false ) 4))
(constraint (= (next 31 520 false ) 4))

(check-synth)
