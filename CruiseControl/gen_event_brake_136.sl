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
			 3
			 6
			 10
			 492
			 1114
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

(constraint (= (next 1 2 20 0 true 1286 ) 1))
(constraint (= (next 1 9 25 0 true 1137 ) 3))
(constraint (= (next 0 0 0 0 false 130 ) 3))
(constraint (= (next 1 0 6 0 true 1998 ) 7))
(constraint (= (next 2 0 1 0 true 1168 ) 6))
(constraint (= (next 1 0 0 0 true 1158 ) 4))
(constraint (= (next 2 0 0 0 true 969 ) 5))
(constraint (= (next 3 0 0 0 true 1347 ) 1))
(constraint (= (next 1 0 0 0 true 833 ) 6))

(check-synth)
