unit uModalAdicionarEstudante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uEstudantes;

type
  TModalEstudantes = class(TForm)
    Panel1: TPanel;
    EdtNome: TEdit;
    edtCPF: TEdit;
    EdtCodigo: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModalEstudantes: TModalEstudantes;

implementation

{$R *.dfm}

procedure TModalEstudantes.Button1Click(Sender: TObject);
var
  Estudante: TEstudante;
begin
  Estudante := TEstudante.Create;
  Estudante.setCodigo(StrToInt(EdtCodigo.text));
  Estudante.setNomeEstudante(EdtNome.text);
  Estudante.setCPF(edtCPF.text);
  Aluno.Add(Estudante);
  ModalEstudantes.Close;
end;

end.
