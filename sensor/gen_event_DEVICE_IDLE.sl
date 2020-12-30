(set-logic LIA)
(synth-fun next ((pos Int) (gps_pos Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 pos
			 gps_pos
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 20 20 ) 0))
(constraint (= (next 3 3 ) 0))
(constraint (= (next 1 1 ) 0))
(constraint (= (next 10 10 ) 0))
(constraint (= (next 10 10 ) 0))
(constraint (= (next 1 1 ) 0))
(constraint (= (next 10 10 ) 0))
(constraint (= (next 4 4 ) 0))
(constraint (= (next 4 4 ) 0))
(constraint (= (next 6 6 ) 0))
(constraint (= (next 2 2 ) 0))
(constraint (= (next 8 8 ) 0))
(constraint (= (next 4 8 ) 1))

(check-synth)
