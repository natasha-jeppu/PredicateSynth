(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 715
			 842
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

(constraint (= (next 1 0 0 0 true 599 ) 7))
(constraint (= (next 2 0 0 0 true 942 ) 6))
(constraint (= (next 1 0 10 0 true 60 ) 6))
(constraint (= (next 1 1 8 0 true 1765 ) 6))

(check-synth)
