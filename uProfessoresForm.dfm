object FrmProfessores: TFrmProfessores
  Left = 0
  Top = 0
  Caption = 'Cadastro de Professores'
  ClientHeight = 801
  ClientWidth = 1271
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
    Top = 0
    Width = 1271
    Height = 801
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object PnlGridProfessores: TPanel
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 1255
      Height = 556
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 8
        Top = 8
        Width = 1239
        Height = 32
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alTop
        Alignment = taCenter
        Caption = 'Lista de Professores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = -128
      end
      object GridProfessores: TStringGrid
        AlignWithMargins = True
        Left = 8
        Top = 56
        Width = 1239
        Height = 492
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        ColCount = 3
        DefaultRowHeight = 28
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goRowSelect]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitLeft = 9
      end
    end
    object PnlButton: TPanel
      AlignWithMargins = True
      Left = 8
      Top = 572
      Width = 1255
      Height = 221
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alBottom
      BevelOuter = bvLowered
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object BtnAdicionar: TButton
        AlignWithMargins = True
        Left = 16
        Top = 81
        Width = 400
        Height = 59
        Margins.Left = 15
        Margins.Top = 80
        Margins.Right = 8
        Margins.Bottom = 80
        Align = alLeft
        Caption = 'Adicionar Professor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BtnAdicionarClick
        ExplicitTop = 16
        ExplicitHeight = 189
      end
      object BtnRemover: TButton
        AlignWithMargins = True
        Left = 432
        Top = 81
        Width = 400
        Height = 59
        Cursor = crHandPoint
        Margins.Left = 8
        Margins.Top = 80
        Margins.Right = 8
        Margins.Bottom = 80
        Align = alLeft
        Caption = 'Remover Professor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 16
        ExplicitHeight = 189
      end
      object BtnEditar: TButton
        AlignWithMargins = True
        Left = 848
        Top = 81
        Width = 400
        Height = 59
        Margins.Left = 8
        Margins.Top = 80
        Margins.Right = 15
        Margins.Bottom = 80
        Align = alLeft
        Caption = 'Editar Professor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BtnEditarClick
        ExplicitTop = 16
        ExplicitHeight = 189
      end
    end
  end
end
