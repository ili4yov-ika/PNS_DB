unit SellersForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls, Mask;

type
  TFormSeller = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ComboBoxNumberSeller: TComboBox;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    GroupBox: TGroupBox;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure OnClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    //NumberSeller: integer;
  end;

var
  FormSeller: TFormSeller;
  NumberSeller, i: integer;

implementation

uses PurchaseForm;
{$R *.dfm}

procedure TFormSeller.FormCreate(Sender: TObject);
begin

FormSeller.Height := 232;

for i:=1 to AdoQuery1.RecordCount do
begin
ComboBoxNumberSeller.Items.Add(AdoQuery1.FieldByName('number_seller').AsString);
AdoQuery1.Next;
end;
end;

procedure TFormSeller.Button1Click(Sender: TObject);
begin
NumberSeller := ComboBoxNumberSeller.ItemIndex + 1;
GroupBox.Caption := GroupBox.Caption + IntToStr(NumberSeller);
GroupBox.Visible := True;
GroupBox.Top := 0;
Panel1.Visible := False;

FormSeller.Height := 255;

end;

procedure TFormSeller.Button2Click(Sender: TObject);
begin
FormPurchase.Show;

FormPurchase.DBEdit4.Text := IntToStr(NumberSeller);
FormPurchase.DBEdit6.Text := DateToStr(Now);

AdoQuery2.Insert;
end;

procedure TFormSeller.Button3Click(Sender: TObject);
begin
Panel1.Visible := True;
GroupBox.Top := 0;
GroupBox.Visible := False;
end;

procedure TFormSeller.OnClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
