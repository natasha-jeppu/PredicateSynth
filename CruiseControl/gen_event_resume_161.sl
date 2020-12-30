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
			 4
			 5
			 618
			 1145
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

(constraint (= (next 0 0 6 0 true 544 ) 4))
(constraint (= (next 0 0 6 0 true 430 ) 1))
(constraint (= (next 0 0 1 1 true 1144 ) 3))
(constraint (= (next 0 0 1 0 true 1849 ) 3))
(constraint (= (next 0 0 0 0 true 771 ) 5))
(constraint (= (next 0 1 11 0 true 1811 ) 4))
(constraint (= (next 0 2 10 0 true 724 ) 5))

(check-synth)
