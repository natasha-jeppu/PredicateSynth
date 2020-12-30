(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 7
			 14
			 788
			 898
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

(constraint (= (next 0 0 0 0 true 373 ) 5))
(constraint (= (next 0 0 0 0 true 1888 ) 3))
(constraint (= (next 0 0 0 0 true 1649 ) 1))
(constraint (= (next 0 0 5 0 true 153 ) 7))
(constraint (= (next 0 1 6 0 true 118 ) 3))
(constraint (= (next 0 1 5 0 true 788 ) 7))
(constraint (= (next 1 1 0 0 true 312 ) 7))
(constraint (= (next 0 4 40 9 true 1902 ) 1))

(check-synth)
