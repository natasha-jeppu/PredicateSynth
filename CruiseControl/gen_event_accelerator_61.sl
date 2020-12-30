(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 7
			 13
			 14
			 406
			 989
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

(constraint (= (next 0 0 4 5 true 937 ) 4))
(constraint (= (next 0 0 10 4 true 1057 ) 6))
(constraint (= (next 0 0 12 9 true 259 ) 5))
(constraint (= (next 0 3 40 9 true 1419 ) 1))
(constraint (= (next 0 0 4 5 true 957 ) 6))
(constraint (= (next 0 0 14 9 true 1303 ) 3))

(check-synth)
