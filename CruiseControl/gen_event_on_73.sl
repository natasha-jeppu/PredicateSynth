(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 773
			 1054
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

(constraint (= (next 0 0 0 0 true 1707 ) 4))
(constraint (= (next 0 0 0 0 true 1468 ) 5))
(constraint (= (next 0 0 0 0 true 138 ) 6))
(constraint (= (next 0 0 6 0 true 42 ) 1))
(constraint (= (next 0 0 6 0 true 1761 ) 3))
(constraint (= (next 0 0 6 0 true 1206 ) 3))

(check-synth)
