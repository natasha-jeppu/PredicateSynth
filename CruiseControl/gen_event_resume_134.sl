(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 457
			 1091
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

(constraint (= (next 0 0 4 0 true 611 ) 1))
(constraint (= (next 0 0 1 1 true 1521 ) 4))
(constraint (= (next 0 1 2 1 true 1140 ) 3))

(check-synth)
