(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 4
			 6
			 782
			 1025
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

(constraint (= (next 0 0 0 0 true 1469 ) 6))
(constraint (= (next 0 0 11 3 true 654 ) 6))
(constraint (= (next 2 0 10 0 true 108 ) 4))
(constraint (= (next 2 0 4 0 true 1174 ) 6))
(constraint (= (next 0 1 5 5 true 16 ) 1))
(constraint (= (next 0 2 7 0 true 1935 ) 7))
(constraint (= (next 0 2 5 1 true 1818 ) 5))

(check-synth)
