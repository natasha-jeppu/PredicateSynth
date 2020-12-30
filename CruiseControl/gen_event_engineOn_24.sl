(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 9
			 16
			 603
			 1068
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

(constraint (= (next 0 0 0 0 true 1619 ) 5))
(constraint (= (next 0 0 0 0 true 1005 ) 3))
(constraint (= (next 0 0 0 0 true 1576 ) 5))
(constraint (= (next 0 0 0 0 true 627 ) 1))
(constraint (= (next 0 0 0 0 true 1381 ) 1))
(constraint (= (next 0 0 0 0 true 364 ) 7))
(constraint (= (next 0 0 0 0 true 1157 ) 2))
(constraint (= (next 0 0 0 0 true 299 ) 3))
(constraint (= (next 0 0 0 0 true 54 ) 7))
(constraint (= (next 0 4 46 9 true 1289 ) 7))
(constraint (= (next 1 7 34 0 true 1482 ) 4))
(constraint (= (next 1 9 23 0 true 1960 ) 4))

(check-synth)
