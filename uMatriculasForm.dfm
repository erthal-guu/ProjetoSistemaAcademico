object FrmMatriculas: TFrmMatriculas
  Left = 0
  Top = 0
  Caption = 'FrmMatriculas'
  ClientHeight = 723
  ClientWidth = 1089
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1089
    Height = 723
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 8
    object CbTurma: TComboBox
      Left = 40
      Top = 44
      Width = 250
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object BtnAdicionar: TButton
      Left = 352
      Top = 35
      Width = 100
      Height = 40
      Caption = 'Adicionar'
      TabOrder = 1
      OnClick = BtnAdicionarClick
    end
    object GridMatriculas: TStringGrid
      AlignWithMargins = True
      Left = 40
      Top = 100
      Width = 1009
      Height = 523
      Margins.Left = 40
      Margins.Top = 100
      Margins.Right = 40
      Margins.Bottom = 100
      Align = alClient
      ColCount = 4
      DefaultColWidth = 150
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 2
      ExplicitWidth = 1049
    end
    object BtnRemover: TButton
      Left = 662
      Top = 35
      Width = 100
      Height = 40
      Caption = 'Remover'
      TabOrder = 3
      OnClick = BtnRemoverClick
    end
    object BtnEditar: TButton
      Left = 973
      Top = 35
      Width = 100
      Height = 40
      Caption = 'Editar'
      TabOrder = 4
      OnClick = BtnRemoverClick
    end
  end
end
