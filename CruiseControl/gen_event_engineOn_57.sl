(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 9
			 10
			 561
			 1184
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

(constraint (= (next 0 0 0 0 true 781 ) 5))
(constraint (= (next 0 0 13 4 true 947 ) 5))
(constraint (= (next 0 2 16 1 true 1825 ) 1))

(check-synth)
