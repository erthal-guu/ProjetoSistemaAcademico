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
      Top = 75
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
      Top = 524
      Width = 892
      Height = 65
      Margins.Bottom = 110
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 512
      object BtnEditar: TButton
        AlignWithMargins = True
        Left = 610
        Top = 10
        Width = 275
        Height = 45
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Editar'
        TabOrder = 0
        OnClick = BtnEditarClick
        ExplicitLeft = 592
      end
      object BtnAdicionar: TButton
        AlignWithMargins = True
        Left = 20
        Top = 10
        Width = 275
        Height = 45
        Margins.Left = 20
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = BtnAdicionarClick
      end
      object BtnRemover: TButton
        AlignWithMargins = True
        Left = 315
        Top = 10
        Width = 275
        Height = 45
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Remover'
        TabOrder = 2
        OnClick = BtnRemoverClick
        ExplicitLeft = 240
      end
    end
    object PnlEdit: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 111
      Width = 892
      Height = 119
      Margins.Top = 110
      Margins.Bottom = 150
      Align = alTop
      BevelOuter = bvNone
      Color = clMenu
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 109
      object EdtNome: TEdit
        AlignWithMargins = True
        Left = 30
        Top = 40
        Width = 275
        Height = 39
        Margins.Left = 30
        Margins.Top = 40
        Margins.Bottom = 40
        Align = alLeft
        TabOrder = 0
        TextHint = 'Digite seu Nome..'
        ExplicitLeft = 0
      end
      object EdtCodigo: TEdit
        AlignWithMargins = True
        Left = 311
        Top = 40
        Width = 275
        Height = 39
        Margins.Top = 40
        Margins.Bottom = 40
        Align = alLeft
        NumbersOnly = True
        TabOrder = 1
        TextHint = 'Digite seu C'#243'digo...'
        ExplicitLeft = 30
      end
      object edtCPF: TEdit
        AlignWithMargins = True
        Left = 592
        Top = 40
        Width = 275
        Height = 39
        Margins.Top = 40
        Margins.Bottom = 40
        Align = alLeft
        NumbersOnly = True
        TabOrder = 2
        TextHint = 'Digite seu CPF...'
        ExplicitHeight = 23
      end
    end
    object StringGrid1: TStringGrid
      AlignWithMargins = True
      Left = 34
      Top = 218
      Width = 839
      Height = 273
      Margins.Top = 100
      Margins.Bottom = 20
      ColCount = 3
      FixedCols = 0
      RowCount = 2
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      StyleName = 'Windows'
    end
  end
end
