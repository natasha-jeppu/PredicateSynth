(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
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
			 513
			 1302
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

(constraint (= (next 0 0 0 0 false 1838 ) 3))
(constraint (= (next 1 0 0 0 true 1885 ) 6))
(constraint (= (next 1 1 6 0 true 1223 ) 4))
(constraint (= (next 1 2 3 0 true 1696 ) 7))
(constraint (= (next 2 2 0 0 true 557 ) 5))
(constraint (= (next 1 0 0 0 true 927 ) 5))
(constraint (= (next 2 0 0 0 true 990 ) 4))

(check-synth)
