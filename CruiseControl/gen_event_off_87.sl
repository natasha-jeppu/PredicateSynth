(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 787
			 947
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

(constraint (= (next 1 0 0 0 true 567 ) 5))
(constraint (= (next 1 0 0 0 true 422 ) 3))
(constraint (= (next 5 0 0 0 true 1851 ) 6))

(check-synth)
