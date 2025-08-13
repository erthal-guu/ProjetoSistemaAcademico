unit uDisciplinasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  uDisciplinas, Data.DB, Vcl.DBGrids, uModalAdicionarDisciplina,
  System.Generics.Collections;

type
  TFrmDisciplinas = class(TForm)
    Panel1: TPanel;
    PnlButton: TPanel;
    BtnEditar: TButton;
    BtnAdicionar: TButton;
    BtnRemover: TButton;
    PnlGridDisciplinas: TPanel;
    Label1: TLabel;
    GridDisciplinas: TStringGrid;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ExcluirDisciplina;
    procedure AdicionarDisciplina;
    procedure EditarDisciplina;
    procedure InicializaListaGridDisciplinas;
    procedure AdicionaGridNoStringList;
    procedure SalvarTxt;
    procedure ConfigGraficaDisciplinasForm;
    procedure CarregaArquivoTxtNoGrid;
  end;

var
  FrmDisciplinas: TFrmDisciplinas;
  linhaAdicionada: String;
  ListaStrings: TStringList;

type
  TStringGridAcessor = class(TStringGrid);

implementation

{$R *.dfm}

procedure TFrmDisciplinas.BtnAdicionarClick(Sender: TObject);
begin
  AdicionarDisciplina;
end;

procedure TFrmDisciplinas.BtnEditarClick(Sender: TObject);
begin
  EditarDisciplina;
end;

procedure TFrmDisciplinas.BtnRemoverClick(Sender: TObject);
begin
  ExcluirDisciplina;
end;

procedure TFrmDisciplinas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvarTxt;
end;

procedure TFrmDisciplinas.FormCreate(Sender: TObject);
begin
  InicializaListaGridDisciplinas;
  ConfigGraficaDisciplinasForm;
  CarregaArquivoTxtNoGrid;
end;

procedure TFrmDisciplinas.FormResize(Sender: TObject);
begin
  BtnAdicionar.Width := 600;
  BtnRemover.Width := 600;
  BtnEditar.Width := 600;

  GridDisciplinas.ColWidths[0] := 960;
  GridDisciplinas.ColWidths[1] := 960;
end;

// Procedure para pegar os dados do grid e jogar em um TStringList
procedure TFrmDisciplinas.AdicionaGridNoStringList;
var
  i: Integer;
  linha: string;
begin
  ListaStrings := TStringList.Create;
  for i := 1 to GridDisciplinas.RowCount - 1 do
  begin
    linha := IntToStr(i) + '|' + GridDisciplinas.Cells[1, i];
    ListaStrings.Add(linha);
  end;
end;

// Procedure para adicionar uma disciplina
procedure TFrmDisciplinas.AdicionarDisciplina;
var
  disciplina: TDisciplinas;
  countLista: Integer;
  ultimoCodigoDaLista: Integer;
begin
  countLista := ListaDisciplinas.Count;
  ModalAdicionarDisciplinas.ShowModal;

  if ListaDisciplinas.Count = 0 then
    Exit;

  disciplina := ListaDisciplinas.Last;

  if countLista < ListaDisciplinas.Count then
  begin
    if disciplina.getNomeDisciplina = '' then
    begin
      ShowMessage('A disciplina não pode ser adicionada');
      Exit;
    end;

    if (GridDisciplinas.RowCount <> 2) or (GridDisciplinas.Cells[0, 1] <> '') then
      GridDisciplinas.RowCount := GridDisciplinas.RowCount + 1;

    if (GridDisciplinas.RowCount > 2) then
      ultimoCodigoDaLista := StrToIntDef(GridDisciplinas.Cells[0, GridDisciplinas.RowCount - 2], 0)
    else
      ultimoCodigoDaLista := 0;

    disciplina.setCodigo(ultimoCodigoDaLista + 1);
  end;

  linhaAdicionada := GridDisciplinas.RowCount.ToString;

  GridDisciplinas.Cells[0, GridDisciplinas.RowCount - 1] := disciplina.getCodigo.ToString;
  GridDisciplinas.Cells[1, GridDisciplinas.RowCount - 1] := disciplina.getNomeDisciplina;
