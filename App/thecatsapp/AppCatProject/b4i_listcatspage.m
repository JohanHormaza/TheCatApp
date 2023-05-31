
#import "b4i_listcatspage.h"
#import "b4i_main.h"
#import "b4i_httpjob.h"
#import "b4i_httputils2service.h"

@interface ResumableSub_listcatspage_consultListCats :B4IResumableSub 
- (instancetype) init: (b4i_listcatspage*) parent1;
@end
@implementation ResumableSub_listcatspage_consultListCats {
b4i_listcatspage* parent;
B4IList* _listbitmap;
b4i_httpjob* _j;
B4IList* _catslist;
B4IMap* _colrootmap;
_datacats* _cats;
B4IPanelWrapper* _p;
id<B4IIterable> group10;
int index10;
int groupLen10;
}
- (instancetype) init: (b4i_listcatspage*) parent1 {
self->parent = parent1;
return self;
}
- (void) resume:(B4I*)bi1 :(NSArray*)result {
self.bi = bi1;

    while (true) {
        switch (self->_state) {
            case -1:
return;

case 0:
//C
self->_state = 1;
 //BA.debugLineNum = 34;BA.debugLine="Dim listBitmap As List = Array(\"Cat1.jpg\",\"Cat2.j";
self->_listbitmap = [B4IList new];
self->_listbitmap = [self.bi ArrayToList:[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:(NSObject*)(@"Cat1.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat2.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat3.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat4.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat5.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat6.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat7.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat8.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat9.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat10.jpg")]]]];
 //BA.debugLineNum = 35;BA.debugLine="JHRListView1.Clear";
[parent->__jhrlistview1 _clear];
 //BA.debugLineNum = 36;BA.debugLine="Dim j As HttpJob";
self->_j = [b4i_httpjob new];
 //BA.debugLineNum = 37;BA.debugLine="j.Initialize(\"\", Me)";
[self->_j _initialize /*NSString**/ :self.bi :@"" :parent];
 //BA.debugLineNum = 38;BA.debugLine="j.Download(\"https://api.thecatapi.com/v1/breeds\")";
[self->_j _download /*NSString**/ :@"https://api.thecatapi.com/v1/breeds"];
 //BA.debugLineNum = 39;BA.debugLine="j.GetRequest.SetHeader(\"x-api-key\",\"bda53789-d59e";
[[self->_j _getrequest /*B4IHttpRequest**/ ] SetHeader:@"x-api-key" :@"bda53789-d59e-46cd-9bc4-2936630fde39"];
 //BA.debugLineNum = 40;BA.debugLine="Wait For (j) JobDone(j As HttpJob)";
[parent->___c WaitFor:@"jobdone:" :self.bi :self :(NSObject*)(self->_j)];
self->_state = 15;
return;
case 15:
//C
self->_state = 1;
self->_j = ((b4i_httpjob*) result[0]);
;
 //BA.debugLineNum = 41;BA.debugLine="If j.Success Then";
if (true) break;

case 1:
//if
self->_state = 8;
if (self->_j->__success /*BOOL*/ ) { 
self->_state = 3;
}if (true) break;

case 3:
//C
self->_state = 4;
 //BA.debugLineNum = 42;BA.debugLine="Dim catsList As List = j.GetString.As(JSON).ToLi";
self->_catslist = [B4IList new];
self->_catslist = [((B4IJSONConverter*) [B4IObjectWrapper createWrapper:[B4IJSONConverter new] object:(NSObject*)([self->_j _getstring /*NSString**/ ])]) ToList];
 //BA.debugLineNum = 43;BA.debugLine="For Each colrootMap As Map In catsList";
if (true) break;

case 4:
//for
self->_state = 7;
group10 = self->_catslist;
index10 = 0;
groupLen10 = group10.Size;
self->_state = 16;
if (true) break;

case 16:
//C
self->_state = 7;
if (index10 < groupLen10) {
self->_state = 6;
self->_colrootmap = (B4IMap*)([group10 Get:index10]);}
if (true) break;

case 17:
//C
self->_state = 16;
index10++;
if (true) break;

case 6:
//C
self->_state = 17;
 //BA.debugLineNum = 44;BA.debugLine="Dim cats As dataCats";
self->_cats = [_datacats new];
 //BA.debugLineNum = 45;BA.debugLine="cats.Initialize";
[self->_cats Initialize];
 //BA.debugLineNum = 46;BA.debugLine="cats.nameRazaCat = colrootMap.Get(\"name\")";
self->_cats->_nameRazaCat /*NSString**/  = [self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"name")]];
 //BA.debugLineNum = 47;BA.debugLine="cats.DescriptionCat = colrootMap.Get(\"descripti";
