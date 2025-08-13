unit uModalAdicionarDisciplina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uDisciplinas;

type
  TModalAdicionarDisciplinas = class(TForm)
    Panel2: TPanel;
    LblTitulo: TLabel;
    EdtNome: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure LimparEdts;
    procedure VerificaCamposVazios;
  public
    { Public declarations }
  end;

var
  ModalAdicionarDisciplinas: TModalAdicionarDisciplinas;

implementation

{$R *.dfm}

procedure TModalAdicionarDisciplinas.Button1Click(Sender: TObject);
var
  Disciplinas: TDisciplinas;
begin
  VerificaCamposVazios;

  Disciplinas := TDisciplinas.Create;
  Disciplinas.setNomeDisciplina(EdtNome.Text);
  ListaDisciplinas.Add(Disciplinas);
  Self.Close;
  LimparEdts;

end;

procedure TModalAdicionarDisciplinas.LimparEdts;
begin
  EdtNome.Clear;
end;

procedure TModalAdicionarDisciplinas.VerificaCamposVazios;
begin
  if (EdtNome.Text = '') then
    ShowMessage('O campo (Nome) não pode estar vazio');
end;

end.
