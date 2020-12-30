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
			 8
			 20
			 56
			 605
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

(constraint (= (next 74 638 false ) 0))
(constraint (= (next 76 623 false ) 6))
(constraint (= (next 78 613 false ) 6))
(constraint (= (next 78 612 false ) 6))
(constraint (= (next 79 609 false ) 6))
(constraint (= (next 80 603 false ) 6))
(constraint (= (next 81 601 false ) 7))
(constraint (= (next 76 601 true ) 2))
(constraint (= (next 73 606 true ) 2))
(constraint (= (next 75 605 false ) 7))
(constraint (= (next 75 601 true ) 2))
(constraint (= (next 56 602 true ) 2))
(constraint (= (next 50 603 true ) 2))
(constraint (= (next 51 602 false ) 7))
(constraint (= (next 50 603 true ) 2))
(constraint (= (next 51 601 false ) 7))
(constraint (= (next 52 601 true ) 2))
(constraint (= (next 52 600 true ) 2))
(constraint (= (next 30 603 true ) 2))
(constraint (= (next 32 601 false ) 7))
(constraint (= (next 30 600 true ) 2))
(constraint (= (next 30 602 true ) 2))
(constraint (= (next 31 601 false ) 7))
(constraint (= (next 30 602 true ) 2))
(constraint (= (next 30 603 true ) 2))
(constraint (= (next 32 600 false ) 7))

(check-synth)
