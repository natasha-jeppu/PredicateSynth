(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 9
			 529
			 1140
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

(constraint (= (next 0 0 3 5 true 772 ) 4))
(constraint (= (next 0 0 7 4 true 1811 ) 4))
(constraint (= (next 0 0 10 5 true 666 ) 1))
(constraint (= (next 0 1 15 5 true 1311 ) 4))

(check-synth)
