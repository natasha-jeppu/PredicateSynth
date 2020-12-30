(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 455
			 788
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

(constraint (= (next 0 0 5 4 true 1237 ) 3))
(constraint (= (next 0 0 3 5 true 327 ) 3))
(constraint (= (next 0 1 7 5 true 800 ) 1))

(check-synth)
