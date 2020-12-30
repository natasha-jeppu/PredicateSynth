(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 8
			 11
			 13
			 564
			 1183
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

(constraint (= (next 0 0 0 0 true 1278 ) 6))
(constraint (= (next 0 0 0 0 true 1813 ) 5))
(constraint (= (next 0 0 3 5 true 286 ) 6))
(constraint (= (next 0 6 30 4 true 1590 ) 1))
(constraint (= (next 0 8 30 2 true 1367 ) 5))
(constraint (= (next 1 11 12 0 true 1740 ) 1))
(constraint (= (next 0 12 12 1 true 610 ) 3))
(constraint (= (next 0 12 12 1 true 344 ) 4))
(constraint (= (next 0 12 12 1 true 1317 ) 6))

(check-synth)
