(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 4
			 7
			 15
			 582
			 1169
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

(constraint (= (next 0 4 37 9 true 1130 ) 2))
(constraint (= (next 0 0 0 0 false 1519 ) 3))
(constraint (= (next 0 0 0 0 true 338 ) 7))
(constraint (= (next 2 0 0 0 true 639 ) 3))
(constraint (= (next 2 0 0 0 true 1843 ) 6))

(check-synth)
