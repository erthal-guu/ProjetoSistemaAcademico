object frmEstudantes: TfrmEstudantes
  Left = 0
  Top = 0
  Caption = 'Estudantes'
  ClientHeight = 851
  ClientWidth = 1186
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 152
    Top = 24
    Width = 900
    Height = 700
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 336
      Top = 139
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
      Top = 512
      Width = 892
      Height = 77
      Margins.Bottom = 110
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = -12
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
        ExplicitLeft = 586
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
        ExplicitLeft = 20
        ExplicitTop = 19
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
        ExplicitLeft = 299
      end
    end
    object StringGrid1: TStringGrid
      AlignWithMargins = True
      Left = 22
      Top = 228
      Width = 857
      Height = 273
      Margins.Top = 100
      Margins.Bottom = 20
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
    end
  end
end
