VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ClassCL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'Constants by Language

Public Sub SetMsg()
    If LANG = "jp" Then
        msgMulti = "���L���[�N�u�b�N�ł͎��s�ł��܂���"
        msgOlSc = "�d�Ȃ�V���[�g�J�b�g������܂��B"
        msgCdStt = "�J�n�_�̈ʒu�ŃX�y�[�X�L�[�������Ă��������B"
        msgCdEnd = "�I���_�̈ʒu�ŃX�y�[�X�L�[�������Ă��������B"
        msgNeCll = "�Z���̎w�肪�Ԉ���Ă��܂��B"
        msgExRow = "���͒l���ő�s���𒴂��Ă��܂��B"
        msgExCol = "���͒l���ő�񐔂𒴂��Ă��܂��B"
        ttlCdStt = "�J�n�_"
        ttlCdEnd = "�I���_"
    Else
        msgMulti = "Can't run this add-in on shared workbook."
        msgOlSc = "There are overlapping shortcuts."
        msgCdStt = "Press the spacebar at the start point you want."
        msgCdEnd = "Press the spacebar at the end point you want."
        msgNeCll = "Invalid cell format."
        msgExRow = "Input exceeded maximum row."
        msgExCol = "Input exceeded maximum column."
        ttlCdStt = "Start point"
        ttlCdEnd = "End point"
    End If
End Sub