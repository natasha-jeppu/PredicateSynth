(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 542
			 1141
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

(constraint (= (next 0 0 0 0 true 575 ) 3))
(constraint (= (next 0 0 0 0 true 1247 ) 3))
(constraint (= (next 0 0 0 0 true 1675 ) 4))
(constraint (= (next 0 0 0 0 true 1314 ) 1))
(constraint (= (next 0 0 0 0 true 1189 ) 3))
(constraint (= (next 0 0 0 0 true 1994 ) 2))
(constraint (= (next 0 0 0 0 true 1044 ) 7))
(constraint (= (next 0 0 0 0 true 1529 ) 4))
(constraint (= (next 0 0 5 5 true 232 ) 5))

(check-synth)
