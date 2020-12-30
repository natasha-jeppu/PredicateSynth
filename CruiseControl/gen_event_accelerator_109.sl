(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 8
			 11
			 17
			 391
			 1198
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

(constraint (= (next 0 0 5 4 true 1234 ) 6))
(constraint (= (next 0 0 18 9 true 1566 ) 6))
(constraint (= (next 0 1 23 10 true 603 ) 5))
(constraint (= (next 0 0 4 5 true 1156 ) 6))
(constraint (= (next 0 0 13 9 true 1029 ) 3))
(constraint (= (next 0 1 24 10 true 1001 ) 5))

(check-synth)
