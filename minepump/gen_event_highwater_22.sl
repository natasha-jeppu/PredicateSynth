(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 10
			 33
			 564
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

(constraint (= (next 75 629 false ) 6))
(constraint (= (next 31 595 false ) 1))
(constraint (= (next 31 596 false ) 1))
(constraint (= (next 31 592 false ) 1))
(constraint (= (next 31 593 false ) 1))
(constraint (= (next 31 595 false ) 1))
(constraint (= (next 31 584 false ) 1))
(constraint (= (next 32 597 false ) 1))
(constraint (= (next 31 577 false ) 1))
(constraint (= (next 30 579 false ) 1))
(constraint (= (next 31 561 false ) 1))
(constraint (= (next 31 552 false ) 1))
(constraint (= (next 30 549 false ) 1))
(constraint (= (next 30 536 false ) 1))
(constraint (= (next 30 535 false ) 1))
(constraint (= (next 30 528 false ) 1))
(constraint (= (next 31 514 false ) 1))
(constraint (= (next 31 530 false ) 1))
(constraint (= (next 30 523 false ) 1))
(constraint (= (next 31 520 false ) 1))

(check-synth)