end;

// Procedure para editar disciplina
procedure TFrmDisciplinas.EditarDisciplina;
begin
  if GridDisciplinas.Row = 0 then
  begin
    ShowMessage('Você não pode editar o cabeçalho.');
    Exit;
  end;

  if GridDisciplinas.Cells[1, GridDisciplinas.Row] = '' then
  begin
    ShowMessage('Não há disciplina para editar nesta linha.');
    Exit;
  end;

  GridDisciplinas.EditorMode := True;
  GridDisciplinas.Options := GridDisciplinas.Options + [goEditing];
  ShowMessage('Edição ativada para a linha ' + GridDisciplinas.Row.ToString);
end;

// Procedure para excluir disciplina
procedure TFrmDisciplinas.ExcluirDisciplina;
var
  linhaSelecionada: Integer;
begin
  linhaSelecionada := GridDisciplinas.Row;
  if linhaSelecionada = 0 then
    Exit;

  TStringGridAcessor(GridDisciplinas).DeleteRow(linhaSelecionada);
end;

// Procedure para carregar arquivo txt no grid
procedure TFrmDisciplinas.CarregaArquivoTxtNoGrid;
var
  SeparadorDeString: TStringList;
  i: Integer;
  disciplina: TDisciplinas;
begin
  ListaStrings.LoadFromFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Disciplinas.txt');

  SeparadorDeString := TStringList.Create;
  try
    SeparadorDeString.Delimiter := '|';
    SeparadorDeString.StrictDelimiter := True;

    GridDisciplinas.RowCount := ListaStrings.Count + 1;

    for i := 0 to ListaStrings.Count - 1 do
    begin
      SeparadorDeString.DelimitedText := ListaStrings[i];

      disciplina := TDisciplinas.Create;

      if SeparadorDeString.Count > 0 then
        disciplina.setCodigo(StrToIntDef(SeparadorDeString[0], 0));
      if SeparadorDeString.Count > 1 then
        disciplina.setNomeDisciplina(SeparadorDeString[1]);

      ListaDisciplinas.Add(disciplina);

      GridDisciplinas.Cells[0, i + 1] := IntToStr(disciplina.getCodigo);
      GridDisciplinas.Cells[1, i + 1] := disciplina.getNomeDisciplina;
    end;
  finally
    SeparadorDeString.Free;
  end;
end;

// Procedure para configurar a aparência do StringGrid
procedure TFrmDisciplinas.ConfigGraficaDisciplinasForm;
begin
  GridDisciplinas.RowCount := 2;
  GridDisciplinas.FixedRows := 1;

  GridDisciplinas.Cells[0, 0] := 'Código';
  GridDisciplinas.Cells[1, 0] := 'Nome';

  GridDisciplinas.ColAlignments[0] := TAlignment.taCenter;
  GridDisciplinas.ColAlignments[1] := TAlignment.taCenter;
end;

// Inicializa a TStringList
procedure TFrmDisciplinas.InicializaListaGridDisciplinas;
begin
  ListaStrings := TStringList.Create;
end;

procedure TFrmDisciplinas.Panel1Click(Sender: TObject);
begin

end;

// Salva arquivo txt
procedure TFrmDisciplinas.SalvarTxt;
begin
  AdicionaGridNoStringList;

  if (GridDisciplinas.RowCount <= 1) or (GridDisciplinas.Cells[0, 1] = '') then
  begin
    ShowMessage('Impossível salvar o arquivo de disciplinas. Não há dados na lista!');
  end
  else
  begin
    ListaStrings.SaveToFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Disciplinas.txt');
    ShowMessage('Arquivo de disciplinas salvo com sucesso!');
  end;
end;

end.

