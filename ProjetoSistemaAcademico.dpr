program ProjetoSistemaAcademico;

uses
  Vcl.Forms,
  uDisciplinas in 'uDisciplinas.pas',
  uEstudantes in 'uEstudantes.pas',
  uEstudantesForm in 'uEstudantesForm.pas' {frmEstudantes},
  uMain in 'uMain.pas' {frmMain},
  uMatriculas in 'uMatriculas.pas',
  uProfessores in 'uProfessores.pas',
  uTurmas in 'uTurmas.pas',
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  uProfessoresForm in 'uProfessoresForm.pas' {FrmProfessores},
  uModalAdicionarProfessores in 'uModalAdicionarProfessores.pas' {ModalAdicionarProfessores},
  uModalAdicionarEstudante in 'uModalAdicionarEstudante.pas' {ModalAdicionarEstudantes},
  uDisciplinasForm in 'uDisciplinasForm.pas' {FrmDisciplinas},
  uModalAdicionarDisciplina in 'uModalAdicionarDisciplina.pas' {ModalAdicionarDisciplinas},
  uTurmasForm in 'uTurmasForm.pas' {FrmTurmas},
  uMatriculasForm in 'uMatriculasForm.pas' {FrmMatriculas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TFrmMatriculas, FrmMatriculas);
  Application.CreateForm(TFrmTurmas, FrmTurmas);
  Application.CreateForm(TFrmDisciplinas, FrmDisciplinas);
  Application.CreateForm(TFrmProfessores, FrmProfessores);
  Application.CreateForm(TfrmProfessores, frmProfessores);
  Application.CreateForm(TfrmEstudantes, frmEstudantes);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TModalAdicionarEstudante, ModalEstudante);
  Application.CreateForm(TModalAdicionarProfessores, ModalAdicionarProfessores);
  Application.Run;
end.
