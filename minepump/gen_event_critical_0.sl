(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 2
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 5
			 35
			 604
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

(constraint (= (next 47 602 true ) 2))
(constraint (= (next 47 602 true ) 2))
(constraint (= (next 40 607 true ) 2))
(constraint (= (next 36 601 true ) 2))
(constraint (= (next 35 602 true ) 2))
(constraint (= (next 35 603 true ) 2))
(constraint (= (next 37 605 true ) 2))
(constraint (= (next 38 605 false ) 7))
(constraint (= (next 36 603 true ) 2))
(constraint (= (next 37 604 true ) 2))
(constraint (= (next 36 600 true ) 2))
(constraint (= (next 30 605 true ) 2))
(constraint (= (next 30 604 true ) 2))
(constraint (= (next 30 600 true ) 2))
(constraint (= (next 31 607 false ) 0))
(constraint (= (next 31 607 true ) 2))
(constraint (= (next 31 606 true ) 2))
(constraint (= (next 31 602 false ) 7))
(constraint (= (next 31 608 true ) 2))

(check-synth)
