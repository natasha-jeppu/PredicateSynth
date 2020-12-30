(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 16
			 22
			 744
			 1167
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

(constraint (= (next 1 0 0 0 true 240 ) 3))
(constraint (= (next 1 6 40 0 true 1438 ) 1))
(constraint (= (next 1 10 42 0 true 523 ) 2))
(constraint (= (next 1 0 0 0 true 1713 ) 1))
(constraint (= (next 1 0 0 0 true 1920 ) 5))

(check-synth)
