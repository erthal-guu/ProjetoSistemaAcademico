object frmEstudantes: TfrmEstudantes
  Left = 0
  Top = 0
  Caption = 'Estudantes'
  ClientHeight = 851
  ClientWidth = 1265
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  StyleName = 'Windows'
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1265
    Height = 851
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -32
    ExplicitTop = -8
    object Label1: TLabel
      Left = 512
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
      Top = 673
      Width = 1257
      Height = 77
      Margins.Bottom = 100
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 723
      object BtnEditar: TButton
        AlignWithMargins = True
        Left = 832
        Top = 10
        Width = 385
        Height = 57
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 40
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Editar'
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        StyleName = 'Windows'
        OnClick = BtnEditarClick
      end
      object BtnAdicionar: TButton
        AlignWithMargins = True
        Left = 35
        Top = 10
        Width = 385
        Height = 57
        Margins.Left = 35
        Margins.Top = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Adicionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        StyleName = 'Windows'
        OnClick = BtnAdicionarClick
        ExplicitTop = -14
      end
      object BtnRemover: TButton
        AlignWithMargins = True
        Left = 433
        Top = 10
        Width = 385
        Height = 57
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 4
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Remover'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        StyleName = 'Windows'
        OnClick = BtnRemoverClick
        ExplicitTop = 7
      end
    end
    object GridEstudantes: TStringGrid
      AlignWithMargins = True
      Left = 41
      Top = 101
      Width = 1183
      Height = 469
      Margins.Left = 40
      Margins.Top = 100
      Margins.Right = 40
      Margins.Bottom = 100
      Align = alClient
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
      ExplicitLeft = 39
    end
  end
end
