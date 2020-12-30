(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 6
			 647
			 968
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

(constraint (= (next 0 1 14 1 true 62 ) 5))
(constraint (= (next 0 0 0 0 true 551 ) 6))
(constraint (= (next 0 0 1 0 true 1220 ) 4))
(constraint (= (next 0 0 1 0 true 1152 ) 2))
(constraint (= (next 0 1 10 1 true 1963 ) 4))
(constraint (= (next 0 3 5 0 true 859 ) 6))

(check-synth)
