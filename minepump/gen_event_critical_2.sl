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
			 16
			 51
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

(constraint (= (next 75 632 false ) 0))
(constraint (= (next 77 621 false ) 6))
(constraint (= (next 77 611 false ) 6))
(constraint (= (next 79 605 false ) 6))
(constraint (= (next 79 604 false ) 6))
(constraint (= (next 81 600 false ) 7))
(constraint (= (next 59 601 true ) 2))
(constraint (= (next 59 607 true ) 2))
(constraint (= (next 59 601 false ) 7))
(constraint (= (next 55 602 true ) 2))
(constraint (= (next 46 604 true ) 2))
(constraint (= (next 47 603 false ) 7))
(constraint (= (next 47 606 true ) 2))
(constraint (= (next 49 604 false ) 6))
(constraint (= (next 50 601 false ) 7))
(constraint (= (next 43 603 true ) 2))
(constraint (= (next 45 600 false ) 7))
(constraint (= (next 43 602 true ) 2))
(constraint (= (next 43 601 false ) 6))
(constraint (= (next 44 601 false ) 7))
(constraint (= (next 43 601 true ) 2))
(constraint (= (next 44 607 true ) 2))
(constraint (= (next 44 604 false ) 7))
(constraint (= (next 33 600 true ) 2))
(constraint (= (next 30 603 true ) 2))
(constraint (= (next 29 601 false ) 7))
(constraint (= (next 31 602 false ) 7))
(constraint (= (next 29 600 true ) 2))

(check-synth)
