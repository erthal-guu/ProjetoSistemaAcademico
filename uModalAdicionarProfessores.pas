unit uModalAdicionarProfessores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,uProfessores;

type
  TModalAdicionarProfessores = class(TForm)
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
  ModalAdicionarProfessores: TModalAdicionarProfessores;

implementation

{$R *.dfm}

procedure TModalAdicionarProfessores.Button1Click(Sender: TObject);
var Professores : TProfessores ;
begin
     VerificaCamposVazios;

    Professores := TProfessores.Create;
    Professores.setNomeProfessores(EdtNome.Text);
    Professores.setCPF(edtCPF.Text);
    ListaProfessores.Add(Professores);

  Self.Close;
  LimparEdts;
end;
procedure TModalAdicionarProfessores.LimparEdts;
begin
  EdtNome.Clear;
  EdtCPF.Clear;
end;
procedure TModalAdicionarProfessores.VerificaCamposVazios;
begin
  if (EdtNome.Text = '') then
    ShowMessage('O campo (Nome) não pode estar vazio');
  if (EdtCPF.Text = '') then
    ShowMessage('O campo (CPF) não pode estar vazio');
  end;

end.
