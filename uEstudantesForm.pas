unit uEstudantesForm;

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
    GridEstudantes: TStringGrid;
    BtnRemover: TButton;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure ExcluirAluno;
    procedure AdicionarAluno;
    procedure EditarAluno;
    procedure InicializaListaGridEstudantes;
    procedure AdicionaGridNoStringList;
    procedure SalvarTxt;
    procedure ConfigGraficaEstudantesForm;
    procedure CarrgearArquivoTxtNoGrid;

  end;

var
  frmEstudantes: TfrmEstudantes;
  linhaAdicionada: String;
  Lista: TStringList;

type
  TStringGridAcessor = class(TStringGrid);

implementation

{$R *.dfm}

procedure TfrmEstudantes.BtnAdicionarClick(Sender: TObject);
begin
  AdicionarAluno;
end;

procedure TfrmEstudantes.BtnEditarClick(Sender: TObject);
begin
  EditarAluno;
end;

procedure TfrmEstudantes.BtnRemoverClick(Sender: TObject);
begin
  ExcluirAluno;
end;

procedure TfrmEstudantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvarTxt;
end;

procedure TfrmEstudantes.FormCreate(Sender: TObject);
begin
  InicializaListaGridEstudantes;
  ConfigGraficaEstudantesForm;
  CarrgearArquivoTxtNoGrid;
end;

procedure TfrmEstudantes.AdicionaGridNoStringList;
var
  i: Integer;
  linha: string;
begin
  Lista := TStringList.Create;
  for i := 1 to GridEstudantes.RowCount - 2 do begin
    linha := GridEstudantes.Cells[0, i] + '|' + GridEstudantes.Cells[1, i] + '|'
      + GridEstudantes.Cells[2, i];
    Lista.Add(linha);
  end;
end;

// Procedure da Configuração de Adicionar o Aluno
procedure TfrmEstudantes.AdicionarAluno;
var
  estudante: TEstudante;
begin
  ModalEstudantes.ShowModal;
  estudante := Alunos.Last;
  if estudante.getNomeEstudante = '' then begin
    ShowMessage('O aluno não pode ser adicionado');
    Exit;
  end;

  if (GridEstudantes.RowCount <> 2) or (GridEstudantes.Cells[0, 1] <> '') then begin
    GridEstudantes.RowCount := GridEstudantes.RowCount + 1;
  end;

  linhaAdicionada := GridEstudantes.RowCount.ToString;
  GridEstudantes.Cells[0, GridEstudantes.RowCount - 1] := estudante.getCodigo.ToString;
  GridEstudantes.Cells[1, GridEstudantes.RowCount - 1] := estudante.getNomeEstudante;
  GridEstudantes.Cells[2, GridEstudantes.RowCount - 1] := estudante.getCPF;
//Adicionar o aluno na lista

end;

// Procedure da Configuração de Editar o Aluno
procedure TfrmEstudantes.EditarAluno;
begin
  if GridEstudantes.Row = 0 then begin
    ShowMessage('Você não pode editar o cabeçalho.');
    Exit;
  end;
  if GridEstudantes.Cells[1, GridEstudantes.Row] = '' then begin
    ShowMessage('Não há aluno para editar nesta linha.');
    Exit;
  end;
  GridEstudantes.EditorMode := True;
  GridEstudantes.Options := GridEstudantes.Options + [goEditing];
  ShowMessage('Edição ativada para a linha ' + GridEstudantes.Row.ToString);
end;

// Procedure da Configuração de Excluir o Aluno
procedure TfrmEstudantes.ExcluirAluno;
begin
  var
    linhaSelecionada: Integer;

  begin
    linhaSelecionada := GridEstudantes.Row;
    if (linhaSelecionada = 0) or (linhaSelecionada = 1) then begin
      Exit;
    end;
    TStringGridAcessor(GridEstudantes).DeleteRow(linhaSelecionada);
  end;
end;
// Procedure de Carregar O Arquivo.txt no grid
procedure TfrmEstudantes.CarrgearArquivoTxtNoGrid;
 var teste : Integer;
begin
  Lista.LoadFromFile('C:\Users\Gustavo Erthal\Desktop\ProjetoSistemaAcademico\arquivos\aluno.txt');
  teste := Lista.Count;
  ShowMessage('lista ' + Lista.Count.ToString);

end;
 // Procedure das Configurações Gráficas do StringGrid
procedure TfrmEstudantes.ConfigGraficaEstudantesForm;
begin
  GridEstudantes.RowCount := 2;
  GridEstudantes.FixedRows := 1;

  GridEstudantes.Cells[0, 0] := 'Código';
  GridEstudantes.Cells[1, 0] := 'Nome';
  GridEstudantes.Cells[2, 0] := 'CPF';

  GridEstudantes.ColWidths[0] := 405;
  GridEstudantes.ColWidths[1] := 405;
  GridEstudantes.ColWidths[2] := 361;

  GridEstudantes.ColAlignments[0] := TAlignment.taCenter;
  GridEstudantes.ColAlignments[1] := TAlignment.taCenter;
  GridEstudantes.ColAlignments[2] := TAlignment.taCenter;
end;
// Inicializa a Criação da String list
procedure TfrmEstudantes.InicializaListaGridEstudantes;
begin
  Lista := TStringList.Create;
end;
// Salva o arquivo.txt
procedure TfrmEstudantes.SalvarTxt;
begin
  Lista.SaveToFile
    ('C:\Users\Gustavo Erthal\Desktop\ProjetoSistemaAcademico\arquivos\aluno.txt');
    ShowMessage('Arquivo de Alunos Baixado com Sucesso');
end;

end.
