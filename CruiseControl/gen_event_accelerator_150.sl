(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 8
			 13
			 553
			 1038
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

(constraint (= (next 0 0 1 5 true 353 ) 3))
(constraint (= (next 0 0 9 9 true 263 ) 3))
(constraint (= (next 0 1 19 4 true 1082 ) 7))
(constraint (= (next 0 0 7 4 true 1655 ) 4))
(constraint (= (next 0 1 19 8 true 1007 ) 1))
(constraint (= (next 0 4 21 7 true 1318 ) 5))
(constraint (= (next 0 6 17 4 true 1590 ) 1))

(check-synth)
