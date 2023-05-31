
#import "b4i_httpjob.h"
#import "b4i_main.h"
#import "b4i_httputils2service.h"
#import "b4i_listcatspage.h"

@implementation _multipartfiledata
-(void)Initialize{
self.IsInitialized = true;
self->_Dir = @"";
self->_FileName = @"";
self->_KeyName = @"";
self->_ContentType = @"";
}
- (NSString*)description {
return [B4I TypeToString:self :false];}
@end

@implementation b4i_httpjob 


+ (B4I*)createBI {
    return [B4I alloc];
}

- (void)dealloc {
    if (self.bi != nil)
        NSLog(@"Class (b4i_httpjob) instance released.");
}
- (NSString*)  _addscheme:(NSString*) _link{
 //BA.debugLineNum = 43;BA.debugLine="Private Sub AddScheme (Link As String) As String";
 //BA.debugLineNum = 44;BA.debugLine="If DefaultScheme = \"\" Or Link.Contains(\":\") Then";
if ([self->__defaultscheme isEqual:@""] || [_link Contains:@":"]) { 
if (true) return _link;};
 //BA.debugLineNum = 45;BA.debugLine="Return DefaultScheme & \"://\" & Link";
if (true) return [@[self->__defaultscheme,@"://",_link] componentsJoinedByString:@""];
 //BA.debugLineNum = 46;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _class_globals{
self->__main=[b4i_main new];
self->__httputils2service=[b4i_httputils2service new];
self->__listcatspage=[b4i_listcatspage new];
 //BA.debugLineNum = 2;BA.debugLine="Sub Class_Globals";
 //BA.debugLineNum = 3;BA.debugLine="Public JobName As String";
self->__jobname = @"";
 //BA.debugLineNum = 4;BA.debugLine="Public Success As Boolean";
self->__success = false;
 //BA.debugLineNum = 5;BA.debugLine="Public Username, Password As String";
self->__username = @"";
self->__password = @"";
 //BA.debugLineNum = 6;BA.debugLine="Public ErrorMessage As String";
self->__errormessage = @"";
 //BA.debugLineNum = 7;BA.debugLine="Private target As Object";
self->__target = [NSObject new];
 //BA.debugLineNum = 21;BA.debugLine="Private req As HttpRequest";
self->__req = [B4IHttpRequest new];
 //BA.debugLineNum = 23;BA.debugLine="Public Response As HttpResponse";
self->__response = [B4IHttpResponse new];
 //BA.debugLineNum = 25;BA.debugLine="Public Tag As Object";
self->__tag = [NSObject new];
 //BA.debugLineNum = 26;BA.debugLine="Type MultipartFileData (Dir As String, FileName A";
;
 //BA.debugLineNum = 30;BA.debugLine="Private Const InvalidURL As String = \"https://inv";
self->__invalidurl = @"https://invalid-url/";
 //BA.debugLineNum = 31;BA.debugLine="Public DefaultScheme As String = \"https\"";
self->__defaultscheme = @"https";
 //BA.debugLineNum = 32;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _complete:(B4IHttpResponse*) _res1{
 //BA.debugLineNum = 349;BA.debugLine="Public Sub Complete (res1 As HttpResponse)";
 //BA.debugLineNum = 350;BA.debugLine="Response = res1";
self->__response = _res1;
 //BA.debugLineNum = 351;BA.debugLine="CallSub2(target, \"Job\" & \"Done\", Me)";
[self->___c CallSub2:self.bi :self->__target :[@[@"Job",@"Done"] componentsJoinedByString:@""] :self];
 //BA.debugLineNum = 352;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _delete:(NSString*) _link{
 //BA.debugLineNum = 251;BA.debugLine="Public Sub Delete(Link As String)";
 //BA.debugLineNum = 252;BA.debugLine="Try";
@try { //BA.debugLineNum = 253;BA.debugLine="Link = AddScheme(Link)";
_link = [self _addscheme:_link];
 //BA.debugLineNum = 254;BA.debugLine="req.InitializeDelete(Link)";
[self->__req InitializeDelete:_link];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5]; //BA.debugLineNum = 256;BA.debugLine="Log($\"Link inválido: ${Link}\"$)";
[self->___c LogImpl:@"01376261" :([@[@"Link inválido: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
 //BA.debugLineNum = 257;BA.debugLine="req.InitializeDelete(InvalidURL)";
[self->__req InitializeDelete:self->__invalidurl];
 };
 //BA.debugLineNum = 259;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
 //BA.debugLineNum = 260;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _delete2:(NSString*) _link :(B4IArray*) _parameters{
 //BA.debugLineNum = 262;BA.debugLine="Public Sub Delete2(Link As String, Parameters() As";
 //BA.debugLineNum = 263;BA.debugLine="Try";
@try { //BA.debugLineNum = 264;BA.debugLine="Link = AddScheme(Link)";
_link = [self _addscheme:_link];
 //BA.debugLineNum = 265;BA.debugLine="req.InitializeDelete(escapeLink(Link, Parameters";
[self->__req InitializeDelete:[self _escapelink:_link :_parameters]];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5]; //BA.debugLineNum = 267;BA.debugLine="Log($\"Link inválido: ${Link}\"$)";
[self->___c LogImpl:@"01441797" :([@[@"Link inválido: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
 //BA.debugLineNum = 268;BA.debugLine="req.InitializeDelete(escapeLink(InvalidURL, Para";
[self->__req InitializeDelete:[self _escapelink:self->__invalidurl :_parameters]];
 };
 //BA.debugLineNum = 270;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
 //BA.debugLineNum = 271;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _download:(NSString*) _link{
 //BA.debugLineNum = 210;BA.debugLine="Public Sub Download(Link As String)";
 //BA.debugLineNum = 211;BA.debugLine="Try";
@try { //BA.debugLineNum = 212;BA.debugLine="Link = AddScheme(Link)";
_link = [self _addscheme:_link];
 //BA.debugLineNum = 213;BA.debugLine="req.InitializeGet(Link)";
[self->__req InitializeGet:_link];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5]; //BA.debugLineNum = 215;BA.debugLine="Log($\"Link inválido: ${Link}\"$)";
[self->___c LogImpl:@"01179653" :([@[@"Link inválido: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
 //BA.debugLineNum = 216;BA.debugLine="req.InitializeGet(InvalidURL)";
[self->__req InitializeGet:self->__invalidurl];
 };
 //BA.debugLineNum = 218;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
 //BA.debugLineNum = 219;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _download2:(NSString*) _link :(B4IArray*) _parameters{
 //BA.debugLineNum = 226;BA.debugLine="Public Sub Download2(Link As String, Parameters()";
 //BA.debugLineNum = 227;BA.debugLine="Try";
@try { //BA.debugLineNum = 228;BA.debugLine="Link = AddScheme(Link)";
_link = [self _addscheme:_link];
 //BA.debugLineNum = 229;BA.debugLine="req.InitializeGet(escapeLink(Link, Parameters))";
[self->__req InitializeGet:[self _escapelink:_link :_parameters]];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5]; //BA.debugLineNum = 231;BA.debugLine="Log($\"Link inválido: ${Link}\"$)";
[self->___c LogImpl:@"01245189" :([@[@"Link inválido: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
 //BA.debugLineNum = 232;BA.debugLine="req.InitializeGet(escapeLink(InvalidURL, Paramet";
[self->__req InitializeGet:[self _escapelink:self->__invalidurl :_parameters]];
 };
 //BA.debugLineNum = 234;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
 //BA.debugLineNum = 235;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _escapelink:(NSString*) _link :(B4IArray*) _parameters{
B4IStringBuilder* _sb = nil;
iStringUtils* _su = nil;
int _i = 0;
 //BA.debugLineNum = 237;BA.debugLine="Private Sub escapeLink(Link As String, Parameters(";
 //BA.debugLineNum = 238;BA.debugLine="Dim sb As StringBuilder";
_sb = [B4IStringBuilder new];
 //BA.debugLineNum = 239;BA.debugLine="sb.Initialize";
[_sb Initialize];
 //BA.debugLineNum = 240;BA.debugLine="sb.Append(Link)";
[_sb Append:_link];
 //BA.debugLineNum = 241;BA.debugLine="If Parameters.Length > 0 Then sb.Append(\"?\")";
if (_parameters.Length>0) { 
[_sb Append:@"?"];};
 //BA.debugLineNum = 242;BA.debugLine="Dim su As StringUtils";
_su = [iStringUtils new];
 //BA.debugLineNum = 243;BA.debugLine="For i = 0 To Parameters.Length - 1 Step 2";
{
const int step6 = 2;
const int limit6 = (int) (_parameters.Length-1);
_i = (int) (0) ;
for (;_i <= limit6 ;_i = _i + step6 ) {
 //BA.debugLineNum = 244;BA.debugLine="If i > 0 Then sb.Append(\"&\")";
if (_i>0) { 
[_sb Append:@"&"];};
 //BA.debugLineNum = 245;BA.debugLine="sb.Append(su.EncodeUrl(Parameters(i), \"UTF8\")).A";
[[_sb Append:[_su EncodeUrl:((NSString*)[_parameters getObjectFast:_i]) :@"UTF8"]] Append:@"="];
 //BA.debugLineNum = 246;BA.debugLine="sb.Append(su.EncodeUrl(Parameters(i + 1), \"UTF8\"";
[_sb Append:[_su EncodeUrl:((NSString*)[_parameters getObjectFast:(int) (_i+1)]) :@"UTF8"]];
 }
};
 //BA.debugLineNum = 248;BA.debugLine="Return sb.ToString";
if (true) return [_sb ToString];
 //BA.debugLineNum = 249;BA.debugLine="End Sub";
return @"";
}
- (B4IBitmap*)  _getbitmap{
B4IBitmap* _b = nil;
 //BA.debugLineNum = 354;BA.debugLine="Public Sub GetBitmap As Bitmap";
 //BA.debugLineNum = 355;BA.debugLine="Dim b As Bitmap";
_b = [B4IBitmap new];
 //BA.debugLineNum = 356;BA.debugLine="b.Initialize2(Response.GetInputStream)";
[_b Initialize2:[self->__response GetInputStream]];
 //BA.debugLineNum = 357;BA.debugLine="Return b";
if (true) return _b;
 //BA.debugLineNum = 358;BA.debugLine="End Sub";
return nil;
}
- (B4IBitmap*)  _getbitmapresize:(int) _width :(int) _height :(BOOL) _keepaspectratio{
 //BA.debugLineNum = 361;BA.debugLine="Public Sub GetBitmapResize(Width As Int, Height As";
 //BA.debugLineNum = 362;BA.debugLine="Return GetBitmap.Resize(Width, Height, KeepAspect";
if (true) return [[self _getbitmap] Resize:(float) (_width) :(float) (_height) :_keepaspectratio];
 //BA.debugLineNum = 363;BA.debugLine="End Sub";
return nil;
}
- (B4IInputStream*)  _getinputstream{
 //BA.debugLineNum = 366;BA.debugLine="Public Sub GetInputStream As InputStream";
 //BA.debugLineNum = 367;BA.debugLine="Return Response.GetInputStream";
if (true) return [self->__response GetInputStream];
 //BA.debugLineNum = 368;BA.debugLine="End Sub";
return nil;
}
- (B4IHttpRequest*)  _getrequest{
 //BA.debugLineNum = 344;BA.debugLine="Public Sub GetRequest As HttpRequest";
 //BA.debugLineNum = 345;BA.debugLine="Return req";
if (true) return self->__req;
 //BA.debugLineNum = 346;BA.debugLine="End Sub";
return nil;
}
- (NSString*)  _getstring{
 //BA.debugLineNum = 281;BA.debugLine="Public Sub GetString As String";
 //BA.debugLineNum = 282;BA.debugLine="Return GetString2(\"UTF8\")";
if (true) return [self _getstring2:@"UTF8"];
 //BA.debugLineNum = 283;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _getstring2:(NSString*) _encoding{
 //BA.debugLineNum = 286;BA.debugLine="Public Sub GetString2(Encoding As String) As Strin";
 //BA.debugLineNum = 288;BA.debugLine="Return Response.GetString2(Encoding)";
if (true) return [self->__response GetString2:_encoding];
 //BA.debugLineNum = 296;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _head:(NSString*) _link{
 //BA.debugLineNum = 110;BA.debugLine="Public Sub Head(Link As String)";
 //BA.debugLineNum = 111;BA.debugLine="Try";
@try { //BA.debugLineNum = 112;BA.debugLine="Link = AddScheme(Link)";
_link = [self _addscheme:_link];
 //BA.debugLineNum = 113;BA.debugLine="req.InitializeHead(Link)";
[self->__req InitializeHead:_link];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5]; //BA.debugLineNum = 115;BA.debugLine="Log($\"Link inválido: ${Link}\"$)";
[self->___c LogImpl:@"0917509" :([@[@"Link inválido: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
 //BA.debugLineNum = 116;BA.debugLine="req.InitializeHead(InvalidURL)";
[self->__req InitializeHead:self->__invalidurl];
 };
 //BA.debugLineNum = 118;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
 //BA.debugLineNum = 119;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _initialize:(B4I*) _ba :(NSString*) _name :(NSObject*) _targetmodule{
[self initializeClassModule];
 //BA.debugLineNum = 38;BA.debugLine="Public Sub Initialize (Name As String, TargetModul";
 //BA.debugLineNum = 39;BA.debugLine="JobName = Name";
self->__jobname = _name;
 //BA.debugLineNum = 40;BA.debugLine="target = TargetModule";
self->__target = _targetmodule;
 //BA.debugLineNum = 41;BA.debugLine="End Sub";
return @"";
}
- (BOOL)  _multipartstartsection:(B4IOutputStream*) _stream :(BOOL) _empty{
 //BA.debugLineNum = 170;BA.debugLine="Private Sub MultipartStartSection (stream As Outpu";
 //BA.debugLineNum = 171;BA.debugLine="If empty = False Then";
if (_empty==false) { 
 //BA.debugLineNum = 172;BA.debugLine="stream.WriteBytes(Array As Byte(13, 10), 0, 2)";
[_stream WriteBytes:[[B4IArray alloc]initBytesWithData:@[@((unsigned char) (13)),@((unsigned char) (10))]] :(int) (0) :(int) (2)];
 }else {
 //BA.debugLineNum = 174;BA.debugLine="empty = False";
_empty = false;
 };
 //BA.debugLineNum = 176;BA.debugLine="Return empty";
if (true) return _empty;
 //BA.debugLineNum = 177;BA.debugLine="End Sub";
return false;
}
- (NSString*)  _patchbytes:(NSString*) _link :(B4IArray*) _data{
B4INativeObject* _no = nil;
 //BA.debugLineNum = 88;BA.debugLine="Public Sub PatchBytes(Link As String, Data() As By";
 //BA.debugLineNum = 89;BA.debugLine="Link = AddScheme(Link)";
_link = [self _addscheme:_link];
 //BA.debugLineNum = 91;BA.debugLine="req.InitializeGet(Link)";
[self->__req InitializeGet:_link];
 //BA.debugLineNum = 92;BA.debugLine="Dim no As NativeObject = req";
_no = [B4INativeObject new];
_no = (B4INativeObject*) [B4IObjectWrapper createWrapper:[B4INativeObject new] object:(NSObject*)(self->__req)];
 //BA.debugLineNum = 93;BA.debugLine="no = no.GetField(\"object\")";
_no = [_no GetField:@"object"];
 //BA.debugLineNum = 94;BA.debugLine="no.RunMethod(\"setHTTPMethod:\", Array(\"PATCH\"))";
[_no RunMethod:@"setHTTPMethod:" :[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:(NSObject*)(@"PATCH")]]]];
 //BA.debugLineNum = 95;BA.debugLine="no.RunMethod(\"setHTTPBody:\", Array(no.ArrayToNSDa";
[_no RunMethod:@"setHTTPBody:" :[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:[_no ArrayToNSData:_data]]]]];
 //BA.debugLineNum = 105;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
 //BA.debugLineNum = 106;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _patchstring:(NSString*) _link :(NSString*) _text{
 //BA.debugLineNum = 83;BA.debugLine="Public Sub PatchString(Link As String, Text As Str";
 //BA.debugLineNum = 84;BA.debugLine="PatchBytes(Link, Text.GetBytes(\"UTF8\"))";
[self _patchbytes:_link :[_text GetBytes:@"UTF8"]];
 //BA.debugLineNum = 85;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _postbytes:(NSString*) _link :(B4IArray*) _data{
 //BA.debugLineNum = 54;BA.debugLine="Public Sub PostBytes(Link As String, Data() As Byt";
 //BA.debugLineNum = 55;BA.debugLine="Try";
@try { //BA.debugLineNum = 56;BA.debugLine="Link = AddScheme(Link)";
_link = [self _addscheme:_link];
 //BA.debugLineNum = 57;BA.debugLine="req.InitializePost2(Link, Data)";
[self->__req InitializePost2:_link :_data];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5]; //BA.debugLineNum = 59;BA.debugLine="Log($\"link inválido: ${Link}\"$)";
[self->___c LogImpl:@"0589829" :([@[@"link inválido: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
 //BA.debugLineNum = 60;BA.debugLine="req.InitializePost2(InvalidURL, Data)";
[self->__req InitializePost2:self->__invalidurl :_data];
 };
 //BA.debugLineNum = 62;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
 //BA.debugLineNum = 63;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _postfile:(NSString*) _link :(NSString*) _dir :(NSString*) _filename{
 //BA.debugLineNum = 181;BA.debugLine="Public Sub PostFile(Link As String, Dir As String,";
 //BA.debugLineNum = 182;BA.debugLine="Link = AddScheme(Link)";
_link = [self _addscheme:_link];
 //BA.debugLineNum = 184;BA.debugLine="req.InitializePost(Link, Dir, FileName)";
[self->__req InitializePost:_link :_dir :_filename];
 //BA.debugLineNum = 185;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
 //BA.debugLineNum = 207;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _postmultipart:(NSString*) _link :(B4IMap*) _namevalues :(B4IList*) _files{
NSString* _boundary = @"";
B4IOutputStream* _stream = nil;
B4IArray* _b = nil;
NSString* _eol = @"";
BOOL _empty = false;
NSString* _key = @"";
NSString* _value = @"";
NSString* _s = @"";
_multipartfiledata* _fd = nil;
B4IInputStream* _in = nil;
 //BA.debugLineNum = 124;BA.debugLine="Public Sub PostMultipart(Link As String, NameValue";
 //BA.debugLineNum = 125;BA.debugLine="Dim boundary As String = \"-----------------------";
_boundary = @"---------------------------1461124740692";
 //BA.debugLineNum = 126;BA.debugLine="Dim stream As OutputStream";
_stream = [B4IOutputStream new];
 //BA.debugLineNum = 127;BA.debugLine="stream.InitializeToBytesArray(0)";
[_stream InitializeToBytesArray:(int) (0)];
 //BA.debugLineNum = 128;BA.debugLine="Dim b() As Byte";
_b = [[B4IArray alloc]initBytes:@[@((int) (0))]];
 //BA.debugLineNum = 129;BA.debugLine="Dim eol As String = Chr(13) & Chr(10)";
_eol = [@[[self.bi CharToString:((unichar)((int) (13)))],[self.bi CharToString:((unichar)((int) (10)))]] componentsJoinedByString:@""];
 //BA.debugLineNum = 130;BA.debugLine="Dim empty As Boolean = True";
_empty = true;
 //BA.debugLineNum = 131;BA.debugLine="If NameValues <> Null And NameValues.IsInitialize";
if (_namevalues!= nil && [_namevalues IsInitialized]) { 
 //BA.debugLineNum = 132;BA.debugLine="For Each key As String In NameValues.Keys";
{
const id<B4IIterable> group8 = [_namevalues Keys];
const int groupLen8 = group8.Size
;int index8 = 0;
;
for (; index8 < groupLen8;index8++){
_key = [self.bi ObjectToString:[group8 Get:index8]];
 //BA.debugLineNum = 133;BA.debugLine="Dim value As String = NameValues.Get(key)";
_value = [self.bi ObjectToString:[_namevalues Get:(NSObject*)(_key)]];
 //BA.debugLineNum = 134;BA.debugLine="empty = MultipartStartSection (stream, empty)";
_empty = [self _multipartstartsection:_stream :_empty];
 //BA.debugLineNum = 135;BA.debugLine="Dim s As String = _ $\"--${boundary} Content-Dis";
_s = ([@[@"--",[self->___c SmartStringFormatter:@"" :(NSObject*)(_boundary)],@"\n",@"Content-Disposition: form-data; name=\"",[self->___c SmartStringFormatter:@"" :(NSObject*)(_key)],@"\"\n",@"\n",@"",[self->___c SmartStringFormatter:@"" :(NSObject*)(_value)],@""] componentsJoinedByString:@""]);
 //BA.debugLineNum = 140;BA.debugLine="b = s.Replace(CRLF, eol).GetBytes(\"UTF8\")";
_b = [[_s Replace:@"\n" :_eol] GetBytes:@"UTF8"];
 //BA.debugLineNum = 141;BA.debugLine="stream.WriteBytes(b, 0, b.Length)";
[_stream WriteBytes:_b :(int) (0) :_b.Length];
 }
};
 };
 //BA.debugLineNum = 144;BA.debugLine="If Files <> Null And Files.IsInitialized Then";
if (_files!= nil && [_files IsInitialized]) { 
 //BA.debugLineNum = 145;BA.debugLine="For Each fd As MultipartFileData In Files";
{
const id<B4IIterable> group17 = _files;
const int groupLen17 = group17.Size
;int index17 = 0;
;
for (; index17 < groupLen17;index17++){
_fd = (_multipartfiledata*)([group17 Get:index17]);
 //BA.debugLineNum = 146;BA.debugLine="empty = MultipartStartSection (stream, empty)";
_empty = [self _multipartstartsection:_stream :_empty];
 //BA.debugLineNum = 147;BA.debugLine="Dim s As String = _ $\"--${boundary} Content-Dis";
_s = ([@[@"--",[self->___c SmartStringFormatter:@"" :(NSObject*)(_boundary)],@"\n",@"Content-Disposition: form-data; name=\"",[self->___c SmartStringFormatter:@"" :(NSObject*)(_fd->_KeyName /*NSString**/ )],@"\"; filename=\"",[self->___c SmartStringFormatter:@"" :(NSObject*)(_fd->_FileName /*NSString**/ )],@"\"\n",@"Content-Type: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_fd->_ContentType /*NSString**/ )],@"\n",@"\n",@""] componentsJoinedByString:@""]);
 //BA.debugLineNum = 153;BA.debugLine="b = s.Replace(CRLF, eol).GetBytes(\"UTF8\")";
_b = [[_s Replace:@"\n" :_eol] GetBytes:@"UTF8"];
 //BA.debugLineNum = 154;BA.debugLine="stream.WriteBytes(b, 0, b.Length)";
[_stream WriteBytes:_b :(int) (0) :_b.Length];
 //BA.debugLineNum = 155;BA.debugLine="Dim in As InputStream = File.OpenInput(fd.Dir,";
_in = [B4IInputStream new];
_in = [[self->___c File] OpenInput:_fd->_Dir /*NSString**/  :_fd->_FileName /*NSString**/ ];
 //BA.debugLineNum = 156;BA.debugLine="File.Copy2(in, stream)";
[[self->___c File] Copy2:_in :_stream];
 }
};
 };
 //BA.debugLineNum = 159;BA.debugLine="empty = MultipartStartSection (stream, empty)";
_empty = [self _multipartstartsection:_stream :_empty];
 //BA.debugLineNum = 160;BA.debugLine="s = _ $\"--${boundary}-- \"$";
_s = ([@[@"--",[self->___c SmartStringFormatter:@"" :(NSObject*)(_boundary)],@"--\n",@""] componentsJoinedByString:@""]);
 //BA.debugLineNum = 163;BA.debugLine="b = s.Replace(CRLF, eol).GetBytes(\"UTF8\")";
_b = [[_s Replace:@"\n" :_eol] GetBytes:@"UTF8"];
 //BA.debugLineNum = 164;BA.debugLine="stream.WriteBytes(b, 0, b.Length)";
[_stream WriteBytes:_b :(int) (0) :_b.Length];
 //BA.debugLineNum = 165;BA.debugLine="PostBytes(Link, stream.ToBytesArray)";
[self _postbytes:_link :[_stream ToBytesArray]];
 //BA.debugLineNum = 166;BA.debugLine="req.SetContentType(\"multipart/form-data; boundary";
[self->__req SetContentType:[@[@"multipart/form-data; boundary=",_boundary] componentsJoinedByString:@""]];
 //BA.debugLineNum = 167;BA.debugLine="req.SetContentEncoding(\"UTF8\")";
[self->__req SetContentEncoding:@"UTF8"];
 //BA.debugLineNum = 168;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _poststring:(NSString*) _link :(NSString*) _text{
 //BA.debugLineNum = 49;BA.debugLine="Public Sub PostString(Link As String, Text As Stri";
 //BA.debugLineNum = 50;BA.debugLine="PostBytes(Link, Text.GetBytes(\"UTF8\"))";
[self _postbytes:_link :[_text GetBytes:@"UTF8"]];
 //BA.debugLineNum = 51;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _putbytes:(NSString*) _link :(B4IArray*) _data{
 //BA.debugLineNum = 71;BA.debugLine="Public Sub PutBytes(Link As String, Data() As Byte";
 //BA.debugLineNum = 72;BA.debugLine="Try";
@try { //BA.debugLineNum = 73;BA.debugLine="Link = AddScheme(Link)";
_link = [self _addscheme:_link];
 //BA.debugLineNum = 74;BA.debugLine="req.InitializePut2(Link, Data)";
[self->__req InitializePut2:_link :_data];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5]; //BA.debugLineNum = 76;BA.debugLine="Log($\"link inválido: ${Link}\"$)";
[self->___c LogImpl:@"0720901" :([@[@"link inválido: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
 //BA.debugLineNum = 77;BA.debugLine="req.InitializePut2(InvalidURL, Data)";
[self->__req InitializePut2:self->__invalidurl :_data];
 };
 //BA.debugLineNum = 79;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
 //BA.debugLineNum = 80;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _putstring:(NSString*) _link :(NSString*) _text{
 //BA.debugLineNum = 66;BA.debugLine="Public Sub PutString(Link As String, Text As Strin";
 //BA.debugLineNum = 67;BA.debugLine="PutBytes(Link, Text.GetBytes(\"UTF8\"))";
[self _putbytes:_link :[_text GetBytes:@"UTF8"]];
 //BA.debugLineNum = 68;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _release{
 //BA.debugLineNum = 274;BA.debugLine="Public Sub Release";
 //BA.debugLineNum = 278;BA.debugLine="End Sub";
return @"";
}
@end
