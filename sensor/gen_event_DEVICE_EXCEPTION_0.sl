(set-logic LIA)
(synth-fun next ((pos Int) (gps_pos Int) (id Int) (user_id Int) ) Int
	((Start Int)  (Var Int) (StartBool Bool))
	((Start Int (
				 2
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

(constraint (= (next 0 20 30 30 ) 2))
(constraint (= (next 0 20 30 30 ) 2))

(check-synth)
