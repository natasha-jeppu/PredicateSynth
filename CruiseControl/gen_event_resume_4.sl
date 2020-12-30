(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 6
			 9
			 497
			 717
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

(constraint (= (next 0 0 0 0 true 917 ) 6))
(constraint (= (next 0 0 10 9 true 151 ) 4))
(constraint (= (next 0 0 18 9 true 1083 ) 3))

(check-synth)
