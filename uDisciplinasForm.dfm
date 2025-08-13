object FrmDisciplinas: TFrmDisciplinas
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'FrmDisciplinas'
  ClientHeight = 794
  ClientWidth = 1116
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 8
    Width = 1116
    Height = 786
    Align = alBottom
    Color = clWhitesmoke
    ParentBackground = False
    TabOrder = 0
    OnClick = Panel1Click
    object PnlButton: TPanel
      AlignWithMargins = True
      Left = 28
      Top = 492
      Width = 1060
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
      ExplicitTop = 557
      ExplicitWidth = 64
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
    object PnlGridDisciplinas: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 1114
      Height = 491
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Caption = 'PnlGridDisciplinas'
      Color = clHotLight
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 118
      ExplicitHeight = 556
      object Label1: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 21
        Width = 1106
        Height = 30
        Margins.Top = 20
        Margins.Bottom = 0
        Align = alTop
        Alignment = taCenter
        Caption = 'Lista de Disciplinas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 185
      end
      object GridDisciplinas: TStringGrid
        AlignWithMargins = True
        Left = 9
        Top = 59
        Width = 1096
        Height = 423
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        DefaultColWidth = 150
        FixedCols = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 100
        ExplicitHeight = 488
      end
    end
  end
end
