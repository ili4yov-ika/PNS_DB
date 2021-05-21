program Project;

uses
  Forms,
  PNS_DB in 'PNS_DB.pas' {FormMain},
  SellersForm in 'SellersForm.pas' {FormSeller},
  StoragesForm in 'StoragesForm.pas' {FormStorage},
  AdminsForm in 'AdminsForm.pas' {FormAdmin},
  PurchaseForm in 'PurchaseForm.pas' {FormPurchase},
  APForm in 'APForm.pas' {FormAP},
  APoSForm in 'APoSForm.pas' {FormAPoS};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormSeller, FormSeller);
  Application.CreateForm(TFormStorage, FormStorage);
  Application.CreateForm(TFormAdmin, FormAdmin);
  Application.CreateForm(TFormPurchase, FormPurchase);
  Application.CreateForm(TFormAP, FormAP);
  Application.CreateForm(TFormAPoS, FormAPoS);
  Application.Run;
end.