self->_cats->_DescriptionCat /*NSString**/  = [self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"description")]];
 //BA.debugLineNum = 48;BA.debugLine="cats.inteligencia = colrootMap.Get(\"intelligenc";
self->_cats->_inteligencia /*NSString**/  = [self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"intelligence")]];
 //BA.debugLineNum = 49;BA.debugLine="cats.paisOrigen = colrootMap.Get(\"origin\")";
self->_cats->_paisOrigen /*NSString**/  = [self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"origin")]];
 //BA.debugLineNum = 50;BA.debugLine="cats.imageFile = listBitmap.Get(Rnd(0,9) Mod li";
self->_cats->_imageFile /*NSString**/  = [self.bi ObjectToString:[self->_listbitmap Get:(int) ([parent->___c Rnd:(int) (0) :(int) (9)]%[self->_listbitmap Size])]];
 //BA.debugLineNum = 51;BA.debugLine="LogColor(colrootMap.Get(\"name\"),Colors.Blue)";
[parent->___c LogImpl:@"06488082" :[self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"name")]] :[[parent->___c Colors] Blue]];
 //BA.debugLineNum = 52;BA.debugLine="Dim p As Panel = xui.CreatePanel(\"\")";
self->_p = [B4IPanelWrapper new];
self->_p = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([parent->__xui CreatePanel:self.bi :@""]).object)];
 //BA.debugLineNum = 53;BA.debugLine="p.SetLayoutAnimated(0,1, 0, 0, JHRListView1.AsV";
[self->_p SetLayoutAnimated:(int) (0) :(float) (1) :(float) (0) :(float) (0) :[[parent->__jhrlistview1 _asview] Width] :(float) (((int) (280)))];
 //BA.debugLineNum = 54;BA.debugLine="JHRListView1.Add(p, cats)";
[parent->__jhrlistview1 _add:(B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((self->_p).object)] :(NSObject*)(self->_cats)];
 if (true) break;
if (true) break;

case 7:
//C
self->_state = 8;
;
 if (true) break;

case 8:
//C
self->_state = 9;
;
 //BA.debugLineNum = 57;BA.debugLine="j.Release";
[self->_j _release /*NSString**/ ];
 //BA.debugLineNum = 58;BA.debugLine="If JHRListView1.Size = 0 Then";
if (true) break;

case 9:
//if
self->_state = 14;
if ([parent->__jhrlistview1 _getsize]==0) { 
self->_state = 11;
}else {
self->_state = 13;
}if (true) break;

case 11:
//C
self->_state = 14;
 //BA.debugLineNum = 59;BA.debugLine="imgEmptyList.As(B4XView).Visible = True";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__imgemptylist).object)]) setVisible:true];
 if (true) break;

case 13:
//C
self->_state = 14;
 //BA.debugLineNum = 61;BA.debugLine="imgEmptyList.As(B4XView).Visible = False";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__imgemptylist).object)]) setVisible:false];
 if (true) break;

case 14:
//C
self->_state = -1;
;
 //BA.debugLineNum = 63;BA.debugLine="End Sub";
if (true) break;

            }
        }
    }
@end
@implementation _datacats
-(void)Initialize{
self.IsInitialized = true;
self->_nameRazaCat = @"";
self->_paisOrigen = @"";
self->_inteligencia = @"";
self->_DescriptionCat = @"";
self->_ID = 0;
self->_imageFile = @"";
}
- (NSString*)description {
return [B4I TypeToString:self :false];}
@end

@implementation b4i_listcatspage 


+ (instancetype)new {
    static b4i_listcatspage* shared = nil;
    if (shared == nil) {
        shared = [self alloc];
        shared.bi = [[B4I alloc] init:shared];
        shared.__c = [B4ICommon new];
    }
    return shared;
}

