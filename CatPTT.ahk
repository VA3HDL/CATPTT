#InstallKeybdHook
myMode := 0
MyOmniRig := ComObjCreate("{0839E8C6-ED30-4950-8087-966F970F0CAE}")
return

;Wheel button down
MButton::
	;MyOmniRig := ComObjCreate("{0839E8C6-ED30-4950-8087-966F970F0CAE}")
	MyOmniRig.Rig1.Tx := 0x00400000
	;ObjRelease(MyOmniRig)
return

;Wheel button up
MButton up::
	;MyOmniRig := ComObjCreate("{0839E8C6-ED30-4950-8087-966F970F0CAE}")
	Sleep, 300
	MyOmniRig.Rig1.Tx := 0x00200000
	;ObjRelease(MyOmniRig)
return

SC125::
	;MyOmniRig := ComObjCreate("{0839E8C6-ED30-4950-8087-966F970F0CAE}")
	MyOmniRig.Rig1.Tx := 0x00400000
	;ObjRelease(MyOmniRig)
return

SC125 up::
	;MyOmniRig := ComObjCreate("{0839E8C6-ED30-4950-8087-966F970F0CAE}")
	Sleep, 300
	MyOmniRig.Rig1.Tx := 0x00200000
	;ObjRelease(MyOmniRig)
return

SC126::
	;MyOmniRig := ComObjCreate("{0839E8C6-ED30-4950-8087-966F970F0CAE}")
        myMode := MyOmniRig.Rig1.Mode
        MyOmniRig.Rig1.Mode := 0x40000000
        MyOmniRig.Rig1.Tx := 0x00400000
	;ObjRelease(MyOmniRig)      
return

SC126 up::
	;MyOmniRig := ComObjCreate("{0839E8C6-ED30-4950-8087-966F970F0CAE}")
	MyOmniRig.Rig1.Tx := 0x00200000
	Sleep, 200
        if (MyOmniRig.Rig1.Mode <> myMode){
          MyOmniRig.Rig1.Mode := myMode
        }
	;ObjRelease(MyOmniRig)
return

Launch_App2:: 
	;MyOmniRig := ComObjCreate("{0839E8C6-ED30-4950-8087-966F970F0CAE}")
	MyOmniRig.Rig1.Tx := 0x00400000
	;ObjRelease(MyOmniRig)
return

Launch_App2 up::
	;MyOmniRig := ComObjCreate("{0839E8C6-ED30-4950-8087-966F970F0CAE}")
	Sleep, 300
	MyOmniRig.Rig1.Tx := 0x00200000
	;ObjRelease(MyOmniRig)
return
