unit uMatriculas;

interface
uses uCodigo;

//Criação da Classe de Matriculas
type TMatricula = class(TCodigo)
   CodigoTurma : Integer;
   CodigoDisciplina : Integer;

// Getters e setters de CódigoTurma
    function getCodigoTurma:Integer;
    procedure setCodigoTurma(aCodigoTurma:Integer);


// Getters e setters de CódigoDisciplina
function getCodigoDisciplina : Integer;
procedure setCodigoDisciplina(aCodigoDisciplina:Integer);

end;

implementation

{ TMatricula }

function TMatricula.getCodigoDisciplina: Integer;
  begin
    Result := Self.CodigoDisciplina
  end;

function TMatricula.getCodigoTurma: Integer;
  begin
    Result := Self.CodigoTurma
  end;

procedure TMatricula.setCodigoDisciplina(aCodigoDisciplina: Integer);
  begin
    Self.CodigoDisciplina := aCodigoDisciplina
  end;

procedure TMatricula.setCodigoTurma(aCodigoTurma: Integer);
  begin
    Self.CodigoTurma := aCodigoTurma
  end;

end.
