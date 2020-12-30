(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 2
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 16
			 17
			 67
			 616
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

(constraint (= (next 74 649 false ) 0))
(constraint (= (next 75 643 false ) 6))
(constraint (= (next 76 634 false ) 6))
(constraint (= (next 77 631 false ) 6))
(constraint (= (next 78 623 false ) 6))
(constraint (= (next 79 622 false ) 6))
(constraint (= (next 79 613 false ) 6))
(constraint (= (next 79 609 false ) 6))
(constraint (= (next 80 602 false ) 7))
(constraint (= (next 72 602 true ) 2))
(constraint (= (next 62 601 true ) 2))
(constraint (= (next 51 603 true ) 2))
(constraint (= (next 50 608 true ) 2))
(constraint (= (next 35 601 true ) 2))
(constraint (= (next 31 606 false ) 7))

(check-synth)
