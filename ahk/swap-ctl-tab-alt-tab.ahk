Ctrl & Tab::AltTab

!Tab::
	i++
	if i > 20
		i = 1
	Send {CTRLDOWN}%i%{CTRLUP}
return

!+Tab::
	i--
	if i < 1
		i = 1
	Send {CTRLDOWN}%i%{CTRLUP}
return