unit AdminsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TFormAdmin = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    procedure OnClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdmin: TFormAdmin;

implementation

uses AddSellerForm;

{$R *.dfm}

procedure TFormAdmin.OnClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormAdmin.Button1Click(Sender: TObject);
begin
AdoQuery1.Insert;
FormAddSeller.show;
end;

end.
