unit uTurmasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  System.Generics.Collections,
  uTurmas, uDisciplinas, uProfessores;

type
  TFrmTurmas = class(TForm)
    Panel1: TPanel;
    GridTurmas: TStringGrid;
    BtnRemover: TButton;
    Panel2: TPanel;
    CbProfessor: TComboBox;
    CbDisciplina: TComboBox;
    BtnAdicionar: TButton;
    BtnEditarTurma: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    procedure InicializaGrid;
    procedure CarregarCombos;
    procedure AtualizarGrid;
    procedure AdicionarTurma;
    procedure EditarTurma;
    procedure ExcluirTurma;
    procedure SalvarArquivo;
    procedure CarregarArquivo;
    procedure CarregarListaProfessores;
    procedure CarregarListaDisciplinas;

  public
  end;

var
  FrmTurmas: TFrmTurmas;
  ListaTurmas: TObjectList<TTurma>;
  ListaStrings: TStringList;

implementation

{$R *.dfm}

procedure TFrmTurmas.FormCreate(Sender: TObject);
begin
  ListaTurmas := TObjectList<TTurma>.Create;
  ListaStrings := TStringList.Create;

  InicializaGrid;
  CarregarListaProfessores;
  CarregarListaDisciplinas;
  CarregarCombos;
  CarregarArquivo;

end;

procedure TFrmTurmas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvarArquivo;
  ListaTurmas.Free;
  ListaStrings.Free;
end;

procedure TFrmTurmas.InicializaGrid;
begin
  GridTurmas.RowCount := 2;
  GridTurmas.ColCount := 4; // Código Turma, Disciplina, Professor, Código Interno

  GridTurmas.FixedRows := 1;
  GridTurmas.FixedCols := 0;

  GridTurmas.Cells[0, 0] := 'Código Turma';
  GridTurmas.Cells[1, 0] := 'Disciplina';
  GridTurmas.Cells[2, 0] := 'Professor';

  GridTurmas.ColWidths[0] := 100;
  GridTurmas.ColWidths[1] := 200;
  GridTurmas.ColWidths[2] := 200;
  GridTurmas.ColWidths[3] := 100;

  GridTurmas.ColAlignments[0] := taCenter;
  GridTurmas.ColAlignments[1] := taCenter;
  GridTurmas.ColAlignments[2] := taCenter;
  GridTurmas.ColAlignments[3] := taCenter;
end;

procedure TFrmTurmas.CarregarCombos;
var
  i: Integer;
begin
  CbDisciplina.Clear;
  for i := 0 to ListaDisciplinas.Count - 1 do
    CbDisciplina.Items.AddObject(
      TDisciplinas(ListaDisciplinas[i]).getNomeDisciplina,
      ListaDisciplinas[i]);

  CbProfessor.Clear;
  for i := 0 to ListaProfessores.Count - 1 do
    CbProfessor.Items.AddObject(
      TProfessores(ListaProfessores[i]).getNomeProfessores,
      ListaProfessores[i]);
end;

procedure TFrmTurmas.AtualizarGrid;
var
  i: Integer;
  turma: TTurma;
  disciplinaNome, professorNome: string;
  disciplina: TDisciplinas;
  professor: TProfessores;
begin
  GridTurmas.RowCount := ListaTurmas.Count + 1;
  for i := 0 to ListaTurmas.Count - 1 do
  begin
    turma := ListaTurmas[i];

    // procura disciplina
    disciplinaNome := '';
    for disciplina in ListaDisciplinas do
      if disciplina.getCodigo = turma.getCodigoDisciplina then
      begin
        disciplinaNome := disciplina.getNomeDisciplina;
        Break;
      end;

    // procura professor
    professorNome := '';
    for professor in ListaProfessores do
      if professor.getCPF = IntToStr(turma.getCodigoProfessor) then
      begin
        professorNome := professor.getNomeProfessores;
        Break;
      end;

    GridTurmas.Cells[0, i + 1] := IntToStr(turma.getCodigo);
    GridTurmas.Cells[1, i + 1] := disciplinaNome;
    GridTurmas.Cells[2, i + 1] := professorNome;
    GridTurmas.Cells[3, i + 1] := IntToStr(turma.getCodigo);
  end;
end;

procedure TFrmTurmas.AdicionarTurma;
var
  turma: TTurma;
  ultimoCodigo: Integer;
  disciplinaSelecionada: TDisciplinas;
  professorSelecionado: TProfessores;
begin
  if (CbDisciplina.ItemIndex = -1) or (CbProfessor.ItemIndex = -1) then
  begin
    ShowMessage('Selecione disciplina e professor!');
    Exit;
  end;

  disciplinaSelecionada := TDisciplinas(CbDisciplina.Items.Objects[CbDisciplina.ItemIndex]);
  professorSelecionado := TProfessores(CbProfessor.Items.Objects[CbProfessor.ItemIndex]);

  turma := TTurma.Create;

  if ListaTurmas.Count > 0 then
    ultimoCodigo := ListaTurmas.Last.getCodigo + 1
  else
    ultimoCodigo := 1;

  turma.setCodigo(ultimoCodigo);
  turma.setCodigoDisciplina(disciplinaSelecionada.getCodigo);
  turma.setCodigoProfessor(StrToIntDef(professorSelecionado.getCPF, 0));

  ListaTurmas.Add(turma);

  AtualizarGrid;
end;

procedure TFrmTurmas.EditarTurma;
var
  linhaSelecionada: Integer;
  turma: TTurma;
  disciplinaSelecionada: TDisciplinas;
  professorSelecionado: TProfessores;
