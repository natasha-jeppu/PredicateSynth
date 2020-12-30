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
			 4
			 11
			 611
			 1133
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

(constraint (= (next 0 0 0 0 true 263 ) 3))
(constraint (= (next 0 0 0 0 true 881 ) 1))
(constraint (= (next 0 0 0 0 true 1635 ) 3))
(constraint (= (next 0 0 0 0 true 880 ) 3))
(constraint (= (next 0 0 0 0 true 1986 ) 5))
(constraint (= (next 0 1 27 8 true 1154 ) 7))

(check-synth)
