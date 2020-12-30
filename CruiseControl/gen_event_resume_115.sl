(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 441
			 1064
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

(constraint (= (next 0 0 0 0 false 812 ) 1))
(constraint (= (next 0 0 0 0 true 815 ) 5))
(constraint (= (next 0 0 0 0 true 767 ) 4))
(constraint (= (next 0 0 0 0 true 1390 ) 4))
(constraint (= (next 0 0 0 0 true 1889 ) 1))
(constraint (= (next 0 0 0 0 true 703 ) 1))
(constraint (= (next 0 0 0 0 true 728 ) 1))
(constraint (= (next 0 0 0 0 true 1409 ) 6))

(check-synth)
