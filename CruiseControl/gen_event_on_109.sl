(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 11
			 15
			 665
			 1247
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

(constraint (= (next 0 0 0 0 true 1498 ) 4))
(constraint (= (next 0 0 0 0 false 1575 ) 3))
(constraint (= (next 0 2 30 2 true 1196 ) 2))
(constraint (= (next 0 0 0 0 false 1836 ) 3))
(constraint (= (next 0 1 26 2 true 129 ) 6))

(check-synth)
