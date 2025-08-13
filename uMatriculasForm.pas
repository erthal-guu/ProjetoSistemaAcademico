unit uMatriculasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, System.Generics.Collections,
  uEstudantes, uTurmas, uMatriculas;

type
  TFrmMatriculas = class(TForm)
    Panel1: TPanel;
    BtnAdicionar: TButton;
    CbTurma: TComboBox;
    GridMatriculas: TStringGrid;
    BtnRemover: TButton;
    BtnEditar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    procedure InicializaGrid;
    procedure CarregarListaTurmas;
    procedure CarregarCombos;
    procedure AtualizarGrid;
    procedure AdicionarMatricula;
    procedure RemoverMatricula;
    procedure SalvarArquivo;
    procedure CarregarArquivo;
  public
  end;

var
  FrmMatriculas: TFrmMatriculas;
  ListaMatriculas: TObjectList<TMatricula>;
  ListaStrings: TStringList;
  ListaTurmas: TObjectList<TTurma>;

implementation

{$R *.dfm}

procedure TFrmMatriculas.FormCreate(Sender: TObject);
begin
  ListaMatriculas := TObjectList<TMatricula>.Create;
  ListaStrings := TStringList.Create;
  ListaTurmas := TObjectList<TTurma>.Create;

  InicializaGrid;
  CarregarListaTurmas; // Carrega turmas antes do ComboBox
  CarregarCombos;
  CarregarArquivo;
end;

procedure TFrmMatriculas.FormResize(Sender: TObject);
begin
  btnAdicionar.Width :=300;
  btnRemover.Width :=300;
  btnEditar.Width := 300;

  GridMatriculas.ColWidths[0] := 620;
  GridMatriculas.ColWidths[1] := 620;
  GridMatriculas.ColWidths[2] := 620;
end;

procedure TFrmMatriculas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvarArquivo;
  ListaMatriculas.Free;
  ListaStrings.Free;
  ListaTurmas.Free;
end;

procedure TFrmMatriculas.InicializaGrid;
begin
  GridMatriculas.RowCount := 2;
  GridMatriculas.ColCount := 4;
  GridMatriculas.FixedRows := 1;

  GridMatriculas.Cells[0,0] := 'Código';
  GridMatriculas.Cells[1,0] := 'Turma';
  GridMatriculas.Cells[2,0] := 'Disciplina';
  GridMatriculas.ColWidths[0] := 80;
  GridMatriculas.ColWidths[1] := 150;
  GridMatriculas.ColWidths[2] := 150;
  GridMatriculas.ColWidths[3] := 100;
end;

procedure TFrmMatriculas.CarregarListaTurmas;
var
  dados, campos: TStringList;
  turma: TTurma;
  i: Integer;
begin
  ListaTurmas.Clear;
  dados := TStringList.Create;
  campos := TStringList.Create;
  try
    dados.LoadFromFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Turmas.txt');
    for i := 0 to dados.Count - 1 do
    begin
      campos.Delimiter := '|';
      campos.StrictDelimiter := True;
      campos.DelimitedText := dados[i];

      if campos.Count >= 3 then
      begin
        turma := TTurma.Create;
        turma.setCodigo(StrToIntDef(campos[0],0));
        turma.setCodigoDisciplina(StrToIntDef(campos[1],0));
        turma.setCodigoProfessor(StrToIntDef(campos[2],0));
        ListaTurmas.Add(turma);
      end;
    end;
  finally
    campos.Free;
    dados.Free;
  end;
end;

procedure TFrmMatriculas.CarregarCombos;
var
  i: Integer;
begin
  CbTurma.Clear;
  for i := 0 to ListaTurmas.Count - 1 do
    CbTurma.Items.AddObject(
      'Turma ' + IntToStr(TTurma(ListaTurmas[i]).getCodigo),
      ListaTurmas[i]);
end;

procedure TFrmMatriculas.AtualizarGrid;
var
  i: Integer;
  matricula: TMatricula;
  turma: TTurma;
