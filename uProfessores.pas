unit uProfessores;

interface
uses uCodigo;

//Criação da Classe de Professores
Type TProfessores = class(TCodigo)
      NomeProfessores : String;


// Getters e setters de NomeProfessores
function getNomeProfessores :String;
procedure setNomeProfessores(aNomeProfessores:String);

end;

implementation

{ TProfessores }

function TProfessores.getNomeProfessores: String;
  begin
    Result := Self.NomeProfessores;
  end;

procedure TProfessores.setNomeProfessores(aNomeProfessores: String);
  begin
    Self.NomeProfessores := aNomeProfessores;
  end;

end.
