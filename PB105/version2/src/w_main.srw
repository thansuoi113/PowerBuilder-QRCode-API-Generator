$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type em_scale from editmask within w_main
end type
type em_bordersize from editmask within w_main
end type
type em_errcorlvl from editmask within w_main
end type
type st_5 from statictext within w_main
end type
type htb_scale from htrackbar within w_main
end type
type st_4 from statictext within w_main
end type
type htb_bordersize from htrackbar within w_main
end type
type st_3 from statictext within w_main
end type
type htb_errcorlvl from htrackbar within w_main
end type
type sle_text from singlelineedit within w_main
end type
type st_2 from statictext within w_main
end type
type st_1 from statictext within w_main
end type
type sle_filename from singlelineedit within w_main
end type
type p_1 from picture within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 2606
integer height = 1796
boolean titlebar = true
string title = "PowerBuilder QRCode API Generator"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
em_scale em_scale
em_bordersize em_bordersize
em_errcorlvl em_errcorlvl
st_5 st_5
htb_scale htb_scale
st_4 st_4
htb_bordersize htb_bordersize
st_3 st_3
htb_errcorlvl htb_errcorlvl
sle_text sle_text
st_2 st_2
st_1 st_1
sle_filename sle_filename
p_1 p_1
cb_1 cb_1
end type
global w_main w_main

on w_main.create
this.em_scale=create em_scale
this.em_bordersize=create em_bordersize
this.em_errcorlvl=create em_errcorlvl
this.st_5=create st_5
this.htb_scale=create htb_scale
this.st_4=create st_4
this.htb_bordersize=create htb_bordersize
this.st_3=create st_3
this.htb_errcorlvl=create htb_errcorlvl
this.sle_text=create sle_text
this.st_2=create st_2
this.st_1=create st_1
this.sle_filename=create sle_filename
this.p_1=create p_1
this.cb_1=create cb_1
this.Control[]={this.em_scale,&
this.em_bordersize,&
this.em_errcorlvl,&
this.st_5,&
this.htb_scale,&
this.st_4,&
this.htb_bordersize,&
this.st_3,&
this.htb_errcorlvl,&
this.sle_text,&
this.st_2,&
this.st_1,&
this.sle_filename,&
this.p_1,&
this.cb_1}
end on

on w_main.destroy
destroy(this.em_scale)
destroy(this.em_bordersize)
destroy(this.em_errcorlvl)
destroy(this.st_5)
destroy(this.htb_scale)
destroy(this.st_4)
destroy(this.htb_bordersize)
destroy(this.st_3)
destroy(this.htb_errcorlvl)
destroy(this.sle_text)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_filename)
destroy(this.p_1)
destroy(this.cb_1)
end on

type em_scale from editmask within w_main
event ue_change pbm_enchange
integer x = 1984
integer y = 568
integer width = 343
integer height = 100
integer taborder = 30
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "4"
borderstyle borderstyle = stylelowered!
string mask = "####"
boolean spin = true
double increment = 1
string minmax = "1~~100"
end type

event ue_change;htb_scale.Position = Long(text)

end event

event modified;htb_scale.Position = Long(text)

end event

type em_bordersize from editmask within w_main
event ue_change pbm_enchange
integer x = 1984
integer y = 412
integer width = 343
integer height = 100
integer taborder = 20
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "4"
borderstyle borderstyle = stylelowered!
string mask = "####"
boolean spin = true
double increment = 1
string minmax = "1~~100"
end type

event ue_change;htb_bordersize.Position = Long(text)

end event

event modified;htb_bordersize.Position = Long(text)

end event

type em_errcorlvl from editmask within w_main
event ue_change pbm_enchange
integer x = 1984
integer y = 256
integer width = 343
integer height = 100
integer taborder = 20
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "1"
borderstyle borderstyle = stylelowered!
string mask = "#"
boolean spin = true
double increment = 1
string minmax = "0~~3"
end type

event ue_change;htb_errcorlvl.Position = Long(text)

end event

event modified;htb_errcorlvl.Position = Long(text)

end event

type st_5 from statictext within w_main
integer x = 128
integer y = 568
integer width = 343
integer height = 52
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "scale (0-100)"
alignment alignment = right!
boolean focusrectangle = false
end type

type htb_scale from htrackbar within w_main
integer x = 489
integer y = 568
integer width = 1467
integer height = 136
integer maxposition = 100
integer position = 4
integer tickfrequency = 10
end type

event moved;em_scale.Text =String(Position)
end event

type st_4 from statictext within w_main
integer x = 59
integer y = 412
integer width = 434
integer height = 52
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "borderSize ( 0-100)"
alignment alignment = right!
boolean focusrectangle = false
end type

type htb_bordersize from htrackbar within w_main
integer x = 489
integer y = 412
integer width = 1467
integer height = 136
integer maxposition = 100
integer position = 4
integer tickfrequency = 10
end type

event moved;em_bordersize.Text =String(Position)
end event

type st_3 from statictext within w_main
integer x = 128
integer y = 256
integer width = 343
integer height = 52
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "errCorLvl (0-3)"
alignment alignment = right!
boolean focusrectangle = false
end type

type htb_errcorlvl from htrackbar within w_main
integer x = 489
integer y = 256
integer width = 1467
integer height = 136
integer maxposition = 3
integer position = 1
integer tickfrequency = 1
end type

event moved;em_errcorlvl.Text =String(Position)
end event

type sle_text from singlelineedit within w_main
integer x = 489
integer y = 152
integer width = 1467
integer height = 92
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_main
integer x = 128
integer y = 172
integer width = 343
integer height = 52
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Text to code"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_main
integer x = 128
integer y = 68
integer width = 343
integer height = 52
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "File Name"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_filename from singlelineedit within w_main
integer x = 489
integer y = 48
integer width = 1467
integer height = 92
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "qrcode.bmp"
borderstyle borderstyle = stylelowered!
end type

type p_1 from picture within w_main
integer x = 165
integer y = 744
integer width = 631
integer height = 636
boolean originalsize = true
boolean border = true
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_main
integer x = 1989
integer y = 52
integer width = 503
integer height = 184
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Generate QRCode"
end type

event clicked;nv_qrcode lnv_qrcode
Long ll_retval

p_1.PictureName = ''

ll_retval = lnv_qrcode.get_qr_code_bitmap(sle_filename.Text, sle_text.Text, htb_errCorLvl.Position, htb_borderSize.Position,  htb_scale.Position)
If ll_retval = 0 Then
	p_1.PictureName = sle_filename.Text
End If

end event

