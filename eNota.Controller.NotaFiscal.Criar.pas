unit eNota.Controller.NotaFiscal.Criar;

interface
uses
  eNota.Controller.NotaFiscal.Interfaces;
Type
  TControllerNotaFiscalCriar = class(TInterfacedObject, iCommand)
    private
      FParent: iNotaFiscal;
    public
      constructor Create(Parent: iNotaFiscal);
      destructor Destroy; override;
      function Execute: iCommand;
      class function New(Parent: iNotaFiscal) : iCommand;
  end;
implementation
{ TControllerNotaFiscalCriar }

constructor TControllerNotaFiscalCriar.Create(Parent: iNotaFiscal);
begin
   FParent := Parent;
end;

destructor TControllerNotaFiscalCriar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalCriar.Execute: iCommand;
begin
  Result := Self;
  FParent.Criar;
end;

class function TControllerNotaFiscalCriar.New(Parent: iNotaFiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
