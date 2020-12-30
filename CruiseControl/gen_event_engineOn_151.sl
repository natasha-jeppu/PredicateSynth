(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 358
			 1139
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

(constraint (= (next 0 0 0 0 true 1659 ) 3))
(constraint (= (next 0 0 0 0 true 1263 ) 7))
(constraint (= (next 0 0 0 0 true 774 ) 5))
(constraint (= (next 0 1 9 4 true 1164 ) 4))
(constraint (= (next 0 1 7 0 true 834 ) 2))

(check-synth)