- (NSString*)  _addviewtokeyboard:(B4ITextFieldWrapper*) _textfield1 :(B4IViewWrapper*) _view1{
B4INativeObject* _no = nil;
 //BA.debugLineNum = 97;BA.debugLine="Sub AddViewToKeyboard(TextField1 As TextField, Vie";
 //BA.debugLineNum = 98;BA.debugLine="Dim no As NativeObject = TextField1";
_no = [B4INativeObject new];
_no = (B4INativeObject*) [B4IObjectWrapper createWrapper:[B4INativeObject new] object:(NSObject*)((_textfield1).object)];
 //BA.debugLineNum = 99;BA.debugLine="no.SetField(\"inputAccessoryView\", View1)";
[_no SetField:@"inputAccessoryView" :(NSObject*)((_view1).object)];
 //BA.debugLineNum = 100;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _btndone_click{
 //BA.debugLineNum = 102;BA.debugLine="Sub btnDone_Click";
 //BA.debugLineNum = 103;BA.debugLine="Page.ResignFocus";
[self->__page ResignFocus];
 //BA.debugLineNum = 104;BA.debugLine="End Sub";
return @"";
}
- (void)  _consultlistcats{
ResumableSub_listcatspage_consultListCats* rsub = [[ResumableSub_listcatspage_consultListCats alloc] init:self ];
[rsub resume:self.bi :nil];
}
//-596471659
- (void)  _jobdone:(b4i_httpjob*) _j{
}
- (NSString*)  _edtbuscador_textchanged:(NSString*) _oldtext :(NSString*) _newtext{
 //BA.debugLineNum = 65;BA.debugLine="Private Sub edtBuscador_TextChanged (OldText As St";
 //BA.debugLineNum = 67;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _jhrlistview1_itemclick:(int) _index :(NSObject*) _value{
 //BA.debugLineNum = 93;BA.debugLine="Private Sub JHRListView1_ItemClick (Index As Int,";
 //BA.debugLineNum = 94;BA.debugLine="Main.valueObject = Value";
self->__main->__valueobject /*NSObject**/  = _value;
 //BA.debugLineNum = 95;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _jhrlistview1_visiblerangechanged:(int) _firstindex :(int) _lastindex{
int _extrasize = 0;
int _i = 0;
B4IPanelWrapper* _p = nil;
_datacats* _du = nil;
 //BA.debugLineNum = 69;BA.debugLine="Private Sub JHRListView1_VisibleRangeChanged (Firs";
 //BA.debugLineNum = 70;BA.debugLine="Dim ExtraSize As Int = 2";
_extrasize = (int) (2);
 //BA.debugLineNum = 71;BA.debugLine="For i = 0 To JHRListView1.Size - 1";
{
const int step2 = 1;
const int limit2 = (int) ([self->__jhrlistview1 _getsize]-1);
_i = (int) (0) ;
for (;_i <= limit2 ;_i = _i + step2 ) {
 //BA.debugLineNum = 72;BA.debugLine="Dim p As Panel = JHRListView1.GetPanel(i)";
_p = [B4IPanelWrapper new];
_p = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([self->__jhrlistview1 _getpanel:_i]).object)];
 //BA.debugLineNum = 73;BA.debugLine="If i > FirstIndex - ExtraSize And i < LastIndex";
if (_i>_firstindex-_extrasize && _i<_lastindex+_extrasize) { 
 //BA.debugLineNum = 75;BA.debugLine="If p.NumberOfViews = 0 Then";
if ([_p NumberOfViews]==0) { 
 //BA.debugLineNum = 76;BA.debugLine="Dim du As dataCats = JHRListView1.GetValue(i)";
_du = (_datacats*)([self->__jhrlistview1 _getvalue:_i]);
 //BA.debugLineNum = 77;BA.debugLine="p.LoadLayout(\"listCatsDesing\")";
[_p LoadLayout:@"listCatsDesing" :self.bi];
 //BA.debugLineNum = 78;BA.debugLine="lblNameRazaCat.Text = du.nameRazaCat";
[self->__lblnamerazacat setText:_du->_nameRazaCat /*NSString**/ ];
 //BA.debugLineNum = 79;BA.debugLine="lblOrigen.Text = du.paisOrigen";
[self->__lblorigen setText:_du->_paisOrigen /*NSString**/ ];
 //BA.debugLineNum = 80;BA.debugLine="lblDescriptionCat.Text = du.DescriptionCat";
[self->__lbldescriptioncat setText:_du->_DescriptionCat /*NSString**/ ];
 //BA.debugLineNum = 81;BA.debugLine="lblintelligence.Text = \"#\" & du.inteligencia";
[self->__lblintelligence setText:[@[@"#",_du->_inteligencia /*NSString**/ ] componentsJoinedByString:@""]];
 //BA.debugLineNum = 82;BA.debugLine="imgCats.Bitmap = LoadBitmap(File.DirAssets,du.";
[self->__imgcats setBitmap:[self->___c LoadBitmap:[[self->___c File] DirAssets] :_du->_imageFile /*NSString**/ ]];
 };
 }else {
 //BA.debugLineNum = 86;BA.debugLine="If p.NumberOfViews > 0 Then";
if ([_p NumberOfViews]>0) { 
 //BA.debugLineNum = 87;BA.debugLine="p.RemoveAllViews";
[_p RemoveAllViews];
 };
 };
 }
};
 //BA.debugLineNum = 91;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _lblbuttonrefresh_click{
 //BA.debugLineNum = 106;BA.debugLine="Private Sub lblButtonRefresh_Click";
 //BA.debugLineNum = 107;BA.debugLine="consultListCats";
