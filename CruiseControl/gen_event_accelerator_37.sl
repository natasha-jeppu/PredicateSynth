(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 6
			 10
			 14
			 661
			 998
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

(constraint (= (next 0 0 6 4 true 1386 ) 2))
(constraint (= (next 0 0 1 5 true 390 ) 3))
(constraint (= (next 0 0 3 10 true 137 ) 6))
(constraint (= (next 0 0 17 9 true 1616 ) 1))
(constraint (= (next 0 2 25 5 true 1793 ) 5))
(constraint (= (next 0 4 27 5 true 449 ) 3))
(constraint (= (next 0 13 17 5 true 1216 ) 3))

(check-synth)
