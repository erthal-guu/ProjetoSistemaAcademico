unit uModalAdicionarEstudante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TModalEstudantes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
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
var senha : String;
begin
senha := 'Admin';
  if Edit1.text = senha then begin
    ShowMessage('Sucesso ao Excluir o aluno');
    ModalEstudantes.Hide;
  end else begin
    ShowMessage('Senha Incorreta, Tente Novamente !!');
  end;
end;

end.
