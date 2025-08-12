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
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    procedure LimparEdts;
    procedure VerificaCamposVazios;
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
  Alunos.Add(Estudante);
  ModalEstudantes.Close;
  LimparEdts;
end;

procedure TModalEstudantes.LimparEdts;
begin
EdtNome.Clear;
EdtCodigo.Clear;
EdtCPF.Clear;
end;

procedure TModalEstudantes.VerificaCamposVazios;
begin
  if EdtNome.text = '' then
    ShowMessage('O campo ( Nome ) não pode estar vazio');
  if EdtCodigo.text = '' then
    ShowMessage('O campo ( Código ) não pode estar vazio');
  if EdtCPF.text = '' then
    ShowMessage('O campo ( CPF )não pode estar vazio');
  if (EdtNome.text = '') and (EdtCodigo.text = '') and (EdtCPF.text = '' ) then begin
      ShowMessage('Todos os Campos estão Vazios');
end;

end;


end.
