object ModalEstudantes: TModalEstudantes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ModalEstudantes'
  ClientHeight = 416
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDefaultSizeOnly
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 733
    Height = 416
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 256
      Top = 40
      Width = 190
      Height = 30
      Caption = 'Cadastro de Alunos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object EdtNome: TEdit
      AlignWithMargins = True
      Left = 31
      Top = 101
      Width = 671
      Height = 40
      Margins.Left = 30
      Margins.Top = 100
      Margins.Right = 30
      Margins.Bottom = 20
      Align = alTop
      TabOrder = 0
      TextHint = 'Digite seu Nome '
    end
    object edtCPF: TEdit
      AlignWithMargins = True
      Left = 31
      Top = 181
      Width = 671
      Height = 40
      Margins.Left = 30
      Margins.Top = 20
      Margins.Right = 30
      Margins.Bottom = 20
      Align = alTop
      NumbersOnly = True
      TabOrder = 1
      TextHint = 'Digite seu CPF'
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 21
      Top = 276
      Width = 691
      Height = 79
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 60
      Align = alBottom
      Caption = 'Enviar'
      TabOrder = 2
      OnClick = Button1Click
      ExplicitLeft = 31
      ExplicitTop = 292
    end
  end
end
