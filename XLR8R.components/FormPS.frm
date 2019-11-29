VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} FormPS 
   Caption         =   "Preference Setting"
   ClientHeight    =   3240
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4665
   OleObjectBlob   =   "FormPS.frx":0000
   StartUpPosition =   1  '�I�[�i�[ �t�H�[���̒���
End
Attribute VB_Name = "FormPS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnCancel_Click()
    Unload FormPS
End Sub

Private Sub btnDefault_Click()
    'ArrangeCursors
    chkAcSc.Value = True
    txtAcSc.Value = "A"
    optAcCs.Value = True
    optAcA1.Value = True
    
    'Highlighter
    chkHlSc.Value = True
    txtHlSc.Value = "D"
    optHlBd.Value = True
    
    'SelectObjects
    chkSoSc.Value = True
    txtSoSc.Value = "S"
    optSoSl.Value = True
    
    'CopyAsBitmap
    chkCbSc.Value = True
    txtCbSc.Value = "C"
    
End Sub

Private Sub btnOK_Click()
    Dim ClsPS As ClassPS
    Set ClsPS = New ClassPS
    
    Call ClsPS.SetSC(AC_SC, "")
    Call ClsPS.SetSC(HL_SC, "")
    Call ClsPS.SetSC(SO_SC, "")
    Call ClsPS.SetSC(CB_SC, "")
    
    AC_SC = txtAcSc.Value
    HL_SC = txtHlSc.Value
    SO_SC = txtSoSc.Value
    CB_SC = txtCbSc.Value

    Call ClsPS.SetSC(AC_SC, "ArrangeCursors")
    Call ClsPS.SetSC(HL_SC, "Highlighter")
    Call ClsPS.SetSC(SO_SC, "SelectObjects")
    Call ClsPS.SetSC(CB_SC, "CopyAsBitmap")
    
    If optAcFs.Value Then
        AC_SHT = "fs"
    Else
        AC_SHT = "cs"
    End If
    
    AC_HOME = txtAcCstm.Value
    
    If optHlCo.Value Then
        HL_SHP = "co"
    Else
        HL_SHP = "bd"
    End If
    
    If optSoCd.Value Then
        SO_RNG = "cd"
    Else
        SO_RNG = "sl"
    End If
    
    Call ClsPS.WriteINI("ArrangeCursors", "AC_SC", AC_SC)
    Call ClsPS.WriteINI("ArrangeCursors", "AC_SHT", AC_SHT)
    Call ClsPS.WriteINI("ArrangeCursors", "AC_HOME", AC_HOME)
    Call ClsPS.WriteINI("Highlighter", "HL_SC", HL_SC)
    Call ClsPS.WriteINI("Highlighter", "HL_SHP", HL_SHP)
    Call ClsPS.WriteINI("SelectObjects", "SO_SC", SO_SC)
    Call ClsPS.WriteINI("SelectObjects", "SO_RNG", SO_RNG)
    Call ClsPS.WriteINI("CopyAsBitmap", "CB_SC", CB_SC)

    Set ClsPS = Nothing
    
    Unload FormPS
End Sub

Private Sub chkAcSc_Change()
    If chkAcSc.Value Then
        txtAcSc.Enabled = True
        If MultiPage.Value = 0 Then
            txtAcSc.SetFocus
        End If
    Else
        txtAcSc.Enabled = False
        txtAcSc.Value = ""
    End If
End Sub

Private Sub chkCbSc_Change()
    If chkCbSc.Value Then
        txtCbSc.Enabled = True
        If MultiPage.Value = 3 Then
            txtCbSc.SetFocus
        End If
    Else
        txtCbSc.Enabled = False
        txtCbSc.Value = ""
    End If
End Sub

Private Sub chkHlSc_Change()
    If chkHlSc.Value Then
        txtHlSc.Enabled = True
        If MultiPage.Value = 1 Then
            txtHlSc.SetFocus
        End If
    Else
        txtHlSc.Enabled = False
        txtHlSc.Value = ""
    End If
End Sub

Private Sub chkSoSc_Change()
    If chkSoSc.Value Then
        txtSoSc.Enabled = True
        If MultiPage.Value = 2 Then
            txtSoSc.SetFocus
        End If
    Else
        txtSoSc.Enabled = False
        txtSoSc.Value = ""
    End If
End Sub

Private Sub optAcCstm_Change()
    If optAcCstm.Value Then
        txtAcCstm.Enabled = True
        If MultiPage.Value = 0 Then
            txtAcCstm.SetFocus
        End If
    Else
        txtAcCstm.Enabled = False
        txtAcCstm.Value = ""
    End If
End Sub

Private Sub txtAcCstm_Change()
    txtAcCstm.Value = UCase(txtAcCstm.Value)
End Sub

Private Sub txtAcSc_Change()
    txtAcSc.Value = UCase(txtAcSc.Value)
End Sub

Private Sub txtCbSc_Change()
    txtCbSc.Value = UCase(txtCbSc.Value)
End Sub

Private Sub txtHlSc_Change()
    txtHlSc.Value = UCase(txtHlSc.Value)
End Sub

Private Sub txtSoSc_Change()
    txtSoSc.Value = UCase(txtSoSc.Value)
End Sub

Private Sub UserForm_Initialize()
    '********************************
    'ArrangeCursor
    '********************************
    If AC_SC = "" Then
        chkAcSc.Value = False
        txtAcSc.Enabled = False
    Else
        chkAcSc.Value = True
    End If
    txtAcSc.Value = AC_SC
    If AC_SHT = "fs" Then
        optAcFs.Value = True
        optAcCs.Value = False
    Else
        optAcFs.Value = False
        optAcCs.Value = True
    End If
    If AC_HOME = "" Then
        optAcA1.Value = True
        optAcCstm.Value = False
        txtAcCstm.Enabled = False
    Else
        optAcA1.Value = False
        optAcCstm.Value = True
    End If
    txtAcCstm.Value = AC_HOME
    
    '********************************
    'Highligher
    '********************************
    If HL_SC = "" Then
        chkHlSc.Value = False
        txtHlSc.Enabled = False
    Else
        chkHlSc.Value = True
    End If
    txtHlSc.Value = HL_SC
    If HL_SHP = "co" Then
        optHlBd.Value = False
        optHlCo.Value = True
    Else
        optHlBd.Value = True
        optHlCo.Value = False
    End If
    
    '********************************
    'SelectObjects
    '********************************
    If SO_SC = "" Then
        chkSoSc.Value = False
        txtSoSc.Enabled = False
    Else
        chkSoSc.Value = True
    End If
    txtSoSc.Value = SO_SC
    If SO_RNG = "cd" Then
        optSoSl.Value = False
        optSoCd.Value = True
    Else
        optSoSl.Value = True
        optSoCd.Value = False
    End If
    
    '********************************
    'CopyAsBitmap
    '********************************
    If CB_SC = "" Then
        chkCbSc.Value = False
        txtCbSc.Enabled = False
    Else
        chkCbSc.Value = True
    End If
    txtCbSc.Value = CB_SC
    
End Sub