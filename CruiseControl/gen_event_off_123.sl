(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 3
			 183
			 752
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

(constraint (= (next 0 0 5 4 true 844 ) 6))
(constraint (= (next 2 2 0 0 true 871 ) 5))
(constraint (= (next 2 2 0 0 true 541 ) 7))

(check-synth)
