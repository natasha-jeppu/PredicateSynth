(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 8
			 720
			 951
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

(constraint (= (next 0 0 0 0 true 1905 ) 5))
(constraint (= (next 0 0 7 1 true 1298 ) 3))
(constraint (= (next 0 0 7 0 true 541 ) 6))
(constraint (= (next 0 1 8 0 true 996 ) 6))
(constraint (= (next 0 1 16 0 true 16 ) 3))

(check-synth)
