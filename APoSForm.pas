unit APoSForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFormAPoS = class(TForm)
    Label1: TLabel;
    DBComboBoxNumberClass: TDBComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAPoS: TFormAPoS;
  i: integer;

implementation

uses StoragesForm;

{$R *.dfm}

procedure TFormAPoS.FormCreate(Sender: TObject);
begin

for i:=1 to FormStorage.AdoQuery1.RecordCount do
begin
DBComboBoxNumberClass.Items.Add(FormStorage.AdoQuery1.FieldByName('number_class_product').AsString);
FormStorage.AdoQuery1.Next;
end;

end;

procedure TFormAPoS.Button1Click(Sender: TObject);
begin
FormStorage.AdoQuery2.Post;
close;
end;

procedure TFormAPoS.Button2Click(Sender: TObject);
begin
close;
end;

end.
