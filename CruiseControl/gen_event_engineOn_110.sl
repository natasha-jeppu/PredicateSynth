(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 441
			 1196
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

(constraint (= (next 0 0 0 0 true 1627 ) 1))
(constraint (= (next 0 0 0 0 true 673 ) 5))
(constraint (= (next 1 0 0 0 true 729 ) 6))
(constraint (= (next 0 0 6 4 true 1181 ) 1))
(constraint (= (next 0 1 5 0 true 1225 ) 5))
(constraint (= (next 0 0 0 0 true 1740 ) 5))

(check-synth)
