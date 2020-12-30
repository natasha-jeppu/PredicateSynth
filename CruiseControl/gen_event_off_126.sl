(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 576
			 1007
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

(constraint (= (next 0 0 0 0 true 1500 ) 5))
(constraint (= (next 0 0 0 0 true 1031 ) 5))
(constraint (= (next 0 0 0 0 true 1313 ) 3))
(constraint (= (next 3 0 0 0 true 764 ) 7))
(constraint (= (next 0 0 0 0 true 565 ) 7))
(constraint (= (next 0 0 0 0 true 104 ) 5))
(constraint (= (next 0 0 0 0 true 1770 ) 7))

(check-synth)
