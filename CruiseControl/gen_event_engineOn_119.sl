(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
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
			 7
			 17
			 22
			 562
			 732
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

(constraint (= (next 0 0 0 0 true 550 ) 3))
(constraint (= (next 0 0 0 0 true 390 ) 6))
(constraint (= (next 0 0 9 4 true 1040 ) 4))
(constraint (= (next 0 1 14 3 true 1645 ) 4))
(constraint (= (next 0 2 16 1 true 1891 ) 4))
(constraint (= (next 1 4 11 0 true 437 ) 6))
(constraint (= (next 0 10 51 8 true 914 ) 6))
(constraint (= (next 0 17 57 0 true 160 ) 6))
(constraint (= (next 0 22 57 5 true 872 ) 2))
(constraint (= (next 0 0 0 0 true 133 ) 5))
(constraint (= (next 0 0 0 0 true 237 ) 5))
(constraint (= (next 0 0 0 0 true 257 ) 7))
(constraint (= (next 0 0 7 4 true 993 ) 4))

(check-synth)
