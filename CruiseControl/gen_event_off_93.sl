(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 5
			 758
			 1091
			 brake
			 distance
			 speed
			 throttle
			 time
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 ignition
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 1 0 0 0 true 234 ) 7))
(constraint (= (next 2 0 0 0 true 1484 ) 7))
(constraint (= (next 3 0 0 0 true 1741 ) 1))
(constraint (= (next 0 0 9 4 true 1867 ) 5))
(constraint (= (next 0 0 9 4 true 100 ) 5))
(constraint (= (next 0 0 13 3 true 1492 ) 7))
(constraint (= (next 0 1 6 0 true 229 ) 1))
(constraint (= (next 0 1 5 0 true 1478 ) 4))
(constraint (= (next 0 2 5 0 true 365 ) 7))
(constraint (= (next 1 2 1 0 true 1922 ) 3))

(check-synth)
