(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 7
			 16
			 20
			 566
			 1120
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

(constraint (= (next 0 0 1 5 true 362 ) 5))
(constraint (= (next 0 0 20 8 true 1875 ) 3))
(constraint (= (next 0 0 3 5 true 945 ) 5))
(constraint (= (next 0 3 12 5 true 974 ) 6))
(constraint (= (next 0 4 26 9 true 1895 ) 3))
(constraint (= (next 0 6 37 10 true 782 ) 6))

(check-synth)
