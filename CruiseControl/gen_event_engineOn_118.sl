(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 496
			 725
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

(constraint (= (next 0 0 0 0 true 1327 ) 5))
(constraint (= (next 0 0 0 0 true 795 ) 3))
(constraint (= (next 0 0 0 0 true 471 ) 5))
(constraint (= (next 0 0 0 0 true 241 ) 1))
(constraint (= (next 0 0 0 0 true 229 ) 4))
(constraint (= (next 0 0 0 0 true 1287 ) 5))

(check-synth)
