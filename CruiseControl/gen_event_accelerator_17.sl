(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 8
			 10
			 747
			 1472
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

(constraint (= (next 0 0 0 0 false 1183 ) 3))
(constraint (= (next 0 0 7 4 true 1936 ) 7))
(constraint (= (next 0 0 8 4 true 1991 ) 6))
(constraint (= (next 0 1 23 8 true 1970 ) 7))
(constraint (= (next 0 3 12 5 true 281 ) 3))

(check-synth)
