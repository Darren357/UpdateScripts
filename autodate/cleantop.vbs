'example: cleantop file.txt
'http://www.vbsedit.com/scripts/misc/text/scr_1278.asp

'input arg
strFileName  =  WScript.Arguments.Item(0)
Const FOR_READING = 1
Const FOR_WRITING = 2

'I only use this on one file, so you could make the 3 an input arg.
iNumberOfLinesToDelete = 3
Set objFS = CreateObject("Scripting.FileSystemObject")
Set objTS = objFS.OpenTextFile(strFileName, FOR_READING)
strContents = objTS.ReadAll
objTS.Close

arrLines = Split(strContents, vbNewLine)
Set objTS = objFS.OpenTextFile(strFileName, FOR_WRITING)

For i=0 To UBound(arrLines)
   If i > (iNumberOfLinesToDelete - 1) Then
      objTS.WriteLine arrLines(i)
   End If
Next