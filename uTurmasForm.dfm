object FrmTurmas: TFrmTurmas
  Left = 0
  Top = 0
  Caption = 'Gerenciar Turmas'
  ClientHeight = 596
  ClientWidth = 1096
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1096
    Height = 596
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object GridTurmas: TStringGrid
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 1080
      Height = 451
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      DefaultColWidth = 150
      FixedCols = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
      ParentFont = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 0
      Top = 467
      Width = 1096
      Height = 129
      Align = alBottom
      BevelOuter = bvNone
      Color = clWindow
      ParentBackground = False
      TabOrder = 1
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 8
        Top = 8
        Width = 1080
        Height = 45
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alTop
        BevelOuter = bvLowered
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object CbProfessor: TComboBox
          AlignWithMargins = True
          Left = 11
          Top = 11
          Width = 520
          Height = 23
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Selecione o Professor...'
        end
        object CbDisciplina: TComboBox
          AlignWithMargins = True
          Left = 549
          Top = 11
          Width = 520
          Height = 23
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Selecione a Disciplina...'
        end
      end
      object BtnRemover: TButton
        AlignWithMargins = True
        Left = 284
        Top = 69
        Width = 260
        Height = 40
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 20
        Align = alLeft
        Caption = 'Remover Turma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnRemoverClick
        ExplicitLeft = 8
      end
      object BtnAdicionar: TButton
        AlignWithMargins = True
        Left = 8
        Top = 69
        Width = 260
        Height = 40
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 20
        Align = alLeft
        Caption = 'Adicionar Turma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BtnAdicionarClick
        ExplicitLeft = -68
      end
      object BtnEditarTurma: TButton
        AlignWithMargins = True
        Left = 560
        Top = 69
        Width = 260
        Height = 40
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 20
        Align = alLeft
        Caption = 'Editar Turma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = BtnEditarClick
        ExplicitLeft = 552
      end
    end
  end
end
