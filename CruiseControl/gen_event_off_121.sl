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
			 4
			 6
			 449
			 1099
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

(constraint (= (next 0 0 0 0 false 1002 ) 7))
(constraint (= (next 0 0 0 0 true 1008 ) 5))
(constraint (= (next 0 0 0 0 true 1257 ) 5))
(constraint (= (next 0 0 0 0 true 1187 ) 1))
(constraint (= (next 0 0 0 0 true 1540 ) 4))
(constraint (= (next 0 0 0 0 true 186 ) 4))
(constraint (= (next 0 0 0 0 true 1223 ) 6))
(constraint (= (next 0 0 5 4 true 419 ) 3))
(constraint (= (next 0 0 10 4 true 875 ) 5))
(constraint (= (next 0 1 14 3 true 1543 ) 5))
(constraint (= (next 0 1 16 2 true 1222 ) 1))

(check-synth)
