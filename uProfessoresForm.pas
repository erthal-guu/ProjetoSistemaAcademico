unit uProfessoresForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  System.Generics.Collections, uProfessores;
type
  TProfessoresForm = class(TForm)
    Panel1: TPanel;
    PnlButton: TPanel;
    BtnEditar: TButton;
    BtnAdicionar: TButton;
    BtnRemover: TButton;
    PnlGridProfessores: TPanel;
    Label1: TLabel;
    GridProfessores: TStringGrid;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
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
  frmProfessores: TProfessoresForm;
  linhaAdicionada: String;
  ListaStrings: TStringList;

type
  TStringGridAcessor = class(TStringGrid);

implementation

uses
  uModalAdicionarProfessores; // somente no implementation para evitar circularidade

{$R *.dfm}

procedure TProfessoresForm.BtnAdicionarClick(Sender: TObject);
begin
  AdicionarProfessor;
end;

procedure TProfessoresForm.BtnEditarClick(Sender: TObject);
begin
  EditarProfessor;
end;

procedure TProfessoresForm.BtnRemoverClick(Sender: TObject);
begin
  ExcluirProfessor;
end;

procedure TProfessoresForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvarTxt;
end;

procedure TProfessoresForm.FormCreate(Sender: TObject);
begin
  InicializaListaGridProfessores;
  ConfigGraficaProfessoresForm;
  CarregaArquivoTxtNoGrid;
end;

procedure TProfessoresForm.FormResize(Sender: TObject);
begin
  btnAdicionar.Width := 600;
  btnRemover.Width := 600;
  btnEditar.Width := 600;

  GridProfessores.ColWidths[0] := 620;
  GridProfessores.ColWidths[1] := 620;
  GridProfessores.ColWidths[2] := 620;

end;

procedure TProfessoresForm.AdicionaGridNoStringList;
var
  i: Integer;
  linha: string;
begin
  ListaStrings := TStringList.Create;
  for i := 1 to GridProfessores.RowCount - 1 do
  begin
    linha := IntToStr(i) + '|' + GridProfessores.Cells[1, i] + '|' +
      GridProfessores.Cells[2, i];
    ListaStrings.Add(linha);
  end;
end;

procedure TProfessoresForm.AdicionarProfessor;
var
  professor: TProfessores;
  countLista: Integer;
  ultimoCodigoDaLista: Integer;
begin
  countLista := ListaProfessores.Count;
  ModalAdicionarProfessores.ShowModal; // modal para adicionar professor

  if ListaProfessores.Count > countLista then
  begin
    professor := ListaProfessores.Last;

    if professor.getNomeProfessores = '' then
    begin
      ShowMessage('O professor não pode ser adicionado');
      Exit;
    end;

    if (GridProfessores.RowCount <> 2) or (GridProfessores.Cells[0, 1] <> '') then
      GridProfessores.RowCount := GridProfessores.RowCount + 1;

    if (GridProfessores.RowCount > 2) then
      ultimoCodigoDaLista := StrToIntDef(GridProfessores.Cells[0, GridProfessores.RowCount - 2], 0)
    else
      ultimoCodigoDaLista := 0;

    linhaAdicionada := GridProfessores.RowCount.ToString;
    GridProfessores.Cells[0, GridProfessores.RowCount - 1] := IntToStr(ultimoCodigoDaLista + 1);
    GridProfessores.Cells[1, GridProfessores.RowCount - 1] := professor.getNomeProfessores;
    GridProfessores.Cells[2, GridProfessores.RowCount - 1] := professor.getCPF;
  end;
end;

procedure TProfessoresForm.EditarProfessor;
begin
  if GridProfessores.Row = 0 then
  begin
    ShowMessage('Você não pode editar o cabeçalho.');
    Exit;
  end;
  if GridProfessores.Cells[1, GridProfessores.Row] = '' then
  begin
    ShowMessage('Não há professor para editar nesta linha.');
    Exit;
  end;
  GridProfessores.EditorMode := True;
  GridProfessores.Options := GridProfessores.Options + [goEditing];
  ShowMessage('Edição ativada para a linha ' + GridProfessores.Row.ToString);
end;

procedure TProfessoresForm.ExcluirProfessor;
var
  linhaSelecionada: Integer;
begin
  linhaSelecionada := GridProfessores.Row;
  if (linhaSelecionada = 0) or (linhaSelecionada = 1) then
    Exit;

  TStringGridAcessor(GridProfessores).DeleteRow(linhaSelecionada);
end;

procedure TProfessoresForm.CarregaArquivoTxtNoGrid;
var
  SeparadorDeString: TStringList;
  i: Integer;
  professor: TProfessores;
begin
  ListaStrings.LoadFromFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Professores.txt');

  SeparadorDeString := TStringList.Create;
  try
    SeparadorDeString.Delimiter := '|';
    SeparadorDeString.StrictDelimiter := True;

    GridProfessores.RowCount := ListaStrings.Count + 1;

    for i := 0 to ListaStrings.Count - 1 do
    begin
      SeparadorDeString.DelimitedText := ListaStrings[i];

      professor := TProfessores.Create;

      if SeparadorDeString.Count > 0 then
        professor.setNomeProfessores(SeparadorDeString[0]);
      if SeparadorDeString.Count > 1 then
        professor.setCPF(SeparadorDeString[1]);

      ListaProfessores.Add(professor);

      GridProfessores.Cells[0, i + 1] := IntToStr(i + 1);
      GridProfessores.Cells[1, i + 1] := professor.getNomeProfessores;
      GridProfessores.Cells[2, i + 1] := professor.getCPF;
    end;
  finally
    SeparadorDeString.Free;
  end;
end;

procedure TProfessoresForm.ConfigGraficaProfessoresForm;
begin
  GridProfessores.RowCount := 2;
  GridProfessores.FixedRows := 1;

  GridProfessores.Cells[0, 0] := 'Código';
  GridProfessores.Cells[1, 0] := 'Nome';
  GridProfessores.Cells[2, 0] := 'CPF';

  GridProfessores.ColWidths[0] := 100;
  GridProfessores.ColWidths[1] := 200;
  GridProfessores.ColWidths[2] := 150;

  GridProfessores.ColAlignments[0] := TAlignment.taCenter;
  GridProfessores.ColAlignments[1] := TAlignment.taCenter;
  GridProfessores.ColAlignments[2] := TAlignment.taCenter;
end;

procedure TProfessoresForm.InicializaListaGridProfessores;
begin
  ListaStrings := TStringList.Create;
end;

procedure TProfessoresForm.SalvarTxt;
begin
  AdicionaGridNoStringList;
  if (GridProfessores.RowCount <= 1) or (GridProfessores.Cells[0, 1] = '') then
  begin
    ShowMessage('Impossível salvar o arquivo, não há dados na lista!');
  end
  else
  begin
    ListaStrings.SaveToFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Professores.txt');
    ShowMessage('Arquivo de Professores salvo com sucesso!');
  end;
end;

end.

