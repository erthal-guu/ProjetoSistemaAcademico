unit uModalAdicionarEstudante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uEstudantes;

type
  TModalAdicionarEstudante = class(TForm)
    Panel2: TPanel;
    LblTitulo: TLabel;
    EdtNome: TEdit;
    edtCPF: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure LimparEdts;
    procedure VerificaCamposVazios;
  public
    { Public declarations }
  end;

var
  ModalEstudante: TModalAdicionarEstudante;

implementation

{$R *.dfm}

procedure TModalAdicionarEstudante.Button1Click(Sender: TObject);
var estudante : TEstudante;
begin
    VerificaCamposVazios;

    Estudante := TEstudante.Create;
    Estudante.setNomeEstudante(EdtNome.Text);
    Estudante.setCPF(edtCPF.Text);
    ListaEstudantes.Add(Estudante);

  Self.Close;
  LimparEdts;
end;

procedure TModalAdicionarEstudante.LimparEdts;
begin
  EdtNome.Clear;
  EdtCPF.Clear;
end;

procedure TModalAdicionarEstudante.VerificaCamposVazios;
begin
  if (EdtNome.Text = '') then
    ShowMessage('O campo (Nome) não pode estar vazio');
  if (EdtCPF.Text = '') then
    ShowMessage('O campo (CPF) não pode estar vazio');
  end;

end.
