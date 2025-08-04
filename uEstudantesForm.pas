unit uEstudantesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    ListBox1: TListBox;
    PnlButton: TPanel;
    BtnEditar: TButton;
    BtnRemover: TButton;
    BtnAdicionar: TButton;
    PnlEdit: TPanel;
    EdtCodigo: TEdit;
    EdtNome: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
