(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 8
			 18
			 333
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

(constraint (= (next 1 0 0 0 true 985 ) 4))
(constraint (= (next 0 0 0 0 false 1804 ) 3))
(constraint (= (next 1 0 0 0 true 1440 ) 7))
(constraint (= (next 2 0 0 0 true 1237 ) 5))
(constraint (= (next 1 5 41 0 true 1044 ) 3))

(check-synth)
