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
			 5
			 13
			 15
			 180
			 1259
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

(constraint (= (next 0 0 0 0 true 1163 ) 2))
(constraint (= (next 0 5 24 2 true 1467 ) 5))
(constraint (= (next 0 9 22 2 true 1148 ) 7))

(check-synth)
