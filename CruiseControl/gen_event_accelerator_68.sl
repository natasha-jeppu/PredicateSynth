(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 6
			 11
			 16
			 746
			 974
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

(constraint (= (next 0 0 0 0 false 66 ) 3))
(constraint (= (next 0 0 7 4 true 1816 ) 6))
(constraint (= (next 0 0 11 9 true 232 ) 6))
(constraint (= (next 0 0 21 9 true 1401 ) 6))
(constraint (= (next 0 2 35 9 true 1844 ) 7))
(constraint (= (next 0 6 14 5 true 846 ) 3))
(constraint (= (next 0 9 24 7 true 164 ) 3))
(constraint (= (next 0 15 17 4 true 1422 ) 5))

(check-synth)
