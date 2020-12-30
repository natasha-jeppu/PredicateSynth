(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 6
			 608
			 991
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

(constraint (= (next 0 0 0 0 false 635 ) 6))
(constraint (= (next 0 0 0 0 false 1274 ) 5))
(constraint (= (next 0 1 10 1 true 18 ) 4))
(constraint (= (next 0 2 10 1 true 1658 ) 3))
(constraint (= (next 0 4 0 0 true 1477 ) 3))
(constraint (= (next 0 5 11 1 true 886 ) 6))

(check-synth)
