unit uEstudantesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  uEstudantes, Data.DB, Vcl.DBGrids, uModalAdicionarEstudante;

type
  TfrmEstudantes = class(TForm)
    Panel1: TPanel;
    PnlButton: TPanel;
    BtnEditar: TButton;
    BtnAdicionar: TButton;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    BtnRemover: TButton;
    BtnBaixarArquivoTxt: TButton;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ExcluirAluno;
    procedure AdicionarAluno;
    procedure EditarAluno;
    procedure InicializarGridEstudantes;

  end;

var
  frmEstudantes: TfrmEstudantes;
  linhaAdicionada: String;

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

procedure TfrmEstudantes.FormCreate(Sender: TObject);
begin
  InicializarGridEstudantes;
end;

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

  linhaAdicionada := StringGrid1.RowCount.ToString;

  StringGrid1.Cells[0, StringGrid1.RowCount - 1] :=
    estudante.getCodigo.ToString;
  StringGrid1.Cells[1, StringGrid1.RowCount - 1] := estudante.getNomeEstudante;
  StringGrid1.Cells[2, StringGrid1.RowCount - 1] := estudante.getCPF;
  StringGrid1.RowCount := StringGrid1.RowCount + 1;
end;

procedure TfrmEstudantes.EditarAluno;
begin
  if StringGrid1.Row = 0 then begin
    ShowMessage('Você não pode editar o cabeçalho.');
    Exit;
  end;

  if StringGrid1.Cells[1, StringGrid1.Row] = '' then begin
    ShowMessage('Não há aluno para editar nesta linha.');
    Exit;
  end;

  StringGrid1.EditorMode := True;
  StringGrid1.Options := StringGrid1.Options + [goEditing];

  ShowMessage('Edição ativada para a linha ' + StringGrid1.Row.ToString);
end;

procedure TfrmEstudantes.ExcluirAluno;
begin
  var
    linhaSelecionada: Integer;

  begin
    linhaSelecionada := StringGrid1.Row;
    if linhaSelecionada = 0 then begin
      ShowMessage('Você não pode excluir a primeira linha');
    end;
    TStringGridAcessor(StringGrid1).DeleteRow(linhaSelecionada);
  end;
end;

procedure TfrmEstudantes.InicializarGridEstudantes;
begin
  StringGrid1.RowCount := 2;
  StringGrid1.FixedRows := 1;

  StringGrid1.Cells[0, 0] := 'Código';
  StringGrid1.Cells[1, 0] := 'Nome';
  StringGrid1.Cells[2, 0] := 'CPF';

  StringGrid1.ColWidths[0] := 285;
  StringGrid1.ColWidths[1] := 285;
  StringGrid1.ColWidths[2] := 285;

  StringGrid1.ColAlignments[0] := TAlignment.taCenter;
  StringGrid1.ColAlignments[1] := TAlignment.taCenter;
  StringGrid1.ColAlignments[2] := TAlignment.taCenter;

end;

end.
