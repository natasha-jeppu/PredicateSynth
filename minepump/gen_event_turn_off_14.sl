(set-logic LIA)
(synth-fun next ((water Int) (methane Int) (pump Bool) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 6
			 16
			 50
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

(constraint (= (next 72 602 true ) 7))
(constraint (= (next 62 601 true ) 7))
(constraint (= (next 51 603 true ) 7))
(constraint (= (next 50 608 true ) 7))
(constraint (= (next 35 601 true ) 7))
(constraint (= (next 29 590 true ) 6))

(check-synth)
