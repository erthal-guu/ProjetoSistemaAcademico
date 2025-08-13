unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,uEstudantesForm,uProfessoresForm,uDisciplinasForm,uTurmasForm,uMatriculasForm;

type
  TfrmMain = class(TForm)
    PnlMain: TPanel;
    Label2: TLabel;
    PnlContainer: TPanel;
    BtnEstudantes: TButton;
    BtnProfessores: TButton;
    BtnDisciplinas: TButton;
    BtnTurmas: TButton;
    BtnMatriculas: TButton;
    procedure BtnEstudantesClick(Sender: TObject);
    procedure BtnProfessoresClick(Sender: TObject);
    procedure BtnDisciplinasClick(Sender: TObject);
    procedure BtnTurmasClick(Sender: TObject);
    procedure BtnMatriculasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.BtnDisciplinasClick(Sender: TObject);
begin
  FrmDisciplinas.Show
end;

procedure TfrmMain.BtnEstudantesClick(Sender: TObject);
begin
  frmEstudantes.Show;
end;

procedure TfrmMain.BtnMatriculasClick(Sender: TObject);
begin
frmMatriculas.Show;
end;

procedure TfrmMain.BtnProfessoresClick(Sender: TObject);
begin
  frmProfessores.Show;
end;

procedure TfrmMain.BtnTurmasClick(Sender: TObject);
begin
  FrmTurmas.Show;
end;

end.
