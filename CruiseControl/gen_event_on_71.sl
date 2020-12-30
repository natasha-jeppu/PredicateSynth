(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
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
			 10
			 12
			 527
			 968
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

(constraint (= (next 0 0 1 0 true 163 ) 1))
(constraint (= (next 0 0 1 0 true 863 ) 2))
(constraint (= (next 0 0 0 0 true 1356 ) 3))
(constraint (= (next 0 0 7 1 true 1228 ) 6))
(constraint (= (next 0 1 11 1 true 348 ) 1))
(constraint (= (next 0 1 11 1 true 496 ) 7))
(constraint (= (next 0 1 21 1 true 851 ) 5))
(constraint (= (next 0 3 17 1 true 1570 ) 5))
(constraint (= (next 0 4 16 1 true 1312 ) 1))
(constraint (= (next 0 5 16 1 true 1808 ) 4))
(constraint (= (next 0 8 33 3 true 658 ) 3))

(check-synth)
