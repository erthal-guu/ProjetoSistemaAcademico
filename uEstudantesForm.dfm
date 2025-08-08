object frmEstudantes: TfrmEstudantes
  Left = 0
  Top = 0
  Caption = 'Estudantes'
  ClientHeight = 851
  ClientWidth = 1208
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1208
    Height = 851
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 8
    ExplicitWidth = 1186
    object Label1: TLabel
      Left = 496
      Top = 43
      Width = 203
      Height = 40
      Caption = 'Lista de Aluno '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlButton: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 723
      Width = 1200
      Height = 77
      Margins.Bottom = 50
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 512
      ExplicitWidth = 892
      object BtnEditar: TButton
        AlignWithMargins = True
        Left = 600
        Top = 10
        Width = 275
        Height = 57
        Margins.Left = 8
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Editar'
        Default = True
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = BtnEditarClick
      end
      object BtnAdicionar: TButton
        AlignWithMargins = True
        Left = 18
        Top = 10
        Width = 275
        Height = 57
        Margins.Left = 18
        Margins.Top = 10
        Margins.Right = 8
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Adicionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnAdicionarClick
      end
      object BtnRemover: TButton
        AlignWithMargins = True
        Left = 309
        Top = 10
        Width = 275
        Height = 57
        Cursor = crHandPoint
        Margins.Left = 8
        Margins.Top = 10
        Margins.Right = 8
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Remover'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        OnClick = BtnRemoverClick
      end
    end
    object StringGrid1: TStringGrid
      AlignWithMargins = True
      Left = 4
      Top = 101
      Width = 1200
      Height = 540
      Margins.Top = 100
      Align = alClient
      BorderStyle = bsNone
      ColCount = 3
      FixedColor = clWhite
      FixedCols = 0
      RowCount = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semilight'
      Font.Style = [fsItalic]
      GradientStartColor = clCream
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goFixedColClick, goFixedRowDefAlign]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssNone
      ShowHint = False
      TabOrder = 1
      StyleName = 'Windows'
      ExplicitTop = 112
      ExplicitHeight = 389
    end
    object BtnBaixarArquivoTxt: TButton
      AlignWithMargins = True
      Left = 4
      Top = 647
      Width = 1200
      Height = 33
      Cursor = crHelp
      Margins.Bottom = 40
      Align = alBottom
      Caption = 'Baixar o Arquivo.txt'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = False
      ExplicitLeft = 23
      ExplicitWidth = 1163
    end
  end
end
