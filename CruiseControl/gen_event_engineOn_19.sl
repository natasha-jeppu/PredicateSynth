(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 6
			 646
			 1303
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

(constraint (= (next 0 0 0 0 true 144 ) 4))
(constraint (= (next 0 0 0 0 true 1101 ) 2))
(constraint (= (next 0 0 0 0 true 1884 ) 1))
(constraint (= (next 0 0 0 0 true 1543 ) 6))
(constraint (= (next 0 0 7 4 true 1286 ) 5))
(constraint (= (next 0 1 15 3 true 1859 ) 6))

(check-synth)
