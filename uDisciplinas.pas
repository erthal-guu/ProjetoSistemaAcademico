unit uDisciplinas;

interface

// Criação da Classe de Disciplinas
Type
  TDisciplinas = class
    NomeDisciplina: String;
    Codigo: Integer;

    // Getters e setters de NomeDisciplina
    function getNomeDisciplina: String;
    procedure setNomeDisciplina(aNomeDisciplina: String);

    // Getters e setters de Codigo
    function getCodigo: Integer;
    procedure setCodigo(aCodigo: Integer);

  end;

implementation

{ TDisciplinas }

function TDisciplinas.getCodigo: Integer;
begin
  Result := Self.Codigo;
end;

function TDisciplinas.getNomeDisciplina: String;
begin
  Result := Self.NomeDisciplina;
end;

procedure TDisciplinas.setCodigo(aCodigo: Integer);
begin
  Self.Codigo := aCodigo;
end;

procedure TDisciplinas.setNomeDisciplina(aNomeDisciplina: String);
begin
  Self.NomeDisciplina := aNomeDisciplina;
end;

end.
