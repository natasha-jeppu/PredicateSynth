(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 464
			 576
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

(constraint (= (next 0 0 0 0 true 434 ) 2))
(constraint (= (next 0 0 0 0 true 55 ) 5))
(constraint (= (next 0 0 0 0 true 1166 ) 6))
(constraint (= (next 0 0 10 4 true 649 ) 1))

(check-synth)