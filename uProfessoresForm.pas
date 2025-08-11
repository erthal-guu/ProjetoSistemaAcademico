unit uProfessoresForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  uEstudantes, Data.DB, Vcl.DBGrids, uModalAdicionarEstudante,
  System.Generics.Collections;

type
  TfrmEstudantes = class(TForm)
    Panel1: TPanel;
    PnlButton: TPanel;
    BtnEditar: TButton;
    BtnAdicionar: TButton;
    Label1: TLabel;
    BtnRemover: TButton;
    PnlGridEstudantes: TPanel;
    GridEstudantes: TStringGrid;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure ExcluirProfessor;
    procedure AdicionarProfessor;
    procedure EditarProfessor;
    procedure InicializaListaGridProfessores;
    procedure AdicionaGridNoStringList;
    procedure SalvarTxt;
    procedure ConfigGraficaProfessoresForm;
    procedure CarregaArquivoTxtNoGrid;
  end;

var
  frmEstudantes: TfrmEstudantes;
  linhaAdicionada: String;
  ListaStrings: TStringList;

type
  TStringGridAcessor = class(TStringGrid);

implementation

{$R *.dfm}

procedure TfrmEstudantes.BtnAdicionarClick(Sender: TObject);
begin
  AdicionarProfessor;
end;

procedure TfrmEstudantes.BtnEditarClick(Sender: TObject);
begin
  EditarProfessor;
end;

procedure TfrmEstudantes.BtnRemoverClick(Sender: TObject);
begin
  ExcluirProfessor;
end;

procedure TfrmEstudantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvarTxt;
end;

procedure TfrmEstudantes.FormCreate(Sender: TObject);
begin
  InicializaListaGridProfessores;
  ConfigGraficaProfessoresForm;
  CarregaArquivoTxtNoGrid;
end;
// Procedure Usada para pegas os dados do grid e jogar para um Stringlist
procedure TfrmEstudantes.AdicionaGridNoStringList;
var
  i: Integer;
  linha: string;
begin
  ListaStrings := TStringList.Create;
  for i := 1 to GridEstudantes.RowCount - 1 do
  begin
    linha := IntToStr(i) + '|' + GridEstudantes.Cells[1, i] + '|' +
      GridEstudantes.Cells[2, i];
    ListaStrings.Add(linha);
  end;
end;

// Procedure da Configuração de Adicionar o Aluno
procedure TfrmEstudantes.AdicionarProfessor;
var
  estudante: TEstudante;
  countLista: Integer;
  i, ultimoCodigoDaLista: Integer;
begin
  countLista := ListaEstudantes.Count;
  ModalEstudantes.ShowModal;
  estudante := ListaEstudantes.Last;
  if countLista < ListaEstudantes.Count then
  begin
    if estudante.getNomeEstudante = '' then
    begin
      ShowMessage('O aluno não pode ser adicionado');
      Exit;
    end;

    if (GridEstudantes.RowCount <> 2) or (GridEstudantes.Cells[0, 1] <> '') then
    begin
      GridEstudantes.RowCount := GridEstudantes.RowCount + 1;
    end;

    if (GridEstudantes.RowCount > 2) then
      ultimoCodigoDaLista :=
        StrToIntDef(GridEstudantes.Cells[0, GridEstudantes.RowCount - 2], 0);

    estudante.setCodigo(ultimoCodigoDaLista + 1);
  end;

  linhaAdicionada := GridEstudantes.RowCount.ToString;

  GridEstudantes.Cells[0, GridEstudantes.RowCount - 1] :=
    estudante.getCodigo.ToString;
  GridEstudantes.Cells[1, GridEstudantes.RowCount - 1] :=
    estudante.getNomeEstudante;
  GridEstudantes.Cells[2, GridEstudantes.RowCount - 1] := estudante.getCPF;

  estudante.setCodigo(ListaEstudantes.Last.getCodigo + 1);
end;

