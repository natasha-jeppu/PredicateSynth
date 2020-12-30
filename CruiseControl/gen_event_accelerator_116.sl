(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 492
			 1277
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

(constraint (= (next 0 0 0 0 false 1743 ) 3))
(constraint (= (next 0 0 5 4 true 1325 ) 7))
(constraint (= (next 0 0 3 5 true 762 ) 2))

(check-synth)
