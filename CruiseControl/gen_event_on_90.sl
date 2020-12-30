(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 10
			 12
			 15
			 20
			 684
			 1191
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

(constraint (= (next 0 0 0 0 true 1901 ) 2))
(constraint (= (next 0 0 0 0 false 869 ) 3))
(constraint (= (next 0 4 29 2 true 1910 ) 4))
(constraint (= (next 0 8 29 2 true 1355 ) 3))
(constraint (= (next 0 24 33 3 true 988 ) 4))
(constraint (= (next 0 26 28 2 true 121 ) 3))

(check-synth)
