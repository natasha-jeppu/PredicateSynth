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
			 12
			 18
			 34
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

(constraint (= (next 75 619 false ) 6))
(constraint (= (next 31 548 false ) 1))
(constraint (= (next 31 563 false ) 1))
(constraint (= (next 31 553 false ) 1))
(constraint (= (next 31 567 false ) 1))
(constraint (= (next 31 564 false ) 1))
(constraint (= (next 30 561 false ) 1))
(constraint (= (next 31 552 false ) 1))
(constraint (= (next 30 563 false ) 1))
(constraint (= (next 30 566 false ) 1))
(constraint (= (next 30 554 false ) 1))
(constraint (= (next 30 546 false ) 1))
(constraint (= (next 30 567 false ) 1))

(check-synth)
