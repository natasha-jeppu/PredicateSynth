(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 12
			 350
			 1295
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

(constraint (= (next 0 0 3 0 true 1312 ) 4))
(constraint (= (next 0 0 2 0 true 1672 ) 6))
(constraint (= (next 0 1 13 0 true 780 ) 5))
(constraint (= (next 0 2 8 0 true 1620 ) 6))
(constraint (= (next 0 3 13 1 true 993 ) 5))
(constraint (= (next 0 8 35 0 true 1392 ) 7))

(check-synth)
