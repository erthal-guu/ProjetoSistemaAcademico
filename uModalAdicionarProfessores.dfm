object ModalAdicionarProfessores: TModalAdicionarProfessores
  Left = 0
  Top = 0
  Caption = 'ModalAdicionarProfessores'
  ClientHeight = 407
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 407
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 878
    ExplicitHeight = 441
    object Label1: TLabel
      Left = 312
      Top = 40
      Width = 231
      Height = 30
      Caption = 'Cadastro de Professores'
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
      Width = 835
      Height = 23
      Margins.Left = 30
      Margins.Top = 100
      Margins.Right = 30
      Margins.Bottom = 20
      Align = alTop
      TabOrder = 0
      TextHint = 'Digite seu Nome '
      ExplicitWidth = 816
    end
    object edtCPF: TEdit
      AlignWithMargins = True
      Left = 31
      Top = 164
      Width = 835
      Height = 23
      Margins.Left = 30
      Margins.Top = 20
      Margins.Right = 30
      Margins.Bottom = 20
      Align = alTop
      NumbersOnly = True
      TabOrder = 1
      TextHint = 'Digite seu CPF'
      ExplicitWidth = 816
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 21
      Top = 267
      Width = 855
      Height = 79
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 60
      Align = alBottom
      Caption = 'Enviar'
      TabOrder = 2
      ExplicitTop = 301
      ExplicitWidth = 836
    end
  end
end
