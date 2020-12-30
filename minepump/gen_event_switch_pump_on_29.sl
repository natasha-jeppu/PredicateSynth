(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 17
			 19
			 39
			 566
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

(constraint (= (next 82 598 false ) 4))
(constraint (= (next 72 595 false ) 4))
(constraint (= (next 72 598 false ) 4))
(constraint (= (next 31 548 false ) 4))
(constraint (= (next 31 563 false ) 4))
(constraint (= (next 31 553 false ) 4))
(constraint (= (next 31 567 false ) 4))
(constraint (= (next 31 564 false ) 4))
(constraint (= (next 30 561 false ) 4))
(constraint (= (next 31 552 false ) 4))
(constraint (= (next 30 563 false ) 4))
(constraint (= (next 30 566 false ) 4))
(constraint (= (next 30 554 false ) 4))
(constraint (= (next 30 546 false ) 4))
(constraint (= (next 30 567 false ) 4))

(check-synth)
