(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 591
			 829
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

(constraint (= (next 0 0 0 0 true 946 ) 3))
(constraint (= (next 0 0 0 0 true 1778 ) 6))
(constraint (= (next 0 2 17 6 true 20 ) 6))
(constraint (= (next 0 0 0 0 true 1229 ) 2))
(constraint (= (next 0 0 0 0 true 971 ) 4))
(constraint (= (next 1 0 0 0 true 307 ) 7))
(constraint (= (next 2 0 0 0 true 555 ) 5))

(check-synth)
