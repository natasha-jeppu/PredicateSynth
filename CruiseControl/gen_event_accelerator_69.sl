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
			 5
			 6
			 14
			 417
			 993
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

(constraint (= (next 0 0 4 5 true 1021 ) 6))
(constraint (= (next 0 0 16 9 true 1339 ) 3))
(constraint (= (next 0 5 13 5 true 1004 ) 7))
(constraint (= (next 0 5 13 5 true 606 ) 3))
(constraint (= (next 0 8 20 6 true 1543 ) 5))
(constraint (= (next 0 10 21 6 true 447 ) 4))

(check-synth)
