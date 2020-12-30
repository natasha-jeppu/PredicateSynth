(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 521
			 1159
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

(constraint (= (next 1 0 0 0 true 1676 ) 1))
(constraint (= (next 1 0 0 0 true 651 ) 5))
(constraint (= (next 0 0 0 0 false 775 ) 3))
(constraint (= (next 1 0 1 0 true 1534 ) 2))

(check-synth)
