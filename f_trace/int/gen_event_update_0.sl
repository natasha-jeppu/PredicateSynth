(set-logic LIA)
(synth-fun next ((f Bool) (ssm Int) (fresh Bool) (valid Bool) (count_f Int) ) Int
	((Start Int) (StartBool Bool))
	((Start Int (
				 (+ Start Start)						
				 (- Start Start)						
				 (* Start Start)						
				 (- Start)
				 ssm
				 count_f
				 0
				 1
				 (ite StartBool Start Start)))

	 (StartBool Bool (
				 	 f
				 	 fresh
				 	 valid
					 (>= Start Start)						
					 (<= Start Start)						
					 (and StartBool StartBool)			
					 (or  StartBool StartBool)				
					 (not StartBool)))))

(declare-var f Bool)
(declare-var ssm Int)
(declare-var fresh Bool)
(declare-var valid Bool)
(declare-var count_f Int)


(constraint (= (next false 2 false false 0 ) 1))
(constraint (= (next false 1 false false 1 ) 1))
(constraint (= (next false 1 true false 1 ) 1))

(check-synth)