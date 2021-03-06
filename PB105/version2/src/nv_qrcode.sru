$PBExportHeader$nv_qrcode.sru
forward
global type nv_qrcode from nonvisualobject
end type
end forward

global type nv_qrcode from nonvisualobject autoinstantiate
end type

type prototypes
FUNCTION Long CreateBmpFile(string fileName, string text, long errCorLvl, long borderSize, long scale) LIBRARY "QRCodeGenLibrary.dll"
end prototypes

forward prototypes
public function long get_qr_code_bitmap (string as_filename, string as_text, long al_errcorlvl, long al_bordersize, long al_scale)
public function long get_qr_code_bitmap_simple (string as_filename, string as_text)
end prototypes

public function long get_qr_code_bitmap (string as_filename, string as_text, long al_errcorlvl, long al_bordersize, long al_scale);// The function creates a BITMAP file with a QR code (the version of the QR code is selected automatically from 1 to 40) (Mask Pattern is selected automatically)
// Options:
// fileName Path and name of the file to be created (C: \ Temp \ qrCode.bmp) (UTF-16 encoding)
// text Text to encode (1-4096) (Limited to 4096 characters) (UTF-16 encoding)
// errCorLvl Error correction level (0-4).
// QR code has a special mechanism to increase the reliability of encrypted information storage.
// For codes created with the highest level of reliability, up to 30% of the surface can be damaged or erased,
// but they will save information and be read correctly.
// Increasing the level helps to increase the reliability of information storage,
// but leads to an increase in the size of the matrix code.
// 0 - Low (Allowable percentage of violations is about 7%)
// 1 - Medium (Allowable percentage of violations is about 15%)
// 2 - Quartile (Allowable percentage of violations is about 25%)
// 3 - High (Allowable percentage of violations is about 30%)
// borderSize Size of the white border around in modules (limited to 0-100)
// scale Unit size in pixels (limited to 1-100)
//
// Returned value:
// 0 - Successful execution
// 1 - Error fileName, or incorrect path, or error opening file
// 2 - Error text, incorrect length of the encoded text
// 3 - Error errCorLvl, wrong level of error correction
// 4 - Error borderSize, wrong border size
// 5 - Error scale, incorrect module size
// 6 - Error converting the encoding of the encoded text from UTF-16 to UTF-8 (the buffer for UTF-8 is also 4096 characters and it may not be enough)
// 7 - Error receiving QR code
return CreateBmpFile(as_fileName, as_text, al_errCorLvl, al_borderSize, al_scale);
 



 
end function

public function long get_qr_code_bitmap_simple (string as_filename, string as_text);return get_qr_code_bitmap(as_fileName, as_text, 1, 4, 4);
 
end function

on nv_qrcode.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nv_qrcode.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

