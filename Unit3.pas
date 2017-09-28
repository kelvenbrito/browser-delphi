unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, WinInet;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    WebBrowser1: TWebBrowser;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

function CheckUrl(url: string): boolean;
var
  hSession, hfile, hRequest: hInternet;
  dwindex, dwcodelen: dword;
  dwcode: array[1..20] of char;
  res: pchar;
begin
  if pos('http://', lowercase(url)) = 0 then
    url := 'http://' + url;
  Result := false;
  hSession := InternetOpen('InetURL:/1.0', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if assigned(hsession) then
  begin
    hfile := InternetOpenUrl(hsession, pchar(url), nil, 0, INTERNET_FLAG_RELOAD, 0);
    dwIndex := 0;
    dwCodeLen := 10;
    HttpQueryInfo(hfile, HTTP_QUERY_STATUS_CODE, @dwcode, dwcodeLen, dwIndex);
    res := pchar(@dwcode);
    result := (res = '200') or (res = '302');
    if assigned(hfile) then
      InternetCloseHandle(hfile);
    InternetCloseHandle(hsession);
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin


if CheckUrl(Edit1.Text) then
WebBrowser1.Navigate(Edit1.Text);

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
    WebBrowser1.GoBack;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
WebBrowser1.GoForward;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
WebBrowser1.Refresh;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
WebBrowser1.Stop;
end;



procedure TForm3.FormPaint(Sender: TObject);
begin
WebBrowser1.Height := Height -50; //altura
WebBrowser1.Width := Width -40; //largura

With Form3.Button1 do
  canvas.RoundRect(left,top,width+left, height+top,20,20);

end;



end.
