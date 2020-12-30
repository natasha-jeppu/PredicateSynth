(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 7
			 10
			 541
			 693
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

(constraint (= (next 0 0 0 0 true 177 ) 4))
(constraint (= (next 0 0 0 0 true 168 ) 6))
(constraint (= (next 0 0 4 0 true 1042 ) 6))
(constraint (= (next 0 0 0 0 false 440 ) 2))
(constraint (= (next 0 0 0 0 false 1310 ) 3))
(constraint (= (next 0 10 21 2 true 1403 ) 5))
(constraint (= (next 0 10 21 2 true 314 ) 5))

(check-synth)
