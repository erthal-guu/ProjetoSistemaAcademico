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
    Left = 160
    Top = -56
    Width = 900
    Height = 729
    TabOrder = 0
    object Label1: TLabel
      Left = 304
      Top = 96
      Width = 305
      Height = 22
      Caption = 'Label1'
    end
    object ListBox1: TListBox
      AlignWithMargins = True
      Left = 21
      Top = 121
      Width = 858
      Height = 233
      Margins.Left = 20
      Margins.Top = 120
      Margins.Right = 20
      Align = alTop
      ItemHeight = 15
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 89
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
      TabOrder = 1
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
        ExplicitTop = 7
      end
    end
    object PnlEdit: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 328
      Width = 892
      Height = 140
      Margins.Bottom = 120
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 297
      object EdtCodigo: TEdit
        AlignWithMargins = True
        Left = 475
        Top = 40
        Width = 312
        Height = 60
        Margins.Top = 40
        Margins.Right = 40
        Margins.Bottom = 40
        Align = alLeft
        TabOrder = 1
        Text = 'Digite seu C'#243'digo...'
        TextHint = 'Digite seu C'#243'digo...'
        ExplicitLeft = 555
        ExplicitTop = -56
      end
      object EdtNome: TEdit
        AlignWithMargins = True
        Left = 120
        Top = 40
        Width = 312
        Height = 60
        Margins.Left = 120
        Margins.Top = 40
        Margins.Right = 40
        Margins.Bottom = 40
        Align = alLeft
        TabOrder = 0
        Text = 'Digite seu Nome...'
        TextHint = 'Digite seu Nome...'
        ExplicitLeft = 60
      end
    end
  end
end
