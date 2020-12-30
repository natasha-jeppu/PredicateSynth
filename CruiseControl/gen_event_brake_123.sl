(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 558
			 900
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

(constraint (= (next 1 0 0 0 true 417 ) 6))
(constraint (= (next 1 1 5 0 true 1596 ) 3))
(constraint (= (next 1 2 4 0 true 492 ) 3))
(constraint (= (next 2 2 0 0 true 156 ) 5))
(constraint (= (next 3 2 0 0 true 1581 ) 1))
(constraint (= (next 1 2 0 0 true 627 ) 3))
(constraint (= (next 1 2 0 0 true 995 ) 2))
(constraint (= (next 1 0 0 0 true 1340 ) 6))

(check-synth)
