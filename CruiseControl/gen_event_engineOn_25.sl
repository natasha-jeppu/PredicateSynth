(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 749
			 907
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

(constraint (= (next 0 0 0 0 true 1117 ) 1))
(constraint (= (next 1 0 0 0 true 84 ) 3))
(constraint (= (next 1 0 0 0 true 590 ) 7))
(constraint (= (next 0 0 4 0 true 1836 ) 7))

(check-synth)
