(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 7
			 11
			 428
			 547
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

(constraint (= (next 1 0 11 0 true 213 ) 7))
(constraint (= (next 2 0 10 0 true 113 ) 4))
(constraint (= (next 1 1 7 0 true 840 ) 5))
(constraint (= (next 1 2 5 0 true 1127 ) 4))
(constraint (= (next 1 5 22 0 true 443 ) 2))

(check-synth)
