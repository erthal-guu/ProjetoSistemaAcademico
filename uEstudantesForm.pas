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
    BtnRemover: TButton;
    BtnAdicionar: TButton;
    PnlEdit: TPanel;
    Label1: TLabel;
    EdtNome: TEdit;
    EdtCodigo: TEdit;
    edtCPF: TEdit;
    StringGrid1: TStringGrid;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstudantes: TfrmEstudantes;

implementation

{$R *.dfm}

procedure TfrmEstudantes.BtnAdicionarClick(Sender: TObject);
var
  Estudante: TEstudantes;
  LinhaAdicionada : String;
begin
  LinhaAdicionada := StringGrid1.RowCount.ToString;
  Estudante := TEstudantes.Create;
  Estudante.NomeEstudante := EdtNome.text;
  Estudante.setCodigo(StrToInt(EdtCodigo.text));
  Estudante.setCPF(edtCPF.text);
  StringGrid1.Cells[0,LinhaAdicionada.ToInteger] := EdtCodigo.text;
  StringGrid1.Cells[1,LinhaAdicionada.ToInteger] := EdtNome.Text;
  StringGrid1.Cells[2,LinhaAdicionada.ToInteger] := EdtCPF.Text;
  StringGrid1.RowCount := StringGrid1.RowCount + 1;
end;

procedure TfrmEstudantes.FormCreate(Sender: TObject);
begin
  StringGrid1.RowCount := 1;
  StringGrid1.Cells[0,0] := 'Código';
  StringGrid1.Cells[1,0] := 'Nome';
  StringGrid1.Cells[2,0] := 'CPF';

  StringGrid1.ColWidths[0] := 150;
  StringGrid1.ColWidths[1] := 150;
  StringGrid1.ColWidths[2] := 150;

  StringGrid1.ColAlignments[0] := TAlignment.taCenter;
  StringGrid1.ColAlignments[1] := TAlignment.taCenter;
  StringGrid1.ColAlignments[2] := TAlignment.taCenter;
end;

end.
