unit AddSellerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFormAddSeller = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddSeller: TFormAddSeller;

implementation

uses AdminsForm;

{$R *.dfm}

procedure TFormAddSeller.Button1Click(Sender: TObject);
begin
FormAdmin.AdoQuery1.Post;
close;
end;

procedure TFormAddSeller.Button2Click(Sender: TObject);
begin
close;
end;

end.
