(set-logic LIA)
(synth-fun next ((pos Int) (gps_pos Int) (id Int) (user_id Int) ) Int
	((Start Int)  (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 pos
			 gps_pos
			 id
			 user_id
			 	(+ Var Var)						
			 	(- Var Var)						
			 	(* Var Var)))

	 (StartBool Bool (
					 (> Var Var)						
					 (>= Var Var)						
					 (< Var Var)						
					 (<= Var Var)						
					 (= Var Var)						
					 (and StartBool StartBool)			
					 (or  StartBool StartBool)				
					 (not StartBool)))))

(constraint (= (next 20 20 0 30 ) 0))
(constraint (= (next 20 20 26 30 ) 0))
(constraint (= (next 20 20 26 30 ) 0))
(constraint (= (next 20 20 26 30 ) 0))
(constraint (= (next 21 20 158 30 ) 1))
(constraint (= (next 10 20 0 30 ) 1))

(check-synth)
