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
			 6
			 14
			 43
			 594
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

(constraint (= (next 82 595 false ) 6))
(constraint (= (next 60 597 false ) 6))
(constraint (= (next 59 595 false ) 6))
(constraint (= (next 57 595 false ) 6))
(constraint (= (next 48 595 false ) 6))
(constraint (= (next 51 600 false ) 6))
(constraint (= (next 47 598 false ) 6))
(constraint (= (next 44 599 false ) 6))
(constraint (= (next 45 594 false ) 6))
(constraint (= (next 45 595 false ) 6))
(constraint (= (next 34 591 false ) 3))
(constraint (= (next 31 573 false ) 3))
(constraint (= (next 30 586 false ) 3))
(constraint (= (next 30 598 false ) 6))
(constraint (= (next 32 599 false ) 3))
(constraint (= (next 30 596 false ) 3))
(constraint (= (next 32 588 false ) 6))
(constraint (= (next 31 592 false ) 3))
(constraint (= (next 30 596 false ) 3))

(check-synth)
