(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 7
			 303
			 895
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

(constraint (= (next 0 0 0 0 false 1191 ) 3))
(constraint (= (next 0 0 9 4 true 586 ) 5))
(constraint (= (next 0 0 11 3 true 907 ) 3))

(check-synth)
