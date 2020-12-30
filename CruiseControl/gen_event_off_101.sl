(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 5
			 10
			 563
			 825
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

(constraint (= (next 0 0 0 0 true 1340 ) 6))
(constraint (= (next 0 0 9 4 true 247 ) 5))
(constraint (= (next 0 0 12 3 true 1067 ) 4))
(constraint (= (next 0 3 17 4 true 1627 ) 1))
(constraint (= (next 0 4 13 1 true 240 ) 7))
(constraint (= (next 0 5 7 0 true 1316 ) 5))
(constraint (= (next 0 6 7 0 true 626 ) 6))
(constraint (= (next 0 6 13 4 true 1242 ) 7))
(constraint (= (next 1 7 7 0 true 545 ) 6))

(check-synth)
