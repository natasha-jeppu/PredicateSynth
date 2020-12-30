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
			 11
			 71
			 610
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

(constraint (= (next 73 640 false ) 0))
(constraint (= (next 75 631 false ) 6))
(constraint (= (next 76 622 false ) 6))
(constraint (= (next 78 622 false ) 6))
(constraint (= (next 80 613 false ) 6))
(constraint (= (next 80 611 false ) 6))
(constraint (= (next 81 603 false ) 6))
(constraint (= (next 82 601 false ) 7))
(constraint (= (next 82 602 true ) 2))
(constraint (= (next 78 601 true ) 2))
(constraint (= (next 78 606 true ) 2))
(constraint (= (next 76 605 true ) 2))
(constraint (= (next 78 602 false ) 7))
(constraint (= (next 57 602 true ) 2))
(constraint (= (next 56 600 true ) 2))
(constraint (= (next 55 604 true ) 2))
(constraint (= (next 56 608 true ) 2))
(constraint (= (next 56 605 false ) 6))
(constraint (= (next 56 603 false ) 7))

(check-synth)
