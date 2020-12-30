(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 668
			 782
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

(constraint (= (next 0 0 6 4 true 399 ) 1))
(constraint (= (next 0 0 0 0 true 1289 ) 3))
(constraint (= (next 0 0 0 0 true 37 ) 5))
(constraint (= (next 0 0 0 0 true 340 ) 1))
(constraint (= (next 0 0 0 0 true 810 ) 4))
(constraint (= (next 0 0 0 0 true 1818 ) 1))

(check-synth)
