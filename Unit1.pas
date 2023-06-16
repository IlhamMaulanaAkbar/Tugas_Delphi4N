unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure posisiawal;
    procedure editclear;
    procedure editEnable;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
editclear;

editEnable;

BitBtn1.Enabled:= False;
BitBtn2.Enabled:= True;
BitBtn3.Enabled:= False;
BitBtn4.Enabled:= False;
BitBtn5.Enabled:= True;
end;

procedure TForm1.posisiawal;
begin
editclear;
Edit1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;
Edit4.Enabled:= False;
Edit5.Enabled:= False;

BitBtn1.Enabled:=True;
BitBtn2.Enabled:=False;
BitBtn3.Enabled:=False;
BitBtn4.Enabled:=False;
BitBtn5.Enabled:=False;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
BitBtn2.Enabled:=False;
BitBtn3.Enabled:=True;
BitBtn4.Enabled:=True;
BitBtn5.Enabled:=True;

Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
Edit5.Enabled:=True;

editEnable;
end;

procedure TForm1.editclear;
begin
Edit1.Text:= '';
Edit2.Text:= '';
Edit3.Text:= '';
Edit4.Text:= '';
Edit5.Text:= '';
end;

procedure TForm1.editEnable;
begin
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into kostumer values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
ZQuery1.ExecSQL ;


ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kostumer');
ZQuery1.Open;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update kostumer set nmkostumer= "'+Edit1.Text+'" where idkostumer=1');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kostumer');
ZQuery1.Open;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from kustomer where idkostumer=4');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kostumer');
ZQuery1.Open;
end;

end.
