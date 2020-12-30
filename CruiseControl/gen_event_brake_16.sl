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
			 475
			 1014
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

(constraint (= (next 1 0 0 0 true 961 ) 7))
(constraint (= (next 2 0 0 0 true 1210 ) 5))
(constraint (= (next 1 0 0 0 true 797 ) 5))
(constraint (= (next 2 0 0 0 true 1013 ) 7))
(constraint (= (next 3 0 0 0 true 330 ) 3))
(constraint (= (next 1 0 0 0 true 1770 ) 1))

(check-synth)
