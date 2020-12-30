(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 8
			 11
			 47
			 601
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

(constraint (= (next 75 601 true ) 5))
(constraint (= (next 54 601 true ) 5))
(constraint (= (next 52 603 true ) 5))
(constraint (= (next 50 605 true ) 5))
(constraint (= (next 49 602 true ) 5))
(constraint (= (next 48 606 true ) 5))
(constraint (= (next 48 607 true ) 5))
(constraint (= (next 49 603 true ) 5))
(constraint (= (next 51 600 true ) 5))
(constraint (= (next 49 607 true ) 5))
(constraint (= (next 47 603 true ) 5))
(constraint (= (next 50 602 true ) 5))
(constraint (= (next 36 604 true ) 5))
(constraint (= (next 37 606 true ) 5))
(constraint (= (next 29 577 true ) 5))
(constraint (= (next 29 585 true ) 5))

(check-synth)
