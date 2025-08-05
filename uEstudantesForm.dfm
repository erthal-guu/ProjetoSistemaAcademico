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
    Left = 168
    Top = -48
    Width = 900
    Height = 729
    TabOrder = 0
    object Label1: TLabel
      Left = 336
      Top = 88
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
      Top = 591
      Width = 892
      Height = 77
      Margins.Bottom = 60
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object BtnEditar: TButton
        AlignWithMargins = True
        Left = 600
        Top = 10
        Width = 270
        Height = 57
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Editar'
        TabOrder = 0
      end
      object BtnRemover: TButton
        AlignWithMargins = True
        Left = 310
        Top = 10
        Width = 270
        Height = 57
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Remover'
        TabOrder = 1
      end
      object BtnAdicionar: TButton
        AlignWithMargins = True
        Left = 20
        Top = 10
        Width = 270
        Height = 57
        Margins.Left = 20
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Adicionar'
        TabOrder = 2
        OnClick = BtnAdicionarClick
      end
    end
    object PnlEdit: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 411
      Width = 892
      Height = 117
      Margins.Top = 20
      Margins.Bottom = 60
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object EdtNome: TEdit
        AlignWithMargins = True
        Left = 30
        Top = 40
        Width = 275
        Height = 37
        Margins.Left = 30
        Margins.Top = 40
        Margins.Bottom = 40
        Align = alLeft
        TabOrder = 0
        TextHint = 'Digite seu Nome..'
        ExplicitHeight = 23
      end
      object EdtCodigo: TEdit
        AlignWithMargins = True
        Left = 311
        Top = 40
        Width = 275
        Height = 37
        Margins.Top = 40
        Margins.Bottom = 40
        Align = alLeft
        NumbersOnly = True
        TabOrder = 1
        TextHint = 'Digite seu C'#243'digo...'
        ExplicitHeight = 23
      end
      object edtCPF: TEdit
        AlignWithMargins = True
        Left = 592
        Top = 40
        Width = 275
        Height = 37
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
      Left = 56
      Top = 192
      Width = 785
      Height = 169
      ColCount = 3
      FixedCols = 0
      RowCount = 2
      TabOrder = 2
    end
  end
end
