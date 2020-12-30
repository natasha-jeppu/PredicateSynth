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
			 7
			 17
			 64
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

(constraint (= (next 73 624 false ) 0))
(constraint (= (next 76 615 false ) 6))
(constraint (= (next 77 615 false ) 6))
(constraint (= (next 79 606 false ) 7))
(constraint (= (next 78 607 true ) 2))
(constraint (= (next 80 606 false ) 6))
(constraint (= (next 81 601 false ) 7))
(constraint (= (next 82 601 true ) 2))
(constraint (= (next 80 603 true ) 2))
(constraint (= (next 55 600 true ) 2))
(constraint (= (next 53 600 true ) 2))
(constraint (= (next 53 603 true ) 2))
(constraint (= (next 52 602 true ) 2))
(constraint (= (next 42 603 true ) 2))
(constraint (= (next 42 601 false ) 7))
(constraint (= (next 41 601 true ) 2))
(constraint (= (next 41 602 true ) 2))

(check-synth)
