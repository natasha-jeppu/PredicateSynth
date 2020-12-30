(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 603
			 945
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

(constraint (= (next 0 0 0 0 true 961 ) 5))
(constraint (= (next 0 0 0 0 true 256 ) 5))
(constraint (= (next 0 0 0 0 true 784 ) 7))
(constraint (= (next 0 0 0 0 true 653 ) 2))
(constraint (= (next 0 0 0 0 true 1497 ) 5))
(constraint (= (next 1 0 0 0 true 1983 ) 5))
(constraint (= (next 0 0 0 0 true 481 ) 2))

(check-synth)
