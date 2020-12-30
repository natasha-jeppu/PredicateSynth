(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 7
			 11
			 494
			 949
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

(constraint (= (next 0 0 5 4 true 1088 ) 6))
(constraint (= (next 0 0 15 9 true 1299 ) 3))
(constraint (= (next 0 2 23 6 true 472 ) 5))
(constraint (= (next 0 0 4 5 true 1035 ) 6))
(constraint (= (next 0 0 11 9 true 684 ) 7))
(constraint (= (next 0 0 3 5 true 404 ) 6))
(constraint (= (next 0 1 14 9 true 1172 ) 1))
(constraint (= (next 0 0 6 4 true 1386 ) 6))
(constraint (= (next 0 0 8 9 true 198 ) 6))
(constraint (= (next 0 1 23 9 true 1755 ) 3))

(check-synth)
