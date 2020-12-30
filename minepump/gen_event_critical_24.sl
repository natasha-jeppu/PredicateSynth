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
			 4
			 12
			 80
			 613
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

(constraint (= (next 74 643 false ) 0))
(constraint (= (next 77 630 false ) 6))
(constraint (= (next 77 621 false ) 6))
(constraint (= (next 79 617 false ) 6))
(constraint (= (next 81 615 false ) 6))
(constraint (= (next 82 610 false ) 6))
(constraint (= (next 84 606 false ) 7))
(constraint (= (next 84 607 true ) 2))
(constraint (= (next 84 603 true ) 2))
(constraint (= (next 80 602 true ) 2))
(constraint (= (next 81 604 true ) 2))
(constraint (= (next 81 604 false ) 7))
(constraint (= (next 73 603 true ) 2))

(check-synth)
