(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 13
			 14
			 497
			 862
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

(constraint (= (next 0 0 0 0 true 239 ) 7))
(constraint (= (next 1 0 0 0 true 572 ) 4))
(constraint (= (next 1 0 0 0 true 1266 ) 6))
(constraint (= (next 1 1 9 0 true 260 ) 6))
(constraint (= (next 0 2 19 4 true 1444 ) 6))
(constraint (= (next 0 6 24 2 true 1173 ) 6))
(constraint (= (next 0 9 36 5 true 1078 ) 7))

(check-synth)
