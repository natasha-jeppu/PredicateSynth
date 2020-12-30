(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 6
			 10
			 17
			 551
			 811
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

(constraint (= (next 0 0 0 0 false 1029 ) 3))
(constraint (= (next 0 0 0 0 true 122 ) 3))
(constraint (= (next 0 0 2 5 true 209 ) 6))
(constraint (= (next 1 2 20 0 true 1568 ) 4))
(constraint (= (next 1 2 19 0 true 364 ) 5))
(constraint (= (next 1 3 16 0 true 577 ) 6))
(constraint (= (next 0 5 24 4 true 1321 ) 1))
(constraint (= (next 0 7 23 1 true 1595 ) 3))
(constraint (= (next 0 8 22 5 true 308 ) 1))
(constraint (= (next 0 12 26 3 true 441 ) 5))
(constraint (= (next 0 13 27 3 true 790 ) 5))
(constraint (= (next 0 14 27 2 true 1412 ) 6))

(check-synth)
