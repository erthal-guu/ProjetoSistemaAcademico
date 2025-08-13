unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,uEstudantesForm,uProfessoresForm,uDisciplinasForm,uTurmasForm;

type
  TfrmMain = class(TForm)
    PnlMain: TPanel;
    PnlContainer: TPanel;
    BtnEstudantes: TButton;
    BtnProfessores: TButton;
    BtnDisciplinas: TButton;
    BtnTurmas: TButton;
    BtnMatriculas: TButton;
    Label2: TLabel;
    procedure BtnEstudantesClick(Sender: TObject);
    procedure BtnProfessoresClick(Sender: TObject);
    procedure BtnDisciplinasClick(Sender: TObject);
    procedure BtnTurmasClick(Sender: TObject);
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

procedure TfrmMain.BtnProfessoresClick(Sender: TObject);
begin
  frmProfessores.Show;
end;

procedure TfrmMain.BtnTurmasClick(Sender: TObject);
begin
  FrmTurmas.Show;
end;

end.
