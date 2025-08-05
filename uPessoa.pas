unit uPessoa;

interface

type
  TPessoa = class
  private
    Codigo: Integer;
    // Getters e setters do Código
  public
    function getCodigo: Integer;
    procedure setCodigo(aCodigo: Integer);
    // Criação do Construtor da Classe
    constructor Create(aCodigo: Integer);
  end;

implementation

end.
