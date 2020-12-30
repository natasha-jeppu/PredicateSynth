(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 6
			 9
			 16
			 666
			 1321
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

(constraint (= (next 0 0 0 0 true 1757 ) 3))
(constraint (= (next 0 0 11 3 true 1969 ) 3))
(constraint (= (next 1 3 11 0 true 1468 ) 6))
(constraint (= (next 0 4 16 4 true 846 ) 4))
(constraint (= (next 0 6 23 3 true 1761 ) 6))
(constraint (= (next 0 7 27 7 true 402 ) 1))
(constraint (= (next 0 11 26 1 true 1950 ) 7))
(constraint (= (next 0 13 12 1 true 418 ) 1))

(check-synth)
