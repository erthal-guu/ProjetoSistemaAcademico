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
  Position = poDesktopCenter
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
      Height = 23
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
      Top = 164
      Width = 671
      Height = 23
      Margins.Left = 30
      Margins.Top = 20
      Margins.Right = 30
      Margins.Bottom = 20
      Align = alTop
      NumbersOnly = True
      TabOrder = 1
      TextHint = 'Digite seu CPF'
    end
    object EdtCodigo: TEdit
      AlignWithMargins = True
      Left = 31
      Top = 227
      Width = 671
      Height = 23
      Margins.Left = 30
      Margins.Top = 20
      Margins.Right = 30
      Align = alTop
      NumbersOnly = True
      TabOrder = 2
      TextHint = 'Digite seu C'#243'digo'
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 21
      Top = 330
      Width = 691
      Height = 65
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alBottom
      Caption = 'Enviar'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
end
