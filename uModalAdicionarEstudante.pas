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
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    procedure LimparEdts;
    function VerificaCamposVazios : Boolean;
  public

  end;

var
  ModalEstudantes: TModalEstudantes;

implementation

{$R *.dfm}

procedure TModalEstudantes.Button1Click(Sender: TObject);
var
  Estudante: TEstudante;
begin
  if not VerificaCamposVazios then begin
    try
      Estudante := TEstudante.Create;
      Estudante.setNomeEstudante(Trim(EdtNome.text));
      Estudante.setCPF(Trim(edtCPF.text));

      if Assigned(ListaEstudantes) then begin
        ListaEstudantes.Add(Estudante);
      end else begin
        ShowMessage('A lista de alunos não foi inicializada!');
        Estudante.Free;
      end;
    finally
    end;
    ModalEstudantes.Close;
    LimparEdts;
  end;
end;

procedure TModalEstudantes.LimparEdts;
begin
  EdtNome.Clear;
  edtCPF.Clear;
end;

Function TModalEstudantes.VerificaCamposVazios: Boolean;
begin
  Result := False;

  if Trim(EdtNome.text) = '' then begin
    ShowMessage('O campo ( Nome ) não pode estar vazio');
    Result := True;
    Exit;
  end;

    if Trim(edtCPF.text) = '' then begin
    ShowMessage('O campo ( CPF ) não pode estar vazio');
    Result := True;
    Exit;
  end;

  end;

end.
