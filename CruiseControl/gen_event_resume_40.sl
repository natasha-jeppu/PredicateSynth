(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 440
			 938
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

(constraint (= (next 0 0 0 0 false 988 ) 3))
(constraint (= (next 0 0 0 0 true 766 ) 6))
(constraint (= (next 0 0 0 0 true 1231 ) 5))
(constraint (= (next 0 0 0 0 true 372 ) 5))
(constraint (= (next 0 0 0 0 true 942 ) 3))
(constraint (= (next 0 0 0 0 true 450 ) 5))
(constraint (= (next 0 0 0 0 true 993 ) 6))
(constraint (= (next 0 0 5 0 true 1760 ) 1))

(check-synth)
