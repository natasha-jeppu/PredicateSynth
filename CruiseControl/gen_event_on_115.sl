(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 620
			 969
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

(constraint (= (next 0 0 0 0 false 546 ) 3))
(constraint (= (next 0 0 0 0 true 1422 ) 3))
(constraint (= (next 0 0 0 0 true 110 ) 4))
(constraint (= (next 0 0 0 0 true 1808 ) 3))
(constraint (= (next 0 0 0 0 true 401 ) 3))
(constraint (= (next 0 0 0 0 true 1256 ) 2))
(constraint (= (next 0 0 0 0 true 1242 ) 4))

(check-synth)
