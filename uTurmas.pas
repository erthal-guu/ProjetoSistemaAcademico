unit uTurmas;

interface

// Criação da Classe de Turmas
Type
  TTurma = class
    CodigoDisciplina: Integer;
    CodigoProfessor: Integer;
    Codigo: Integer;

    // Getters e setters de CódigoDisciplina
    function getCodigoDisciplina: Integer;
    procedure setCodigoDisciplina(aCodigoDisciplina: Integer);

    // Getters e setters de Professor
    function getCodigoProfessor: Integer;
    procedure setCodigoProfessor(aCodigoProfessor: Integer);

    // Getters e setters de Codigo
    function getCodigo: Integer;
    procedure setCodigo(aCodigo: Integer);

  end;

implementation

{ TTurma }

function TTurma.getCodigo: Integer;
begin
  Result := Self.Codigo;
end;

function TTurma.getCodigoDisciplina: Integer;
begin
  Result := Self.CodigoDisciplina;
end;

function TTurma.getCodigoProfessor: Integer;
begin
  Result := Self.CodigoProfessor;
end;

procedure TTurma.setCodigo(aCodigo: Integer);
begin
  Self.Codigo := aCodigo;
end;

procedure TTurma.setCodigoDisciplina(aCodigoDisciplina: Integer);
begin
  Self.CodigoDisciplina := aCodigoDisciplina;
end;

procedure TTurma.setCodigoProfessor(aCodigoProfessor: Integer);
begin
  Self.CodigoProfessor := aCodigoProfessor;
end;

end.
