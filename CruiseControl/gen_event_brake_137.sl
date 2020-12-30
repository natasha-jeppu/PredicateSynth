(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 5
			 8
			 646
			 1166
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

(constraint (= (next 1 0 0 0 true 697 ) 7))
(constraint (= (next 2 0 0 0 true 1887 ) 1))
(constraint (= (next 1 0 2 0 true 1795 ) 2))
(constraint (= (next 0 0 0 0 false 83 ) 3))
(constraint (= (next 1 0 0 0 true 1066 ) 5))
(constraint (= (next 2 0 0 0 true 1821 ) 1))
(constraint (= (next 1 0 0 0 true 347 ) 1))
(constraint (= (next 1 8 22 0 true 1011 ) 7))
(constraint (= (next 2 8 15 0 true 1230 ) 1))
(constraint (= (next 1 10 10 0 true 1722 ) 4))

(check-synth)
