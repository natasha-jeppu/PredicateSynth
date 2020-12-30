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
			 4
			 8
			 14
			 798
			 1051
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

(constraint (= (next 1 2 10 0 true 1939 ) 6))
(constraint (= (next 1 5 11 0 true 1708 ) 6))
(constraint (= (next 1 7 13 0 true 1188 ) 3))
(constraint (= (next 2 7 9 0 true 63 ) 4))
(constraint (= (next 1 8 6 0 true 1794 ) 6))
(constraint (= (next 1 12 28 0 true 227 ) 7))
(constraint (= (next 2 12 24 0 true 436 ) 5))

(check-synth)