begin
  GridMatriculas.RowCount := ListaMatriculas.Count + 1;

  for i := 0 to ListaMatriculas.Count - 1 do
  begin
    matricula := ListaMatriculas[i];

    turma := nil;
    for var t in ListaTurmas do
      if t.getCodigo = matricula.getCodigoTurma then
      begin
        turma := t;
        Break;
      end;

    GridMatriculas.Cells[0,i+1] := IntToStr(matricula.getCodigo);
    if turma <> nil then
      GridMatriculas.Cells[1,i+1] := 'Turma ' + IntToStr(turma.getCodigo)
    else
      GridMatriculas.Cells[1,i+1] := 'Desconhecida';

    GridMatriculas.Cells[2,i+1] := IntToStr(matricula.getCodigoDisciplina);
    GridMatriculas.Cells[3,i+1] := IntToStr(i+1);
  end;
end;

procedure TFrmMatriculas.AdicionarMatricula;
var
  matricula: TMatricula;
  turmaSelecionada: TTurma;
begin
  if CbTurma.ItemIndex = -1 then
  begin
    ShowMessage('Selecione uma turma!');
    Exit;
  end;

  turmaSelecionada := TTurma(CbTurma.Items.Objects[CbTurma.ItemIndex]);

  matricula := TMatricula.Create;
  if ListaMatriculas.Count > 0 then
    matricula.setCodigo(ListaMatriculas.Last.getCodigo + 1)
  else
    matricula.setCodigo(1);

  matricula.setCodigoTurma(turmaSelecionada.getCodigo);
  matricula.setCodigoDisciplina(turmaSelecionada.getCodigoDisciplina);

  ListaMatriculas.Add(matricula);
  AtualizarGrid;
  SalvarArquivo;
end;

procedure TFrmMatriculas.RemoverMatricula;
var
  linhaSelecionada: Integer;
begin
  linhaSelecionada := GridMatriculas.Row;
  if (linhaSelecionada <= 0) or (linhaSelecionada > ListaMatriculas.Count) then
  begin
    ShowMessage('Selecione uma matrícula para remover.');
    Exit;
  end;

  ListaMatriculas.Delete(linhaSelecionada - 1);
  AtualizarGrid;
  SalvarArquivo;
end;

procedure TFrmMatriculas.BtnAdicionarClick(Sender: TObject);
begin
  AdicionarMatricula;
end;

procedure TFrmMatriculas.BtnRemoverClick(Sender: TObject);
begin
  RemoverMatricula;
end;

procedure TFrmMatriculas.SalvarArquivo;
var
  i: Integer;
  matricula: TMatricula;
  linha: string;
begin
  ListaStrings.Clear;
  for i := 0 to ListaMatriculas.Count - 1 do
  begin
    matricula := ListaMatriculas[i];
    linha := IntToStr(matricula.getCodigo) + '|' +
             IntToStr(matricula.getCodigoTurma) + '|' +
             IntToStr(matricula.getCodigoDisciplina);
    ListaStrings.Add(linha);
  end;

  ListaStrings.SaveToFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Matriculas.txt');
end;

procedure TFrmMatriculas.CarregarArquivo;
var
  i: Integer;
  dados, campos: TStringList;
  matricula: TMatricula;
begin
  dados := TStringList.Create;
  campos := TStringList.Create;
  try
    dados.LoadFromFile('C:\Users\vplgu\Desktop\ProjetoSistemaAcademico\ProjetoSistemaAcademico\arquivos\Matriculas.txt');
    for i := 0 to dados.Count - 1 do
    begin
      campos.Delimiter := '|';
      campos.StrictDelimiter := True;
      campos.DelimitedText := dados[i];

      if campos.Count = 3 then
      begin
        matricula := TMatricula.Create;
        matricula.setCodigo(StrToIntDef(campos[0],0));
        matricula.setCodigoTurma(StrToIntDef(campos[1],0));
        matricula.setCodigoDisciplina(StrToIntDef(campos[2],0));
        ListaMatriculas.Add(matricula);
      end;
    end;
  finally
    campos.Free;
    dados.Free;
  end;
  AtualizarGrid;
end;

end.