[self _consultlistcats];
 //BA.debugLineNum = 108;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _process_globals{
self->__main=[b4i_main new];
self->__httputils2service=[b4i_httputils2service new];
 //BA.debugLineNum = 1;BA.debugLine="Sub Process_Globals";
 //BA.debugLineNum = 2;BA.debugLine="Private Page As Page";
self->__page = [B4IPage new];
 //BA.debugLineNum = 3;BA.debugLine="Private pnlBuscador As Panel";
self->__pnlbuscador = [B4IPanelWrapper new];
 //BA.debugLineNum = 4;BA.debugLine="Private edtBuscador As TextField";
self->__edtbuscador = [B4ITextFieldWrapper new];
 //BA.debugLineNum = 5;BA.debugLine="Private JHRListView1 As JHRListView";
self->__jhrlistview1 = [b4i_jhrlistview new];
 //BA.debugLineNum = 6;BA.debugLine="Private xui As XUI";
self->__xui = [B4IXUI new];
 //BA.debugLineNum = 7;BA.debugLine="Type dataCats(nameRazaCat As String, paisOrigen A";
;
 //BA.debugLineNum = 9;BA.debugLine="Private imgEmptyList As ImageView";
self->__imgemptylist = [B4IImageViewWrapper new];
 //BA.debugLineNum = 10;BA.debugLine="Private lblNameRazaCat As Label";
self->__lblnamerazacat = [B4ILabelWrapper new];
 //BA.debugLineNum = 11;BA.debugLine="Private lblDescriptionCat As Label";
self->__lbldescriptioncat = [B4ILabelWrapper new];
 //BA.debugLineNum = 12;BA.debugLine="Private lblintelligence As Label";
self->__lblintelligence = [B4ILabelWrapper new];
 //BA.debugLineNum = 13;BA.debugLine="Private lblOrigen As Label";
self->__lblorigen = [B4ILabelWrapper new];
 //BA.debugLineNum = 14;BA.debugLine="Private imgCats As ImageView";
self->__imgcats = [B4IImageViewWrapper new];
 //BA.debugLineNum = 15;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _show{
B4IPanelWrapper* _pdone = nil;
 //BA.debugLineNum = 17;BA.debugLine="Public Sub Show";
 //BA.debugLineNum = 18;BA.debugLine="If Page.IsInitialized = False Then Page.Initializ";
if ([self->__page IsInitialized]==false) { 
[self->__page Initialize:self.bi :@"Page"];};
 //BA.debugLineNum = 19;BA.debugLine="Main.NavControl.ShowPage (Page)";
[self->__main->__navcontrol /*B4INavigationControllerWrapper**/  ShowPage:(UIViewController*)((self->__page).object)];
 //BA.debugLineNum = 20;BA.debugLine="Page.RootPanel.RemoveAllViews";
[[self->__page RootPanel] RemoveAllViews];
 //BA.debugLineNum = 21;BA.debugLine="Page.RootPanel.LoadLayout (\"Page2\")";
[[self->__page RootPanel] LoadLayout:@"Page2" :self.bi];
 //BA.debugLineNum = 22;BA.debugLine="Dim pDone As Panel";
_pdone = [B4IPanelWrapper new];
 //BA.debugLineNum = 23;BA.debugLine="pDone.Initialize(\"\")";
[_pdone Initialize:self.bi :@""];
 //BA.debugLineNum = 24;BA.debugLine="pDone.LoadLayout(\"keyBoardDone\")";
[_pdone LoadLayout:@"keyBoardDone" :self.bi];
 //BA.debugLineNum = 25;BA.debugLine="pDone.Height = 46";
[_pdone setHeight:(float) (46)];
 //BA.debugLineNum = 26;BA.debugLine="AddViewToKeyboard(edtBuscador, pDone)";
[self _addviewtokeyboard:self->__edtbuscador :(B4IViewWrapper*) [B4IObjectWrapper createWrapper:[B4IViewWrapper new] object:(UIView*)((_pdone).object)]];
 //BA.debugLineNum = 27;BA.debugLine="JHRListView1.Clear";
[self->__jhrlistview1 _clear];
 //BA.debugLineNum = 30;BA.debugLine="consultListCats";
[self _consultlistcats];
 //BA.debugLineNum = 31;BA.debugLine="End Sub";
return @"";
}
@end
