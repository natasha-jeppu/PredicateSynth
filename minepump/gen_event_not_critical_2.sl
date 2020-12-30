(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 3
			 14
			 46
			 596
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

(constraint (= (next 82 595 false ) 1))
(constraint (= (next 60 597 false ) 1))
(constraint (= (next 59 595 false ) 1))
(constraint (= (next 57 595 false ) 1))
(constraint (= (next 48 595 false ) 1))
(constraint (= (next 51 600 false ) 1))
(constraint (= (next 47 598 false ) 1))
(constraint (= (next 44 599 false ) 1))
(constraint (= (next 45 594 false ) 1))
(constraint (= (next 45 595 false ) 1))
(constraint (= (next 34 591 false ) 1))
(constraint (= (next 32 599 false ) 1))
(constraint (= (next 30 595 false ) 0))
(constraint (= (next 32 596 false ) 0))
(constraint (= (next 31 592 false ) 1))

(check-synth)
