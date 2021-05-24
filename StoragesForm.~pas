unit StoragesForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TFormStorage = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Button2: TButton;
    procedure OnClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStorage: TFormStorage;

implementation

uses APForm, APoSForm;

{$R *.dfm}

procedure TFormStorage.OnClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormStorage.Button1Click(Sender: TObject);
begin
FormAP.show;
AdoQuery1.Insert;
end;

procedure TFormStorage.Button2Click(Sender: TObject);
begin
FormAPoS.show;
AdoQuery2.Insert;
end;

end.