// Procedure da Configuração de Editar o Aluno
procedure TfrmEstudantes.EditarProfessor;
begin
  if GridEstudantes.Row = 0 then
  begin
    ShowMessage('Você não pode editar o cabeçalho.');
    Exit;
  end;

  if GridEstudantes.Cells[1, GridEstudantes.Row] = '' then
  begin
    ShowMessage('Não há aluno para editar nesta linha.');
    Exit;
  end;

  GridEstudantes.EditorMode := True;
  GridEstudantes.Options := GridEstudantes.Options + [goEditing];
  ShowMessage('Edição ativada para a linha ' + GridEstudantes.Row.ToString);
end;

// Procedure da Configuração de Excluir o Aluno
procedure TfrmEstudantes.ExcluirProfessor;
var
  linhaSelecionada: Integer;
begin
  linhaSelecionada := GridEstudantes.Row;
  if (linhaSelecionada = 0) or (linhaSelecionada = 1) then
    Exit;

  TStringGridAcessor(GridEstudantes).DeleteRow(linhaSelecionada);
end;

// Procedure de Carregar O Arquivo.txt no grid
procedure TfrmEstudantes.CarregaArquivoTxtNoGrid;
var
  SeparadorDeString: TStringList;
  i: Integer;
  estudante: TEstudante;
begin
  ListaStrings.LoadFromFile
    ('C:\Users\Gustavo Erthal\Desktop\ProjetoSistemaAcademico\arquivos\Alunos.txt');

  SeparadorDeString := TStringList.Create;
  SeparadorDeString.Delimiter := '|';
  SeparadorDeString.StrictDelimiter := True;

  GridEstudantes.RowCount := ListaStrings.Count + 1;

  for i := 0 to ListaStrings.Count - 1 do
  begin
    SeparadorDeString.DelimitedText := ListaStrings[i];

    estudante := TEstudante.Create;

    if SeparadorDeString.Count > 0 then
      estudante.setCodigo(StrToIntDef(SeparadorDeString[0], 0));
    if SeparadorDeString.Count > 1 then
      estudante.setNomeEstudante(SeparadorDeString[1]);
    if SeparadorDeString.Count > 2 then
      estudante.setCPF(SeparadorDeString[2]);

    ListaEstudantes.Add(estudante);

    GridEstudantes.Cells[0, i + 1] := IntToStr(estudante.getCodigo);
    GridEstudantes.Cells[1, i + 1] := estudante.getNomeEstudante;
    GridEstudantes.Cells[2, i + 1] := estudante.getCPF;
  end;

  SeparadorDeString.Free;
end;

// Procedure das Configurações Gráficas do StringGrid
procedure TfrmEstudantes.ConfigGraficaProfessoresForm;
begin
  GridEstudantes.RowCount := 2;
  GridEstudantes.FixedRows := 1;

  GridEstudantes.Cells[0, 0] := 'Código';
  GridEstudantes.Cells[1, 0] := 'Nome';
  GridEstudantes.Cells[2, 0] := 'CPF';

  GridEstudantes.ColWidths[0] := 405;
  GridEstudantes.ColWidths[1] := 405;
  GridEstudantes.ColWidths[2] := 367;

  GridEstudantes.ColAlignments[0] := TAlignment.taCenter;
  GridEstudantes.ColAlignments[1] := TAlignment.taCenter;
  GridEstudantes.ColAlignments[2] := TAlignment.taCenter;
end;

// Inicializa a Criação da String list
procedure TfrmEstudantes.InicializaListaGridProfessores;
begin
  ListaStrings := TStringList.Create;
end;

// Salva o arquivo.txt
procedure TfrmEstudantes.SalvarTxt;
begin
  AdicionaGridNoStringList;

  if (GridEstudantes.RowCount <= 1) or (GridEstudantes.Cells[0, 1] = '') then
  begin
    ShowMessage('Impossivel baixar o Arquivo de Alunos, Não a dados na lista !');
  end
  else
  begin
    ListaStrings.SaveToFile('C:\Users\Gustavo Erthal\Desktop\ProjetoSistemaAcademico\arquivos\Alunos.txt');
    ShowMessage('Arquivo de Alunos Baixado com Sucesso !');
  end;
end;

end.

