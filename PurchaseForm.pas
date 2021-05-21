unit PurchaseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask;

type
  TFormPurchase = class(TForm)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPurchase: TFormPurchase;

implementation

uses SellersForm;
{$R *.dfm}

procedure TFormPurchase.FormCreate(Sender: TObject);
begin
//DBEdit6.Text := DateToStr(Now);
end;

procedure TFormPurchase.Button1Click(Sender: TObject);
begin
DBEdit4.Enabled := True;

FormSeller.AdoQuery2.Post;

DBEdit4.Enabled := False;

close;
end;

procedure TFormPurchase.Button2Click(Sender: TObject);
begin
close;
end;

procedure TFormPurchase.DBEdit6Change(Sender: TObject);
begin
DBEdit6.Text := DateToStr(Now);
end;

procedure TFormPurchase.DBEdit4Change(Sender: TObject);
begin
DBEdit4.Text := IntToStr(NumberSeller);
end;

end.
