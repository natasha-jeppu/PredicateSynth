(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 7
			 16
			 21
			 766
			 1044
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

(constraint (= (next 0 0 1 5 true 36 ) 3))
(constraint (= (next 0 0 6 5 true 269 ) 6))
(constraint (= (next 0 1 18 9 true 1515 ) 6))
(constraint (= (next 0 2 26 10 true 973 ) 6))
(constraint (= (next 0 4 40 9 true 1992 ) 7))
(constraint (= (next 0 6 36 4 true 1479 ) 4))

(check-synth)
