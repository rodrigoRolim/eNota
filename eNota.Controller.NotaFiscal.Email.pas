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

end.
