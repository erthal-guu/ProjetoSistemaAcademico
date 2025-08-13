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
    Left = 152
    Top = 32
    Width = 800
    Height = 665
    Caption = 'PnlMain'
    TabOrder = 0
    object Label2: TLabel
      AlignWithMargins = True
      Left = 21
      Top = 21
      Width = 758
      Height = 50
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Tela de Sele'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 266
    end
    object PnlContainer: TPanel
      Left = 56
      Top = 112
      Width = 700
      Height = 489
      Color = cl3DLight
      ParentBackground = False
      TabOrder = 0
      object BtnEstudantes: TButton
        AlignWithMargins = True
        Left = 21
        Top = 33
        Width = 658
        Height = 55
        Margins.Left = 20
        Margins.Top = 20
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
      end
      object BtnProfessores: TButton
        AlignWithMargins = True
        Left = 21
        Top = 128
        Width = 658
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
      end
      object BtnDisciplinas: TButton
        AlignWithMargins = True
        Left = 21
        Top = 223
        Width = 658
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
      end
      object BtnTurmas: TButton
        AlignWithMargins = True
        Left = 21
        Top = 318
        Width = 658
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
      end
      object BtnMatriculas: TButton
        AlignWithMargins = True
        Left = 21
        Top = 413
        Width = 658
        Height = 55
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alBottom
        Caption = 'Matriculas'
        TabOrder = 4
      end
    end
  end
end
