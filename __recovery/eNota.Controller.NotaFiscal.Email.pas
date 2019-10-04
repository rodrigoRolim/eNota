unit eNota.Controller.NotaFiscal.Email;

interface
uses
  eNota.Controller.NotaFiscal.Interfaces;
Type
  TControllerNotaFiscalEmail = class(TInterfacedObject, iCommand)
    private
      FParent: iNotaFiscal;
    public
      constructor Create(Parent: iNotaFiscal);
      destructor Destroy; override;
      class function New(Parent: iNotaFiscal): iCommand;
      function Execute: iCommand;
  end;
implementation

{ TControllerNotaFiscalEmail }

constructor TControllerNotaFiscalEmail.Create(Parent: iNotaFiscal);
begin

end;

destructor TControllerNotaFiscalEmail.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEmail.Execute: iCommand;
begin

end;

class function TControllerNotaFiscalEmail.New(Parent: iNotaFiscal): iCommand;
begin

end;

end.
