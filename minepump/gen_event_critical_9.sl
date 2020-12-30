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
			 5
			 10
			 76
			 609
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

(constraint (= (next 75 635 false ) 0))
(constraint (= (next 77 625 false ) 6))
(constraint (= (next 78 616 false ) 6))
(constraint (= (next 79 615 false ) 6))
(constraint (= (next 80 612 false ) 6))
(constraint (= (next 80 610 false ) 6))
(constraint (= (next 81 605 false ) 6))
(constraint (= (next 81 605 false ) 6))
(constraint (= (next 81 602 false ) 7))
(constraint (= (next 69 603 true ) 2))
(constraint (= (next 71 601 false ) 6))
(constraint (= (next 71 601 false ) 7))
(constraint (= (next 71 602 true ) 2))
(constraint (= (next 71 600 true ) 2))
(constraint (= (next 71 602 true ) 2))

(check-synth)
