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
			 3
			 4
			 15
			 21
			 536
			 957
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

(constraint (= (next 0 0 0 0 true 1379 ) 3))
(constraint (= (next 0 0 0 0 true 1280 ) 5))
(constraint (= (next 1 0 0 0 true 595 ) 6))
(constraint (= (next 0 2 36 9 true 1657 ) 4))
(constraint (= (next 0 4 45 10 true 475 ) 5))
(constraint (= (next 0 8 40 3 true 333 ) 6))
(constraint (= (next 0 0 0 0 true 476 ) 3))
(constraint (= (next 0 0 0 0 true 1464 ) 7))

(check-synth)
