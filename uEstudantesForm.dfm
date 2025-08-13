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
  OnResize = FormResize
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1265
    Height = 851
    Align = alBottom
    Color = clWhitesmoke
    ParentBackground = False
    TabOrder = 0
    object PnlButton: TPanel
      AlignWithMargins = True
      Left = 28
      Top = 557
      Width = 1209
      Height = 113
      Margins.Left = 27
      Margins.Top = 0
      Margins.Right = 27
      Margins.Bottom = 180
      Align = alBottom
      BevelOuter = bvNone
      Color = clInactiveCaption
      ParentBackground = False
      TabOrder = 0
      object BtnEditar: TButton
        AlignWithMargins = True
        Left = 816
        Top = 20
        Width = 385
        Height = 73
        Margins.Left = 6
        Margins.Top = 20
        Margins.Right = 10
        Margins.Bottom = 20
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
        Left = 10
        Top = 20
        Width = 385
        Height = 73
        Margins.Left = 10
        Margins.Top = 20
        Margins.Right = 10
        Margins.Bottom = 20
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
      end
      object BtnRemover: TButton
        AlignWithMargins = True
        Left = 415
        Top = 20
        Width = 385
        Height = 73
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 20
        Margins.Right = 10
        Margins.Bottom = 20
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
      end
    end
    object PnlGridEstudantes: TPanel
      AlignWithMargins = True
      Left = 28
      Top = 86
      Width = 1209
      Height = 478
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'PnlGridEstudantes'
      Color = clHotLight
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 21
        Width = 1201
        Height = 30
        Margins.Top = 20
        Margins.Bottom = 0
        Align = alTop
        Alignment = taCenter
        Caption = 'Lista de Alunos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 150
      end
      object GridEstudantes: TStringGrid
        AlignWithMargins = True
        Left = 1
        Top = 81
        Width = 1207
        Height = 396
        Margins.Left = 0
        Margins.Top = 30
        Margins.Right = 0
        Margins.Bottom = 0
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
        TabOrder = 0
        StyleName = 'Windows'
      end
    end
    object BtnVoltar: TButton
      Left = 38
      Top = 768
      Width = 123
      Height = 41
      Caption = 'BtnVoltar'
      TabOrder = 2
      OnClick = BtnVoltarClick
    end
  end
end