begin
  linhaSelecionada := GridTurmas.Row;
  if (linhaSelecionada <= 0) or (linhaSelecionada > ListaTurmas.Count) then
  begin
    ShowMessage('Selecione uma turma válida para editar.');
    Exit;
  end;

  turma := ListaTurmas[linhaSelecionada - 1];

  if (CbDisciplina.ItemIndex = -1) or (CbProfessor.ItemIndex = -1) then
  begin
    ShowMessage('Selecione disciplina e professor para editar!');
    Exit;
  end;

  disciplinaSelecionada := TDisciplinas(CbDisciplina.Items.Objects[CbDisciplina.ItemIndex]);
  professorSelecionado := TProfessores(CbProfessor.Items.Objects[CbProfessor.ItemIndex]);

  turma.setCodigoDisciplina(disciplinaSelecionada.getCodigo);
  turma.setCodigoProfessor(StrToIntDef(professorSelecionado.getCPF, 0));

  AtualizarGrid;
end;

procedure TFrmTurmas.ExcluirTurma;
var
  linhaSelecionada: Integer;
begin
  linhaSelecionada := GridTurmas.Row;
  if (linhaSelecionada <= 0) or (linhaSelecionada > ListaTurmas.Count) then
  begin
    ShowMessage('Selecione uma turma para excluir.');
    Exit;
  end;

  ListaTurmas.Delete(linhaSelecionada - 1);
  AtualizarGrid;
end;

procedure TFrmTurmas.BtnAdicionarClick(Sender: TObject);
begin
  AdicionarTurma;
end;

procedure TFrmTurmas.BtnEditarClick(Sender: TObject);
begin
  EditarTurma;
end;

procedure TFrmTurmas.BtnRemoverClick(Sender: TObject);
begin
  ExcluirTurma;
end;


procedure TFrmTurmas.SalvarArquivo;
var
  i: Integer;
  turma: TTurma;
  linha: string;
begin
  ListaStrings.Clear;
  for i := 0 to ListaTurmas.Count - 1 do
  begin
    turma := ListaTurmas[i];
    linha := turma.getCodigo.ToString + '|' +
             turma.getCodigoDisciplina.ToString + '|' +
             turma.getCodigoProfessor.ToString;
    ListaStrings.Add(linha);
  end;

  ListaStrings.SaveToFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Turmas.txt');
  ShowMessage('Dados salvos com sucesso');
end;

procedure TFrmTurmas.CarregarArquivo;
var
  i: Integer;
  dados: TStringList;
  campos: TStringList;
  turma: TTurma;
begin
  dados := TStringList.Create;
  campos := TStringList.Create;
  try
    ListaTurmas.Clear;
    dados.LoadFromFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Turmas.txt');
    for i := 0 to dados.Count - 1 do
    begin
      campos.Delimiter := '|';
      campos.StrictDelimiter := True;
      campos.DelimitedText := dados[i];

      turma := TTurma.Create;
      if campos.Count > 0 then
        turma.setCodigo(StrToIntDef(campos[0], 0));
      if campos.Count > 1 then
        turma.setCodigoDisciplina(StrToIntDef(campos[1], 0));
      if campos.Count > 2 then
        turma.setCodigoProfessor(StrToIntDef(campos[2], 0));

      ListaTurmas.Add(turma);
    end;
  finally
    campos.Free;
    dados.Free;
  end;
end;
procedure TFrmTurmas.CarregarListaProfessores;
var
  dados, campos: TStringList;
  i: Integer;
  professor: TProfessores;
begin
  ListaProfessores.Clear;
  dados := TStringList.Create;
  campos := TStringList.Create;
  try
    dados.LoadFromFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Professores.txt');
    for i := 0 to dados.Count - 1 do
    begin
      campos.Delimiter := '|';
      campos.StrictDelimiter := True;
      campos.DelimitedText := dados[i];

      professor := TProfessores.Create;
      if campos.Count > 0 then professor.setCPF(campos[0]);
      if campos.Count > 1 then professor.setNomeProfessores(campos[1]);

      ListaProfessores.Add(professor);
    end;
  finally
    campos.Free;
    dados.Free;
  end;
end;

procedure TFrmTurmas.CarregarListaDisciplinas;
var
  dados, campos: TStringList;
  i: Integer;
  disciplina: TDisciplinas;
begin
  ListaDisciplinas.Clear;
  dados := TStringList.Create;
  campos := TStringList.Create;
  try
    dados.LoadFromFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Disciplinas.txt');
    for i := 0 to dados.Count - 1 do
    begin
      campos.Delimiter := '|';
      campos.StrictDelimiter := True;
      campos.DelimitedText := dados[i];

      disciplina := TDisciplinas.Create;
      if campos.Count > 0 then disciplina.setCodigo(StrToIntDef(campos[0], 0));
      if campos.Count > 1 then disciplina.setNomeDisciplina(campos[1]);

      ListaDisciplinas.Add(disciplina);
    end;
  finally
    campos.Free;
    dados.Free;
  end;
end;


procedure TFrmTurmas.FormResize(Sender: TObject);
begin
  BtnAdicionar.Width :=100;
  BtnEditarTurma.Width := 100;
  BtnRemover.Width := 100;

  GridTurmas.ColWidths[0] := 640;
  GridTurmas.ColWidths[1] := 640;
  GridTurmas.ColWidths[2] := 640;

  CbDisciplina.Width := 400;
  CbProfessor.Width := 400;
end;

end.

