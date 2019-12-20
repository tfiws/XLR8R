Attribute VB_Name = "Module"
'Ini file path
Public INIPATH  As String

'ArrangeCursors
Public AC_SC    As String
Public AC_SHT   As String
Public AC_HOME  As String

'Highlighter
Public HL_BD    As String
Public HL_CO    As String

'SelectObjects
Public SO_SC    As String
Public SO_RNG   As String

'CopyAsBitmap
Public CB_SC    As String

'Language
Public LANG     As String

'Message
Public Const msgMultiEn As String = "Can't run this add-in on shared workbook."
Public Const msgMultiJp As String = "���L���[�N�u�b�N�ł͎��s�ł��܂���"
Public Const msgMultiKr As String = "Can't run this add-in on shared workbook."
Public Const msgOlScEn  As String = "There are overlapping shortcuts."
Public Const msgOlScJp  As String = "�d�Ȃ�V���[�g�J�b�g������܂��B"
Public Const msgOlScKr  As String = "There are overlapping shortcuts."
Public Const msgCdSttEn As String = "Press the spacebar at the start point you want."
Public Const msgCdEndEn As String = "Press the spacebar at the end point you want."
Public Const msgCdSttJp As String = "�J�n�_�̈ʒu�ŃX�y�[�X�L�[�������Ă��������B"
Public Const msgCdEndJp As String = "�I���_�̈ʒu�ŃX�y�[�X�L�[�������Ă��������B"
Public Const msgCdSttKr As String = "Press the spacebar at the start point you want."
Public Const msgCdEndKr As String = "Press the spacebar at the end point you want."
Public Const ttlCdSttEn As String = "Start point"
Public Const ttlCdEndEn As String = "End point"
Public Const ttlCdSttJp As String = "�J�n�_"
Public Const ttlCdEndJp As String = "�I���_"
Public Const ttlCdSttKr As String = "Start point"
Public Const ttlCdEndKr As String = "End point"

Public Sub PreferenceSetting()
    FormPS.Show
End Sub

Public Sub ArrangeCursors()
    Dim clsAC As ClassAC
    Set clsAC = New ClassAC
    Call clsAC.pAC
    Set clsAC = Nothing
End Sub

Public Sub Highlighter_Border()
    Dim clsHL As ClassHL
    Set clsHL = New ClassHL
    Call clsHL.pHL("bd")
    Set clsHL = Nothing
End Sub

Public Sub Highlighter_Callout()
    Dim clsHL As ClassHL
    Set clsHL = New ClassHL
    Call clsHL.pHL("co")
    Set clsHL = Nothing
End Sub

Public Sub SelectObjects()
    Dim clsSO As ClassSO
    Set clsSO = New ClassSO
    Call clsSO.pSO
    Set clsSO = Nothing
End Sub

Public Sub CopyAsBitmap()
    Dim clsCB As ClassCB
    Set clsCB = New ClassCB
    Call clsCB.pCB
    Set clsCB = Nothing
End Sub

Public Sub SwitchSheet_First()
    Dim clsSS As ClassSS
    Set clsSS = New ClassSS
    Call clsSS.pSS_F
    Set clsSS = Nothing
End Sub

Public Sub SwitchSheet_Last()
    Dim clsSS As ClassSS
    Set clsSS = New ClassSS
    Call clsSS.pSS_L
    Set clsSS = Nothing
End Sub
