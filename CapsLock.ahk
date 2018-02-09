;o===================Base========================o
SetCapsLockState, AlwaysOff
CapsLock::return

;o===================Navigator===================o
Move(key)
{
	shiftState := GetKeyState("LShift", "P")
	altState := GetKeyState("LAlt", "P")
	ctrlState := GetKeyState("LCtrl", "P")
	if shiftState and altState and ctrlKey
	{
		Send +!^{%key%}
		return
	}
	if shiftState and altState
	{
		Send +!{%key%}
		return
	}
	if shiftState and ctrlKey
	{
		Send +^{%key%}
		return
	}
	if altState and ctrlKey
	{
		Send !^{%key%}
		return
	}
	if shiftState
	{
		Send +{%key%}
		return
	}
	if altState
	{
		Send !{%key%}
		return
	}
	if ctrlState
	{
		Send ^{%key%}
		return
	}
	else
	{
		Send {%key%}
		return
	}
}

CapsLock & u::Move("Home")
CapsLock & o::Move("End")

CapsLock & i::Move("Up")
CapsLock & k::Move("Down")
CapsLock & j::Move("Left")
CapsLock & l::Move("Right")

CapsLock & w::Send {Up}
CapsLock & s::Send {Down}
CapsLock & a::Send {Left}
CapsLock & d::Send {Right}

CapsLock & y::Send {PgUp}
CapsLock & h::Send {PgDn}

;o===================Editor======================o
CapsLock & `;::Send {BS}
CapsLock & p::Send {Del}

;o===================Others======================o
CapsLock & q::Send ^q
CapsLock & g::Send ^g
CapsLock & f::Send !f
!4::Send !{F4}

;o===================Disable=====================o
;CapsLock & a::return ;【Second←】
 CapsLock & b::return ;
 CapsLock & c::return ;
;CapsLock & d::return ;【Second→】
 CapsLock & e::return ;
;CapsLock & f::return ;【Ctrl+F】
;CapsLock & g::return ;【Ctrl+G】
;CapsLock & h::return ;【PgDn】
;CapsLock & i::return ;【First↑】
;CapsLock & j::return ;【First←】
;CapsLock & k::return ;【First↓】
;CapsLock & l::return ;【First→】
 CapsLock & m::return ;
 CapsLock & n::return ;
;CapsLock & o::return ;【End】
;CapsLock & p::return ;【Delete】
;CapsLock & q::return ;【Alt+F】
 CapsLock & r::return ;
;CapsLock & s::return ;【Second↓】
 CapsLock & t::return ;
;CapsLock & u::return ;【Home】
 CapsLock & v::return ;
;CapsLock & w::return ;【Second↑】
 CapsLock & x::return ;
;CapsLock & y::return ;【PgUp】
 CapsLock & z::return ;

 CapsLock & [::return ;
 CapsLock & ]::return ;
;CapsLock & ;::return ;【BackSpace】
 CapsLock & '::return ;
 CapsLock & ,::return ;
 CapsLock & .::return ;
 CapsLock & /::return ;