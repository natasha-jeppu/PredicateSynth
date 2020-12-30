(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 7
			 643
			 734
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

(constraint (= (next 1 0 0 0 true 178 ) 6))
(constraint (= (next 0 0 0 0 false 879 ) 3))
(constraint (= (next 1 0 0 0 true 1943 ) 1))
(constraint (= (next 1 0 9 0 true 308 ) 4))
(constraint (= (next 1 1 10 0 true 438 ) 2))
(constraint (= (next 1 3 17 0 true 661 ) 1))

(check-synth)
