(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 10
			 14
			 743
			 1109
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

(constraint (= (next 0 0 0 0 true 1260 ) 2))
(constraint (= (next 0 1 21 6 true 1636 ) 1))
(constraint (= (next 0 2 20 0 true 1520 ) 3))
(constraint (= (next 0 3 17 1 true 19 ) 1))

(check-synth)
