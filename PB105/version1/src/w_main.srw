$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_1 from commandbutton within w_main
end type
type sle_text from singlelineedit within w_main
end type
type sle_blocksize from singlelineedit within w_main
end type
type st_1 from statictext within w_main
end type
type st_2 from statictext within w_main
end type
type p_1 from picture within w_main
end type
end forward

global type w_main from window
integer width = 1998
integer height = 1496
boolean titlebar = true
string title = "PowerBuilder QRCode API Generator"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
sle_text sle_text
sle_blocksize sle_blocksize
st_1 st_1
st_2 st_2
p_1 p_1
end type
global w_main w_main

type prototypes
Subroutine MakeQRCode(string ucData, long nDataLen,long nErrLevel,long nMask, integer nBarEdition,  string szBmpFileName, long nScale) library "MakeQRBarcode.dll" alias for "Make;Ansi"
end prototypes
on w_main.create
this.cb_1=create cb_1
this.sle_text=create sle_text
this.sle_blocksize=create sle_blocksize
this.st_1=create st_1
this.st_2=create st_2
this.p_1=create p_1
this.Control[]={this.cb_1,&
this.sle_text,&
this.sle_blocksize,&
this.st_1,&
this.st_2,&
this.p_1}
end on

on w_main.destroy
destroy(this.cb_1)
destroy(this.sle_text)
destroy(this.sle_blocksize)
destroy(this.st_1)
destroy(this.st_2)
destroy(this.p_1)
end on

type cb_1 from commandbutton within w_main
integer x = 1591
integer y = 140
integer width = 334
integer height = 104
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Generator"
end type

event clicked;String ls_file,ls_text

ls_text = sle_text.text
ls_file = 'C:\barcode.bmp'
filedelete(ls_file)
p_1.picturename = ""

MakeQRCode(ls_text, LenA(ls_text), 1, 0, 0, ls_file,dec(sle_blocksize.text))

p_1.picturename = ls_file
end event

type sle_text from singlelineedit within w_main
integer x = 379
integer y = 40
integer width = 1541
integer height = 88
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "https://programmingmethodsit.com"
borderstyle borderstyle = stylelowered!
end type

type sle_blocksize from singlelineedit within w_main
integer x = 379
integer y = 144
integer width = 283
integer height = 88
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "5"
borderstyle borderstyle = stylelowered!
boolean righttoleft = true
end type

type st_1 from statictext within w_main
integer x = 82
integer y = 156
integer width = 297
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Blocksize:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_2 from statictext within w_main
integer x = 82
integer y = 44
integer width = 297
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Text:"
alignment alignment = right!
boolean focusrectangle = false
end type

type p_1 from picture within w_main
integer x = 82
integer y = 288
integer width = 1842
integer height = 1068
boolean originalsize = true
boolean focusrectangle = false
end type

