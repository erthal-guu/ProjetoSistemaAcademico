object ModalAdicionarDisciplinas: TModalAdicionarDisciplinas
  Left = 0
  Top = 0
  Caption = 'ModalAdicionarDisciplinas'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 624
    Height = 435
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 40
    Align = alTop
    TabOrder = 0
    object LblTitulo: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 21
      Width = 616
      Height = 30
      Margins.Top = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Cadastro de Disciplinas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ExplicitWidth = 230
    end
    object EdtNome: TEdit
      AlignWithMargins = True
      Left = 31
      Top = 104
      Width = 562
      Height = 50
      Margins.Left = 30
      Margins.Top = 50
      Margins.Right = 30
      Margins.Bottom = 30
      Align = alTop
      TabOrder = 0
      TextHint = 'Digite seu Nome '
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 31
      Top = 255
      Width = 562
      Height = 79
      Margins.Left = 30
      Margins.Top = 20
      Margins.Right = 30
      Margins.Bottom = 100
      Align = alBottom
      Caption = 'Enviar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
