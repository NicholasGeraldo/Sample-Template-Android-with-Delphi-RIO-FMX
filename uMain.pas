unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Layouts, FMX.Objects, FMX.TabControl, FMX.Effects, FMX.Filter.Effects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.Edit,
  FMXTee.Engine, FMXTee.Procs, FMXTee.Chart;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    StyleBook: TStyleBook;
    VertScrollBox1: TVertScrollBox;
    rTopHome: TRectangle;
    rOmzetJual: TRectangle;
    Rectangle5: TRectangle;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    GridPanelLayout1: TGridPanelLayout;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FillRGBEffect1: TFillRGBEffect;
    Label5: TLabel;
    Image5: TImage;
    Rectangle8: TRectangle;
    Label6: TLabel;
    FillRGBEffect2: TFillRGBEffect;
    TabItem2: TTabItem;
    RoundRect1: TRoundRect;
    eSearch: TEdit;
    img: TImage;
    ePage: TEdit;
    imgSearch: TImage;
    LsData: TListView;
    Rectangle9: TRectangle;
    Rectangle13: TRectangle;
    RoundRect2: TRoundRect;
    Edit1: TEdit;
    Image6: TImage;
    Edit2: TEdit;
    Image7: TImage;
    ListView1: TListView;
    rInput: TRectangle;
    Rectangle15: TRectangle;
    LInput: TLabel;
    Image8: TImage;
    FillRGBEffect3: TFillRGBEffect;
    rLaba: TRectangle;
    Rectangle2: TRectangle;
    LsReport: TListView;
    Rectangle3: TRectangle;
    procedure FormShow(Sender: TObject);
    procedure LsDataUpdateObjects(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListView1UpdateObjects(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Rectangle8Click(Sender: TObject);
  private
    { Private declarations }
    Procedure SearchItem(txt:string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
 if Key = vkHardwareBack then
   begin
    if rInput.Visible=True then rInput.Visible:=False;

    Key := 0;

   end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  rInput.Visible:=False;
  SearchItem('');

  LsReport.Items.Add;
  LsReport.Items[0].Text:='Lap. Penjualan';
  LsReport.Items.Add;
  LsReport.Items[1].Text:='Histori Kas';
  LsReport.Items.Add;
  LsReport.Items[2].Text:='Laporan Stok';
  LsReport.Items.Add;
  LsReport.Items[3].Text:='Lap. lain-lain';



end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  LInput.Text:='Data Customer';
  rInput.Align:=TAlignLayout.Contents;
  rInput.Visible:=True;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  LInput.Text:='Data Cashier/Sales';
  rInput.Align:=TAlignLayout.Contents;
  rInput.Visible:=True;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  LInput.Text:='Kas Masuk/Keluar';
  rInput.Align:=TAlignLayout.Contents;
  rInput.Visible:=True;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  LInput.Text:='Managemen Stok';
  rInput.Align:=TAlignLayout.Contents;
  rInput.Visible:=True;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
  rInput.Visible:=False;
end;

procedure TForm1.ListView1UpdateObjects(const Sender: TObject;
  const AItem: TListViewItem);
var aBtn: TListItemTextButton;
begin
  aBtn := TListItemTextButton(AItem.View.FindDrawable('btn'));
  aBtn.Height:=30;

end;

procedure TForm1.LsDataUpdateObjects(const Sender: TObject;
  const AItem: TListViewItem);
var aBtn: TListItemTextButton;
begin
  aBtn := TListItemTextButton(AItem.View.FindDrawable('btn'));
  aBtn.Height:=30;
end;

procedure TForm1.Rectangle8Click(Sender: TObject);
begin
  TabControl1.ActiveTab:=TabItem2;
end;

procedure TForm1.SearchItem(txt: string);
var I,X:Integer;
begin
 for I := 0 to 25 do
 begin
   LsData.Items.Add;
   ListView1.Items.Add;

   LsData.Items[I].Objects.FindObjectT<TListItemText>('header').Text:=
     'Product '+i.ToString;
   ListView1.Items[I].Objects.FindObjectT<TListItemText>('header').Text:=
     'Product '+i.ToString;

   LsData.Items[I].Objects.FindObjectT<TListItemText>('detail').Text:=
              'Rp '+IntToStr(I*500)+' | '+
              'stok : '+IntToStr(I*5);
   ListView1.Items[I].Objects.FindObjectT<TListItemText>('detail').Text:=
              'Rp '+IntToStr(I*500)+' | '+
              'stok : '+IntToStr(I*5);

   LsData.Items[I].Objects.FindObjectT<TListItemImage>('pic').Bitmap:=
      Img.MultiResBitmap[0].Bitmap;

   ListView1.Items[I].Objects.FindObjectT<TListItemImage>('pic').Bitmap:=
      Img.MultiResBitmap[0].Bitmap;
 end;

end;

end.
