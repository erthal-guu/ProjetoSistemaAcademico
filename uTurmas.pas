unit uTurmas;

interface
uses uCodigo;

//Criação da Classe de Turmas
Type TTurma = class(TCodigo)
  CodigoDisciplina : Integer;
  CodigoProfessor : Integer;

// Getters e setters de CódigoDisciplina
    function getCodigoDisciplina : Integer;
    procedure setCodigoDisciplina(aCodigoDisciplina:Integer);


// Getters e setters de Professor
function getCodigoProfessor : Integer;
procedure setCodigoProfessor(aCodigoProfessor:Integer);

end;

implementation

{ TTurma }

function TTurma.getCodigoDisciplina: Integer;
  begin
    Result := Self.CodigoDisciplina;
  end;

function TTurma.getCodigoProfessor: Integer;
  begin
    Result := Self.CodigoProfessor;
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
