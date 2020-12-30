(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 662
			 821
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

(constraint (= (next 0 0 0 0 true 228 ) 1))
(constraint (= (next 0 0 0 0 true 1821 ) 3))
(constraint (= (next 0 0 0 0 true 990 ) 5))
(constraint (= (next 0 0 0 0 true 1461 ) 3))
(constraint (= (next 0 0 0 0 true 35 ) 1))
(constraint (= (next 0 0 0 0 true 352 ) 2))
(constraint (= (next 0 0 0 0 true 858 ) 6))

(check-synth)
