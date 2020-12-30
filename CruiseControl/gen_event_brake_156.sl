(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 313
			 437
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

(constraint (= (next 1 0 0 0 true 404 ) 2))
(constraint (= (next 1 0 0 0 true 766 ) 1))
(constraint (= (next 1 0 10 0 true 142 ) 4))

(check-synth)
