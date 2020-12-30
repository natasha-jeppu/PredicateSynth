(set-logic LIA)
(synth-fun next ((ip Int) (op Int) ) Int
	((Start Int) (StartBool Bool))
	((Start Int (
				 (+ Start Start)						
				 (- Start Start)						
				 (* Start Start)						
				 (- Start)
				 ip
				 op
				 5
				 1
				 0
				 1
				 5
				 (ite StartBool Start Start)))

	 (StartBool Bool (
					 (>= Start Start)						
					 (<= Start Start)						
					 (and StartBool StartBool)			
					 (or  StartBool StartBool)				
					 (not StartBool)))))

(declare-var ip Int)
(declare-var op Int)


(constraint (= (next (- 1) 2 ) 1))
(constraint (= (next (- 1) 1 ) 0))
(constraint (= (next (- 1) 0 ) (- 1)))
(constraint (= (next (- 1) (- 1) ) (- 2)))

(check-synth)
