(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 6
			 22
			 30
			 606
			 1252
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

(constraint (= (next 0 9 48 9 true 1523 ) 3))
(constraint (= (next 0 13 60 9 true 288 ) 5))
(constraint (= (next 0 14 64 9 true 887 ) 4))
(constraint (= (next 0 0 0 0 true 1486 ) 3))
(constraint (= (next 0 0 0 0 true 1610 ) 2))
(constraint (= (next 0 0 0 0 false 1770 ) 2))
(constraint (= (next 0 0 2 5 true 525 ) 3))

(check-synth)
