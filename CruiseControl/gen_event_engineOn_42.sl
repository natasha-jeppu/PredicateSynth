(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 8
			 662
			 1051
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

(constraint (= (next 0 0 0 0 true 1703 ) 3))
(constraint (= (next 0 0 0 0 true 463 ) 4))
(constraint (= (next 0 0 0 0 true 223 ) 1))
(constraint (= (next 1 0 4 0 true 423 ) 1))
(constraint (= (next 0 1 15 5 true 1305 ) 3))
(constraint (= (next 0 2 19 4 true 1432 ) 5))

(check-synth)
