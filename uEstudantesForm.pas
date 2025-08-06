unit uEstudantesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  uEstudantes, Data.DB, Vcl.DBGrids,uModalAdicionarEstudante;

type
  TfrmEstudantes = class(TForm)
    Panel1: TPanel;
    PnlButton: TPanel;
    BtnEditar: TButton;
    BtnAdicionar: TButton;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    BtnRemover: TButton;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ExcluirAluno;
    procedure AdicionarAluno(estudante: TEstudante);
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
  ModalEstudantes.Show;
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

procedure TfrmEstudantes.AdicionarAluno(estudante: TEstudante);
begin
  linhaAdicionada := StringGrid1.RowCount.ToString;
  if Estudante.getNomeEstudante = '' then begin
    ShowMessage(' O aluno não pode ser adicionado');
  end;
  Estudante := TEstudante.Create;
  Estudante.NomeEstudante := Estudante.getNomeEstudante;
  Estudante.setCodigo(Estudante.getCodigo);
  Estudante.setCPF(Estudante.getCPF);
  StringGrid1.Cells[0, linhaAdicionada.ToInteger] := Estudante.getCodigo.ToString;
  StringGrid1.Cells[1, linhaAdicionada.ToInteger] := Estudante.getNomeEstudante;
  StringGrid1.Cells[2, linhaAdicionada.ToInteger] := Estudante.getCPF;
  StringGrid1.RowCount := StringGrid1.RowCount + 1;
end;

procedure TfrmEstudantes.EditarAluno;
begin
  StringGrid1.EditorMode := True;
  StringGrid1.Options := StringGrid1.Options + [goEditing];
  ShowMessage('Edição ativada!');
end;

procedure TfrmEstudantes.ExcluirAluno;
begin
  var
    linhaSelecionada: Integer;
  begin
    linhaSelecionada := StringGrid1.Row;
    if linhaSelecionada = 0 then
    begin
      ShowMessage('Você não pode excluir a primeira linha');
    end;
    TStringGridAcessor(StringGrid1).DeleteRow(linhaSelecionada);

  end;
end;


procedure TfrmEstudantes.InicializarGridEstudantes;
begin
  StringGrid1.RowCount := 1;
  StringGrid1.Cells[0, 0] := 'Código';
  StringGrid1.Cells[1, 0] := 'Nome';
  StringGrid1.Cells[2, 0] := 'CPF';

  StringGrid1.ColWidths[0] := 280;
  StringGrid1.ColWidths[1] := 280;
  StringGrid1.ColWidths[2] := 280;

  StringGrid1.ColAlignments[0] := TAlignment.taCenter;
  StringGrid1.ColAlignments[1] := TAlignment.taCenter;
  StringGrid1.ColAlignments[2] := TAlignment.taCenter;
end;

end.
