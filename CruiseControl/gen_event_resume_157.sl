(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 12
			 13
			 674
			 918
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

(constraint (= (next 0 0 0 0 false 820 ) 5))
(constraint (= (next 0 0 0 0 true 1275 ) 6))
(constraint (= (next 0 0 1 5 true 81 ) 5))
(constraint (= (next 0 1 27 8 true 1825 ) 7))
(constraint (= (next 1 2 19 0 true 225 ) 5))
(constraint (= (next 0 15 27 1 true 1279 ) 6))

(check-synth)
