object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 851
  ClientWidth = 1186
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
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
      ExplicitLeft = 21
      ExplicitTop = 611
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
        ExplicitLeft = 555
        ExplicitTop = 3
        ExplicitHeight = 122
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
        ExplicitLeft = 279
        ExplicitTop = 0
        ExplicitHeight = 122
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
        ExplicitTop = 7
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
      ExplicitTop = 388
      object EdtCodigo: TEdit
        AlignWithMargins = True
        Left = 475
        Top = 40
        Width = 312
        Height = 37
        Margins.Top = 40
        Margins.Right = 40
        Margins.Bottom = 40
        Align = alLeft
        TabOrder = 1
        Text = 'Digite seu C'#243'digo...'
        TextHint = 'Digite seu C'#243'digo...'
        ExplicitLeft = 555
        ExplicitTop = -56
        ExplicitHeight = 60
      end
      object EdtNome: TEdit
        AlignWithMargins = True
        Left = 120
        Top = 40
        Width = 312
        Height = 37
        Margins.Left = 120
        Margins.Top = 40
        Margins.Right = 40
        Margins.Bottom = 40
        Align = alLeft
        TabOrder = 0
        Text = 'Digite seu Nome...'
        TextHint = 'Digite seu Nome...'
        ExplicitTop = 34
      end
    end
    object StringGrid1: TStringGrid
      AlignWithMargins = True
      Left = 21
      Top = 161
      Width = 858
      Height = 241
      Margins.Left = 20
      Margins.Top = 160
      Margins.Right = 20
      Align = alTop
      ColCount = 2
      RowCount = 2
      TabOrder = 2
      ExplicitLeft = 4
      ExplicitTop = 144
      ExplicitWidth = 892
    end
  end
end
