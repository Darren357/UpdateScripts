'example: cscript replacescript.vbs html.txt "old string" "new string" >> newfile
'I had to use this instead of a .bat file because my string has special chars.
'http://stackoverflow.com/questions/1115508/batch-find-and-edit-lines-in-txt-file
'input args

strfile =  WScript.Arguments.Item(0)
stroldline = WScript.Arguments.Item(1)
strnewline = WScript.Arguments.Item(2)

Set objFS = CreateObject("Scripting.FileSystemObject")
Set objFile = objFS.OpenTextFile(strFile)

'Search & Destroy
Do Until objFile.AtEndOfStream
    strLine = objFile.ReadLine
    If InStr(strLine,stroldline)> 0 Then
    	strLine = Replace(strLine,stroldline,strnewline)
    End If
Loop