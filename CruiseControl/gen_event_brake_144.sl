(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 7
			 11
			 20
			 24
			 549
			 880
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

(constraint (= (next 1 0 0 0 true 1296 ) 4))
(constraint (= (next 2 0 0 0 true 624 ) 5))
(constraint (= (next 3 0 0 0 true 129 ) 1))
(constraint (= (next 1 0 0 0 true 881 ) 6))
(constraint (= (next 1 1 15 0 true 325 ) 4))
(constraint (= (next 1 8 42 0 true 1380 ) 6))
(constraint (= (next 1 23 52 0 true 1721 ) 5))

(check-synth)
