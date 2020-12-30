(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 7
			 25
			 449
			 764
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

(constraint (= (next 0 0 11 4 true 867 ) 3))
(constraint (= (next 0 1 16 2 true 1174 ) 1))
(constraint (= (next 0 2 16 1 true 463 ) 7))
(constraint (= (next 0 15 62 0 true 291 ) 4))
(constraint (= (next 0 16 58 0 true 859 ) 3))
(constraint (= (next 0 0 0 0 false 257 ) 3))
(constraint (= (next 0 0 11 4 true 1437 ) 2))

(check-synth)
