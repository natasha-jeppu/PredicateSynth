(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 403
			 948
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

(constraint (= (next 0 0 0 0 true 943 ) 3))
(constraint (= (next 0 0 0 0 true 1200 ) 6))
(constraint (= (next 0 0 3 0 true 1453 ) 5))
(constraint (= (next 0 0 2 0 true 417 ) 4))
(constraint (= (next 0 0 3 0 true 728 ) 7))

(check-synth)
