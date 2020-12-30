(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 6
			 520
			 733
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

(constraint (= (next 0 0 1 5 true 252 ) 5))
(constraint (= (next 0 0 10 8 true 665 ) 1))
(constraint (= (next 0 1 4 5 true 297 ) 4))
(constraint (= (next 0 0 4 5 true 932 ) 1))
(constraint (= (next 0 0 10 5 true 1519 ) 4))

(check-synth)
