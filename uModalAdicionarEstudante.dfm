object ModalEstudantes: TModalEstudantes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ModalEstudantes'
  ClientHeight = 185
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = -8
    Top = 0
    Width = 330
    Height = 198
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 241
      Height = 15
      Caption = 'Digite a senha Correta para excluir o aluno.'
    end
    object Edit1: TEdit
      Left = 24
      Top = 88
      Width = 241
      Height = 23
      TabOrder = 0
    end
    object Button1: TButton
      Left = 24
      Top = 136
      Width = 241
      Height = 25
      Caption = 'Enviar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
