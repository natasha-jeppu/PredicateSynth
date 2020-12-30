(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 7
			 577
			 1320
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

(constraint (= (next 0 0 0 0 true 1529 ) 4))
(constraint (= (next 0 0 0 0 false 1913 ) 1))
(constraint (= (next 1 1 9 0 true 1196 ) 2))
(constraint (= (next 0 0 0 0 true 282 ) 3))
(constraint (= (next 0 0 0 0 true 1734 ) 6))
(constraint (= (next 0 0 17 9 true 1264 ) 7))

(check-synth)
