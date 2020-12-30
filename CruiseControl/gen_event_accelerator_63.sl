(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 7
			 8
			 18
			 528
			 1286
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

(constraint (= (next 0 0 7 4 true 1535 ) 3))
(constraint (= (next 0 0 17 9 true 1328 ) 1))
(constraint (= (next 0 3 17 4 true 1989 ) 1))
(constraint (= (next 0 5 15 5 true 1016 ) 3))
(constraint (= (next 0 8 12 4 true 1510 ) 6))
(constraint (= (next 0 9 25 8 true 1948 ) 6))
(constraint (= (next 0 10 33 10 true 816 ) 4))
(constraint (= (next 0 14 14 5 true 524 ) 6))
(constraint (= (next 0 15 19 9 true 589 ) 4))
(constraint (= (next 0 16 21 3 true 1602 ) 4))

(check-synth)
