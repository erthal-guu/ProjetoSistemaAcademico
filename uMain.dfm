object frmMain: TfrmMain
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'frmMain'
  ClientHeight = 850
  ClientWidth = 1115
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold, fsItalic, fsUnderline]
  TextHeight = 30
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1115
    Height = 850
    Align = alClient
    Caption = 'PnlMain'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -8
    object Label2: TLabel
      AlignWithMargins = True
      Left = 21
      Top = 21
      Width = 1073
      Height = 828
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 0
      Align = alClient
      Alignment = taCenter
      Caption = 'Tela de Sele'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 49
      ExplicitTop = 53
      ExplicitHeight = 50
    end
    object PnlContainer: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 201
      Width = 1107
      Height = 648
      Margins.Top = 200
      Margins.Bottom = 0
      Align = alClient
      Color = cl3DLight
      ParentBackground = False
      TabOrder = 0
      object BtnEstudantes: TButton
        AlignWithMargins = True
        Left = 21
        Top = 12
        Width = 1065
        Height = 55
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alBottom
        Caption = 'Estudantes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
        TabOrder = 0
        OnClick = BtnEstudantesClick
        ExplicitLeft = 117
        ExplicitTop = 18
      end
      object BtnProfessores: TButton
        AlignWithMargins = True
        Left = 21
        Top = 107
        Width = 1065
        Height = 55
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alBottom
        Caption = 'Professores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnProfessoresClick
        ExplicitTop = 214
      end
      object BtnDisciplinas: TButton
        AlignWithMargins = True
        Left = 21
        Top = 202
        Width = 1065
        Height = 55
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alBottom
        Caption = 'Disciplinas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
        TabOrder = 2
        OnClick = BtnDisciplinasClick
        ExplicitLeft = 37
        ExplicitTop = 312
      end
      object BtnTurmas: TButton
        AlignWithMargins = True
        Left = 21
        Top = 297
        Width = 1065
        Height = 55
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alBottom
        Caption = 'Turmas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
        TabOrder = 3
        OnClick = BtnTurmasClick
        ExplicitTop = 404
      end
      object BtnMatriculas: TButton
        AlignWithMargins = True
        Left = 21
        Top = 392
        Width = 1065
        Height = 55
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 200
        Align = alBottom
        Caption = 'Matriculas'
        TabOrder = 4
        OnClick = BtnMatriculasClick
        ExplicitTop = 499
      end
    end
  end
end
