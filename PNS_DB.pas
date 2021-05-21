unit PNS_DB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls;

type
  TFormMain = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses SellersForm, StoragesForm, AdminsForm;

{$R *.dfm}

procedure TFormMain.Button1Click(Sender: TObject);
begin
FormSeller.show;
FormMain.hide;
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
FormStorage.show;
FormMain.hide;
end;

procedure TFormMain.Button3Click(Sender: TObject);
begin
FormAdmin.show;
FormMain.hide;
end;

end.
