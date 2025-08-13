object FrmTurmas: TFrmTurmas
  Left = 0
  Top = 0
  Caption = 'Gerenciar Turmas'
  ClientHeight = 596
  ClientWidth = 1096
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1096
    Height = 596
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitTop = -8
    ExplicitWidth = 529
    ExplicitHeight = 466
    object GridTurmas: TStringGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1088
      Height = 457
      Margins.Bottom = 20
      Align = alClient
      DefaultColWidth = 150
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
      TabOrder = 0
      ExplicitHeight = 365
    end
    object Panel2: TPanel
      Left = 1
      Top = 481
      Width = 1094
      Height = 114
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 352
      ExplicitWidth = 527
      object BtnAdicionar: TButton
        AlignWithMargins = True
        Left = 443
        Top = 61
        Width = 250
        Height = 32
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 400
        Margins.Bottom = 20
        Align = alRight
        Caption = 'Adicionar Turma'
        TabOrder = 0
        OnClick = BtnAdicionarClick
        ExplicitLeft = 499
      end
      object BtnRemover: TButton
        AlignWithMargins = True
        Left = 401
        Top = 61
        Width = 250
        Height = 32
        Margins.Left = 400
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 20
        Align = alLeft
        Caption = 'Remover Turma'
        TabOrder = 1
        OnClick = BtnRemoverClick
        ExplicitLeft = 405
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 1
        Width = 1086
        Height = 40
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        TabOrder = 2
        ExplicitTop = 0
        ExplicitWidth = 519
        object CbProfessor: TComboBox
          AlignWithMargins = True
          Left = 401
          Top = 4
          Width = 400
          Height = 21
          Margins.Left = 400
          Align = alLeft
          TabOrder = 0
          ExplicitLeft = 417
          ExplicitTop = 2
        end
        object CbDisciplina: TComboBox
          AlignWithMargins = True
          Left = 285
          Top = 4
          Width = 400
          Height = 21
          Margins.Right = 400
          Align = alRight
          TabOrder = 1
          ExplicitLeft = 173
          ExplicitTop = 2
        end
      end
    end
  end
end
