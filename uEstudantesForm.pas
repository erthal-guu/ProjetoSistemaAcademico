unit uEstudantesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  uEstudantes, Data.DB, Vcl.DBGrids;

type
  TfrmEstudantes = class(TForm)
    Panel1: TPanel;
    PnlButton: TPanel;
    BtnEditar: TButton;
    BtnAdicionar: TButton;
    PnlEdit: TPanel;
    Label1: TLabel;
    EdtNome: TEdit;
    EdtCodigo: TEdit;
    edtCPF: TEdit;
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
    procedure AdicionarAluno;
    procedure EditarAluno;

  end;

var
  frmEstudantes: TfrmEstudantes;
  linhaAdicionada: String;

type
  TStringGridAcessor = class(TStringGrid);

implementation

{$R *.dfm}

procedure TfrmEstudantes.AdicionarAluno;
var
  Estudante: TEstudantes;
begin
  linhaAdicionada := StringGrid1.RowCount.ToString;
  if EdtNome.text = '' then
  begin
    ShowMessage(' O aluno não pode ser adicionado');
  end;
  Estudante := TEstudantes.Create;
  Estudante.NomeEstudante := EdtNome.text;
  Estudante.setCodigo(StrToInt(EdtCodigo.text));
  Estudante.setCPF(edtCPF.text);
  StringGrid1.Cells[0, linhaAdicionada.ToInteger] := EdtCodigo.text;
  StringGrid1.Cells[1, linhaAdicionada.ToInteger] := EdtNome.text;
  StringGrid1.Cells[2, linhaAdicionada.ToInteger] := edtCPF.text;
  StringGrid1.RowCount := StringGrid1.RowCount + 1;
  EdtNome.Clear;
  EdtCodigo.Clear;
  edtCPF.Clear;
end;

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

procedure TfrmEstudantes.EditarAluno;
begin
  StringGrid1.EditorMode := True;
  StringGrid1.Options := StringGrid1.Options + [goEditing];
  ShowMessage('Edição ativada!');
  EdtCodigo.text := StringGrid1.Cells[0, linhaAdicionada.ToInteger];
  EdtNome.text := StringGrid1.Cells[1, linhaAdicionada.ToInteger];
  edtCPF.text := StringGrid1.Cells[2, linhaAdicionada.ToInteger];
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

procedure TfrmEstudantes.FormCreate(Sender: TObject);
begin
  StringGrid1.RowCount := 1;
  StringGrid1.Cells[0, 0] := 'Código';
  StringGrid1.Cells[1, 0] := 'Nome';
  StringGrid1.Cells[2, 0] := 'CPF';

  StringGrid1.ColWidths[0] := 281;
  StringGrid1.ColWidths[1] := 281;
  StringGrid1.ColWidths[2] := 281;

  StringGrid1.ColAlignments[0] := TAlignment.taCenter;
  StringGrid1.ColAlignments[1] := TAlignment.taCenter;
  StringGrid1.ColAlignments[2] := TAlignment.taCenter;

end;

end.
