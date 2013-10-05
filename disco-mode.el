(defun disco-mode()
  (run-at-time 1 4 'random-theme)
  )

(defun random-theme()
  (disable-any-theme)
  (load-theme 
   (nth (random (length (custom-available-themes)))
	(custom-available-themes))
   )
)

(defun disable-any-theme()
  (mapcar 'disable-theme (custom-available-themes))
)

;; run disco mode to disco
(disco-mode)
