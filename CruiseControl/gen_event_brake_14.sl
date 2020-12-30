(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 775
			 978
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

(constraint (= (next 1 1 3 0 true 446 ) 7))
(constraint (= (next 2 1 2 0 true 229 ) 3))
(constraint (= (next 1 1 4 0 true 502 ) 6))
(constraint (= (next 1 4 11 0 true 29 ) 5))
(constraint (= (next 1 5 3 0 true 1946 ) 2))
(constraint (= (next 1 0 3 0 true 1704 ) 7))
(constraint (= (next 2 0 0 0 true 1927 ) 7))
(constraint (= (next 3 0 0 0 true 526 ) 3))

(check-synth)
