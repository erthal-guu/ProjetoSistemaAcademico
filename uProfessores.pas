unit uProfessores;

interface
uses System.Generics.Collections;

// Criação da Classe de Professores
Type
  TProfessores = class
    NomeProfessores: String;
    CPF: String;

    // Getters e setters de NomeProfessores
    function getNomeProfessores: String;
    procedure setNomeProfessores(aNomeProfessores: String);

    // Getters e setters do CPF
    Function getCPF: String;
    procedure setCPF(aCPF: String);
  end;
var  ListaProfessores : TObjectList<TProfessores>;
implementation

{ TProfessores }

function TProfessores.getCPF: String;
begin
  Result := Self.CPF;
end;

function TProfessores.getNomeProfessores: String;
begin
  Result := Self.NomeProfessores;
end;

procedure TProfessores.setCPF(aCPF: String);
begin
  Self.CPF := aCPF;
end;

procedure TProfessores.setNomeProfessores(aNomeProfessores: String);
begin
  Self.NomeProfessores := aNomeProfessores;
end;
initialization
ListaProfessores := TObjectList<TProfessores>.Create;

end.
