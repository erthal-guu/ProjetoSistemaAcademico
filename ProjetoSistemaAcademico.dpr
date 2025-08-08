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
  uModalAdicionarEstudante in 'uModalAdicionarEstudante.pas' {ModalEstudantes},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TfrmEstudantes, frmEstudantes);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TModalEstudantes, ModalEstudantes);
  Application.Run;
end.
