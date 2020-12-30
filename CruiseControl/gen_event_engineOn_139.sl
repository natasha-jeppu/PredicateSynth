(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 601
			 1004
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

(constraint (= (next 0 0 0 0 true 1061 ) 5))
(constraint (= (next 1 1 16 0 true 383 ) 6))
(constraint (= (next 0 0 0 0 true 126 ) 3))
(constraint (= (next 0 0 0 0 true 1467 ) 3))
(constraint (= (next 0 0 0 0 true 1790 ) 3))
(constraint (= (next 0 0 0 0 true 356 ) 6))
(constraint (= (next 0 0 7 4 true 979 ) 6))
(constraint (= (next 0 0 0 0 true 911 ) 5))
(constraint (= (next 0 0 0 0 true 686 ) 5))
(constraint (= (next 0 0 0 0 true 1749 ) 3))
(constraint (= (next 0 0 0 0 true 348 ) 6))
(constraint (= (next 1 1 10 0 true 1854 ) 6))
(constraint (= (next 0 0 0 0 true 1337 ) 1))

(check-synth)
