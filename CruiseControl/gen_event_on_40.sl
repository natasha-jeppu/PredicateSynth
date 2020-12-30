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
			 425
			 622
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

(constraint (= (next 0 0 0 0 true 1046 ) 5))
(constraint (= (next 0 0 0 0 true 280 ) 7))
(constraint (= (next 0 0 0 0 true 597 ) 4))
(constraint (= (next 0 0 0 0 true 1164 ) 6))
(constraint (= (next 0 0 1 0 true 581 ) 5))
(constraint (= (next 0 0 5 0 true 64 ) 3))

(check-synth)
