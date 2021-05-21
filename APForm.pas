unit APForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFormAP = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAP: TFormAP;

implementation

uses StoragesForm;

{$R *.dfm}

procedure TFormAP.Button1Click(Sender: TObject);
begin
FormStorage.ADOQuery1.Post;
close;
end;

procedure TFormAP.Button2Click(Sender: TObject);
begin
close;
end;

end.
