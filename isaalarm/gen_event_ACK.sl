(set-logic LIA)
(synth-fun next ((snooze_timer Int) (cmd Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 2
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 3
			 4
			 5
			 6
			 7
			 8
			 snooze_timer
			 cmd
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

(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 1 ) 6))
(constraint (= (next 0 1 ) 6))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 1 ) 6))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 2 ) 2))
(constraint (= (next 0 2 ) 2))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 2 ) 2))
(constraint (= (next 0 1 ) 6))
(constraint (= (next 0 2 ) 2))
(constraint (= (next 0 1 ) 6))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 3 ) 1))
(constraint (= (next 0 3 ) 1))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 3 ) 1))
(constraint (= (next 0 2 ) 2))
(constraint (= (next 0 3 ) 1))
(constraint (= (next 0 1 ) 6))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 4 ) 0))
(constraint (= (next 0 4 ) 0))
(constraint (= (next 0 8 ) 3))
(constraint (= (next 1 7 ) 3))
(constraint (= (next 2 6 ) 4))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 5 ) 3))
(constraint (= (next 2 0 ) 4))
(constraint (= (next 0 4 ) 0))
(constraint (= (next 0 4 ) 0))
(constraint (= (next 0 4 ) 0))
(constraint (= (next 0 1 ) 6))
(constraint (= (next 0 4 ) 0))
(constraint (= (next 0 2 ) 2))
(constraint (= (next 0 4 ) 0))
(constraint (= (next 0 3 ) 1))
(constraint (= (next 0 4 ) 0))
(constraint (= (next 0 4 ) 0))
(constraint (= (next 0 1 ) 6))
(constraint (= (next 0 3 ) 1))
(constraint (= (next 0 0 ) 3))
(constraint (= (next 1 0 ) 3))
(constraint (= (next 2 0 ) 4))

(check-synth)
