object ProfessoresForm: TProfessoresForm
  Left = 0
  Top = 0
  Caption = 'ProfessoresForm'
  ClientHeight = 801
  ClientWidth = 1271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = -50
    Width = 1271
    Height = 851
    Align = alBottom
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 528
      Top = 28
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
      Left = 28
      Top = 567
      Width = 1215
      Height = 113
      Margins.Left = 27
      Margins.Right = 27
      Margins.Bottom = 170
      Align = alBottom
      BevelOuter = bvNone
      Color = clLightslategray
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 41
      ExplicitTop = 631
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
      end
    end
    object PnlGridEstudantes: TPanel
      AlignWithMargins = True
      Left = 20
      Top = 96
      Width = 1209
      Height = 481
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'PnlGridEstudantes'
      Color = clLightsteelblue
      ParentBackground = False
      TabOrder = 1
      object GridEstudantes: TStringGrid
        AlignWithMargins = True
        Left = 21
        Top = 31
        Width = 1167
        Height = 419
        Margins.Left = 20
        Margins.Top = 30
        Margins.Right = 20
        Margins.Bottom = 30
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
        TabOrder = 0
        StyleName = 'Windows'
        ExplicitLeft = 29
        ExplicitTop = 5
      end
    end
  end
end
