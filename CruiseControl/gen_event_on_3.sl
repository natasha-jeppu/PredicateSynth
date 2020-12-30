(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 7
			 538
			 885
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

(constraint (= (next 0 0 0 0 true 1615 ) 1))
(constraint (= (next 0 0 0 0 true 141 ) 6))
(constraint (= (next 0 6 19 1 true 1040 ) 2))
(constraint (= (next 0 0 0 0 true 1441 ) 7))
(constraint (= (next 0 0 0 0 true 356 ) 4))
(constraint (= (next 0 0 0 0 true 693 ) 4))
(constraint (= (next 0 1 9 1 true 911 ) 6))

(check-synth)
