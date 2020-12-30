(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
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
			 7
			 15
			 18
			 621
			 974
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

(constraint (= (next 0 0 7 4 true 1908 ) 1))
(constraint (= (next 0 0 2 5 true 441 ) 7))
(constraint (= (next 0 0 3 5 true 808 ) 5))
(constraint (= (next 0 0 19 9 true 1833 ) 1))
(constraint (= (next 0 3 11 5 true 622 ) 6))
(constraint (= (next 0 3 16 9 true 708 ) 6))
(constraint (= (next 0 3 18 10 true 162 ) 3))
(constraint (= (next 0 6 41 9 true 1500 ) 1))
(constraint (= (next 0 7 45 8 true 786 ) 4))

(check-synth)
