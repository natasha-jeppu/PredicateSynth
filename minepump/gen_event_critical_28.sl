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
			 3
			 10
			 52
			 603
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

(constraint (= (next 73 610 false ) 0))
(constraint (= (next 75 602 false ) 7))
(constraint (= (next 75 601 true ) 2))
(constraint (= (next 54 601 true ) 2))
(constraint (= (next 52 603 true ) 2))
(constraint (= (next 50 605 true ) 2))
(constraint (= (next 49 602 true ) 2))
(constraint (= (next 48 606 true ) 2))
(constraint (= (next 49 600 false ) 7))
(constraint (= (next 48 607 true ) 2))
(constraint (= (next 50 600 false ) 7))
(constraint (= (next 49 603 true ) 2))
(constraint (= (next 51 600 true ) 2))
(constraint (= (next 49 607 true ) 2))
(constraint (= (next 49 601 false ) 7))
(constraint (= (next 47 603 true ) 2))
(constraint (= (next 48 602 false ) 6))
(constraint (= (next 48 601 false ) 7))
(constraint (= (next 50 602 true ) 2))
(constraint (= (next 36 604 true ) 2))
(constraint (= (next 37 606 true ) 2))

(check-synth)
