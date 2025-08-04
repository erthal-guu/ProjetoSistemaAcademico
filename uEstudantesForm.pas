unit uEstudantesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,uCodigo,uEstudantes;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    PnlButton: TPanel;
    BtnEditar: TButton;
    BtnRemover: TButton;
    BtnAdicionar: TButton;
    PnlEdit: TPanel;
    EdtCodigo: TEdit;
    EdtNome: TEdit;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    procedure BtnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BtnAdicionarClick(Sender: TObject);
var Estudante : TEstudantes;
begin
Estudante := TEstudantes.Create;
  Estudante.NomeEstudante := edtNome.text;
  Estudante.setCodigo(edtCodigo.text);

end;

end.
