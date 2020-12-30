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
			 1
			 2
			 3
			 6
			 7
			 12
			 13
			 491
			 1063
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

(constraint (= (next 0 0 0 0 true 333 ) 3))
(constraint (= (next 0 0 0 0 true 916 ) 5))
(constraint (= (next 0 2 30 7 true 971 ) 4))
(constraint (= (next 2 6 17 0 true 1486 ) 7))
(constraint (= (next 0 11 27 2 true 850 ) 7))
(constraint (= (next 2 13 8 0 true 1873 ) 1))
(constraint (= (next 0 14 8 1 true 1011 ) 6))

(check-synth)
