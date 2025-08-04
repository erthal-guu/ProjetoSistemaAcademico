unit uDisciplinas;


interface
uses uCodigo;

//Criação da Classe de Disciplinas
Type TDisciplinas = class(TCodigo)
    NomeDisciplina : String;


// Getters e setters de NomeDisciplina
function getNomeDisciplina:String;
procedure setNomeDisciplina(aNomeDisciplina:String);

end;

implementation

{ TDisciplinas }

function TDisciplinas.getNomeDisciplina: String;
  begin
    Result := Self.NomeDisciplina;
  end;

procedure TDisciplinas.setNomeDisciplina(aNomeDisciplina: String);
  begin
  Self.NomeDisciplina := aNomeDisciplina;
  end;

end.
