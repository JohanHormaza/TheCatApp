
#import "b4i_main.h"
#import "b4i_httpjob.h"
#import "b4i_httputils2service.h"
#import "b4i_listcatspage.h"

@interface ResumableSub_main_Animations :B4IResumableSub 
- (instancetype) init: (b4i_main*) parent1;
@end
@implementation ResumableSub_main_Animations {
b4i_main* parent;
}
- (instancetype) init: (b4i_main*) parent1 {
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
self->_state = -1;
 //BA.debugLineNum = 87;BA.debugLine="background.SetLayoutAnimated(700,1,Background2.Le";
[parent->__background SetLayoutAnimated:(int) (700) :(float) (1) :[parent->__background2 Left] :[parent->__background2 Top] :[parent->__background2 Width] :[parent->__background2 Height]];
 //BA.debugLineNum = 88;BA.debugLine="img.As(B4XView).SetLayoutAnimated(700,Background2";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__img).object)]) SetLayoutAnimated:(int) (700) :(float) ([parent->__background2 Left]+((int) (25))) :(float) ([parent->__background2 Top]+((int) (25))) :(float) ([parent->__background2 Width]-((int) (50))) :(float) ([parent->__background2 Height]-((int) (50)))];
 //BA.debugLineNum = 89;BA.debugLine="Sleep(350)";
[parent->___c Sleep:self.bi :self :(int) (350)];
self->_state = 1;
return;
case 1:
//C
self->_state = -1;
;
 //BA.debugLineNum = 90;BA.debugLine="img.As(B4XView).SetVisibleAnimated(600,True)";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__img).object)]) SetVisibleAnimated:(int) (600) :true];
 //BA.debugLineNum = 91;BA.debugLine="Sleep(400)";
[parent->___c Sleep:self.bi :self :(int) (400)];
self->_state = 2;
return;
case 2:
//C
self->_state = -1;
;
 //BA.debugLineNum = 92;BA.debugLine="background.As(B4XView).SetRotationAnimated(2500,9";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__background).object)]) SetRotationAnimated:(int) (2500) :(float) (90)];
 //BA.debugLineNum = 93;BA.debugLine="Sleep(2500)";
[parent->___c Sleep:self.bi :self :(int) (2500)];
self->_state = 3;
return;
case 3:
//C
self->_state = -1;
;
 //BA.debugLineNum = 94;BA.debugLine="img.BringToFront";
[parent->__img BringToFront];
 //BA.debugLineNum = 95;BA.debugLine="LblUiIonverse.BringToFront";
[parent->__lbluiionverse BringToFront];
 //BA.debugLineNum = 96;BA.debugLine="Background2.Visible = True";
[parent->__background2 setVisible:true];
 //BA.debugLineNum = 97;BA.debugLine="background.Visible = False";
[parent->__background setVisible:false];
 //BA.debugLineNum = 98;BA.debugLine="Background2.As(B4XView).SetLayoutAnimated(900,Bac";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__background2).object)]) SetLayoutAnimated:(int) (900) :(float) ([parent->__background2 Left]-[parent _y:(int) (60)]) :(float) ([parent->__background2 Top]-[parent _y:(int) (60)]) :(float) ([parent->__background2 Width]+[parent _y:(int) (120)]) :(float) ([parent->__background2 Height]+[parent _y:(int) (120)])];
 //BA.debugLineNum = 99;BA.debugLine="Sleep(1200)";
[parent->___c Sleep:self.bi :self :(int) (1200)];
self->_state = 4;
return;
case 4:
//C
self->_state = -1;
;
 //BA.debugLineNum = 100;BA.debugLine="img.As(B4XView).SetLayoutAnimated(600,img.Left,lb";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__img).object)]) SetLayoutAnimated:(int) (600) :[parent->__img Left] :(float) ([parent->__lblion Top]-([parent->__img Height]+((int) (20)))) :[parent->__img Width] :[parent->__img Height]];
 //BA.debugLineNum = 101;BA.debugLine="Sleep(400)";
[parent->___c Sleep:self.bi :self :(int) (400)];
self->_state = 5;
return;
case 5:
//C
self->_state = -1;
;
 //BA.debugLineNum = 103;BA.debugLine="lblION.As(B4XView).SetVisibleAnimated(400,True)";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lblion).object)]) SetVisibleAnimated:(int) (400) :true];
 //BA.debugLineNum = 104;BA.debugLine="lblVerse.As(B4XView).SetVisibleAnimated(500,True)";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lblverse).object)]) SetVisibleAnimated:(int) (500) :true];
 //BA.debugLineNum = 105;BA.debugLine="LblDsc.As(B4XView).SetVisibleAnimated(700,True)";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lbldsc).object)]) SetVisibleAnimated:(int) (700) :true];
 //BA.debugLineNum = 106;BA.debugLine="Sleep(500)";
[parent->___c Sleep:self.bi :self :(int) (500)];
self->_state = 6;
return;
case 6:
//C
self->_state = -1;
;
 //BA.debugLineNum = 107;BA.debugLine="LblUiIonverse.As(B4XView).SetVisibleAnimated(600,";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lbluiionverse).object)]) SetVisibleAnimated:(int) (600) :true];
 //BA.debugLineNum = 108;BA.debugLine="Sleep(2400)";
[parent->___c Sleep:self.bi :self :(int) (2400)];
self->_state = 7;
return;
case 7:
//C
self->_state = -1;
;
 //BA.debugLineNum = 109;BA.debugLine="img.As(B4XView).SetVisibleAnimated(500,False)";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__img).object)]) SetVisibleAnimated:(int) (500) :false];
 //BA.debugLineNum = 110;BA.debugLine="lblION.As(B4XView).SetVisibleAnimated(500,False)";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lblion).object)]) SetVisibleAnimated:(int) (500) :false];
 //BA.debugLineNum = 111;BA.debugLine="lblVerse.As(B4XView).SetVisibleAnimated(500,False";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lblverse).object)]) SetVisibleAnimated:(int) (500) :false];
 //BA.debugLineNum = 112;BA.debugLine="LblDsc.As(B4XView).SetVisibleAnimated(500,False)";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lbldsc).object)]) SetVisibleAnimated:(int) (500) :false];
 //BA.debugLineNum = 113;BA.debugLine="LblUiIonverse.As(B4XView).SetVisibleAnimated(500,";
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lbluiionverse).object)]) SetVisibleAnimated:(int) (500) :false];
 //BA.debugLineNum = 114;BA.debugLine="Sleep(750)";
[parent->___c Sleep:self.bi :self :(int) (750)];
self->_state = 8;
return;
case 8:
//C
self->_state = -1;
;
 //BA.debugLineNum = 115;BA.debugLine="listCatsPage.Show";
[parent->__listcatspage _show /*NSString**/ ];
 //BA.debugLineNum = 116;BA.debugLine="End Sub";
if (true) break;

            }
        }
    }
@end
@interface ResumableSub_main_Application_Start :B4IResumableSub 
- (instancetype) init: (b4i_main*) parent1 :(B4INavigationControllerWrapper*) _nav1;
@end
@implementation ResumableSub_main_Application_Start {
b4i_main* parent;
B4INavigationControllerWrapper* _nav;
B4INativeObject* _no;
int _width;
int _height;
}
- (instancetype) init: (b4i_main*) parent1 :(B4INavigationControllerWrapper*) _nav1 {
self->_nav = _nav1;
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
self->_state = -1;
 //BA.debugLineNum = 31;BA.debugLine="NavControl = Nav";
parent->__navcontrol = self->_nav;
 //BA.debugLineNum = 32;BA.debugLine="NavControl.NavigationBarVisible = False";
[parent->__navcontrol setNavigationBarVisible:false];
 //BA.debugLineNum = 33;BA.debugLine="Dim No As NativeObject = NavControl";
self->_no = [B4INativeObject new];
self->_no = (B4INativeObject*) [B4IObjectWrapper createWrapper:[B4INativeObject new] object:(NSObject*)((parent->__navcontrol).object)];
 //BA.debugLineNum = 34;BA.debugLine="No.GetField(\"navigationBar\").RunMethod(\"setBarTin";
[[self->_no GetField:@"navigationBar"] RunMethod:@"setBarTintColor:" :[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:(NSObject*)([self->_no ColorToUIColor:((int)0xff910a34)])]]]];
 //BA.debugLineNum = 35;BA.debugLine="Dim No As NativeObject = NavControl";
self->_no = [B4INativeObject new];
self->_no = (B4INativeObject*) [B4IObjectWrapper createWrapper:[B4INativeObject new] object:(NSObject*)((parent->__navcontrol).object)];
 //BA.debugLineNum = 36;BA.debugLine="No.GetField(\"navigationBar\").RunMethod(\"setTintCo";
[[self->_no GetField:@"navigationBar"] RunMethod:@"setTintColor:" :[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:(NSObject*)([self->_no ColorToUIColor:[[parent->___c Colors] White]])]]]];
 //BA.debugLineNum = 37;BA.debugLine="Page.Initialize (\"Page\")";
[parent->__page Initialize:self.bi :@"Page"];
 //BA.debugLineNum = 38;BA.debugLine="NavControl.ShowPage (Page)";
[parent->__navcontrol ShowPage:(UIViewController*)((parent->__page).object)];
 //BA.debugLineNum = 39;BA.debugLine="Wait For Page_Resize (Width As Int, Height As Int";
[parent->___c WaitFor:@"page_resize::" :self.bi :self :nil];
self->_state = 1;
return;
case 1:
//C
self->_state = -1;
self->_width = ((NSNumber*) result[0]).intValue;
self->_height = ((NSNumber*) result[1]).intValue;
;
 //BA.debugLineNum = 40;BA.debugLine="lblION = CreateLabel(\"\")";
parent->__lblion = [parent _createlabel:@""];
 //BA.debugLineNum = 41;BA.debugLine="lblVerse = CreateLabel(\"\")";
parent->__lblverse = [parent _createlabel:@""];
 //BA.debugLineNum = 42;BA.debugLine="LblDsc = CreateLabel(\"\")";
parent->__lbldsc = [parent _createlabel:@""];
 //BA.debugLineNum = 43;BA.debugLine="Background2 = xui.CreatePanel(\"\")";
parent->__background2 = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([parent->__xui CreatePanel:self.bi :@""]).object)];
 //BA.debugLineNum = 44;BA.debugLine="mCallback = Page.RootPanel";
parent->__mcallback = [parent->__page RootPanel];
 //BA.debugLineNum = 45;BA.debugLine="mCallback.LoadLayout(\"Splash\")";
[parent->__mcallback LoadLayout:@"Splash" :self.bi];
 //BA.debugLineNum = 46;BA.debugLine="XViewes";
[parent _xviewes];
 //BA.debugLineNum = 47;BA.debugLine="Animations";
[parent _animations];
 //BA.debugLineNum = 48;BA.debugLine="End Sub";
if (true) break;

            }
        }
    }
@end

@implementation b4i_main 


+ (instancetype)new {
    static b4i_main* shared = nil;
    if (shared == nil) {
        shared = [self alloc];
        shared.bi = [[B4I alloc] init:shared];
        shared.__c = [B4ICommon new];
    }
    return shared;
}

- (void)  _animations{
ResumableSub_main_Animations* rsub = [[ResumableSub_main_Animations alloc] init:self ];
[rsub resume:self.bi :nil];
}
//373391533
- (void)  _application_start:(B4INavigationControllerWrapper*) _nav{
[self initializeStaticModules];
ResumableSub_main_Application_Start* rsub = [[ResumableSub_main_Application_Start alloc] init:self : _nav];
[rsub resume:self.bi :nil];
}
//668799966
- (void)  _page_resize:(int) _width :(int) _height{
}
- (NSString*)  _consult_apicat{
 //BA.debugLineNum = 50;BA.debugLine="Private Sub consult_ApiCat";
 //BA.debugLineNum = 52;BA.debugLine="End Sub";
return @"";
}
- (B4ILabelWrapper*)  _createlabel:(NSString*) _eventname{
B4ILabelWrapper* _l = nil;
 //BA.debugLineNum = 118;BA.debugLine="Public Sub CreateLabel(Eventname As String) As Lab";
 //BA.debugLineNum = 119;BA.debugLine="Private l As Label";
_l = [B4ILabelWrapper new];
 //BA.debugLineNum = 120;BA.debugLine="l.Initialize(Eventname)";
[_l Initialize:self.bi :_eventname];
 //BA.debugLineNum = 124;BA.debugLine="Return l";
if (true) return _l;
 //BA.debugLineNum = 125;BA.debugLine="End Sub";
return nil;
}

- (void)initializeStaticModules {
    [[b4i_main new]initializeModule];
[[b4i_httputils2service new]initializeModule];
[[b4i_listcatspage new]initializeModule];

}
- (NSString*)  _process_globals{
self->__httputils2service=[b4i_httputils2service new];
self->__listcatspage=[b4i_listcatspage new];
 //BA.debugLineNum = 13;BA.debugLine="Sub Process_Globals";
 //BA.debugLineNum = 14;BA.debugLine="Public App As Application";
self->__app = [B4IApplicationWrapper new];
 //BA.debugLineNum = 15;BA.debugLine="Public NavControl As NavigationController";
self->__navcontrol = [B4INavigationControllerWrapper new];
 //BA.debugLineNum = 16;BA.debugLine="Private Page As Page";
self->__page = [B4IPage new];
 //BA.debugLineNum = 17;BA.debugLine="Private xui As XUI";
self->__xui = [B4IXUI new];
 //BA.debugLineNum = 18;BA.debugLine="Private mCallback As Panel";
self->__mcallback = [B4IPanelWrapper new];
 //BA.debugLineNum = 19;BA.debugLine="Private background As Panel";
self->__background = [B4IPanelWrapper new];
 //BA.debugLineNum = 20;BA.debugLine="Private img As ImageView";
self->__img = [B4IImageViewWrapper new];
 //BA.debugLineNum = 21;BA.debugLine="Private LblUiIonverse As Label";
self->__lbluiionverse = [B4ILabelWrapper new];
 //BA.debugLineNum = 22;BA.debugLine="Private lblION As Label";
self->__lblion = [B4ILabelWrapper new];
 //BA.debugLineNum = 23;BA.debugLine="Private lblVerse As Label";
self->__lblverse = [B4ILabelWrapper new];
 //BA.debugLineNum = 24;BA.debugLine="Private LblDsc As Label";
self->__lbldsc = [B4ILabelWrapper new];
 //BA.debugLineNum = 25;BA.debugLine="Private Background2 As Panel";
self->__background2 = [B4IPanelWrapper new];
 //BA.debugLineNum = 26;BA.debugLine="Public valueObject As Object";
self->__valueobject = [NSObject new];
 //BA.debugLineNum = 27;BA.debugLine="Public stringPosts As String = \"\"";
self->__stringposts = @"";
 //BA.debugLineNum = 28;BA.debugLine="End Sub";
return @"";
}
- (int)  _x:(int) _number{
double _a = 0.0;
int _b = 0;
 //BA.debugLineNum = 127;BA.debugLine="Private Sub x (Number As Int) As Int";
 //BA.debugLineNum = 128;BA.debugLine="Private a As Double = Number/100";
_a = _number/(double)100;
 //BA.debugLineNum = 129;BA.debugLine="Private b As Int = mCallback.Width*a";
_b = (int) ([self->__mcallback Width]*_a);
 //BA.debugLineNum = 130;BA.debugLine="Return b";
if (true) return _b;
 //BA.debugLineNum = 131;BA.debugLine="End Sub";
return 0;
}
- (NSString*)  _xviewes{
 //BA.debugLineNum = 54;BA.debugLine="Private Sub XViewes";
 //BA.debugLineNum = 55;BA.debugLine="Background2.Color = Colors.White";
[self->__background2 setColor:[[self->___c Colors] White]];
 //BA.debugLineNum = 56;BA.debugLine="Background2.SetBorder(0,0,15dip)";
[self->__background2 SetBorder:(float) (0) :(int) (0) :(float) (((int) (15)))];
 //BA.debugLineNum = 57;BA.debugLine="mCallback.AddView(Background2,x(25),y(42),x(50),x";
[self->__mcallback AddView:(UIView*)((self->__background2).object) :(float) ([self _x:(int) (25)]) :(float) ([self _y:(int) (42)]) :(float) ([self _x:(int) (50)]) :(float) ([self _x:(int) (50)])];
 //BA.debugLineNum = 58;BA.debugLine="Background2.Visible = False";
[self->__background2 setVisible:false];
 //BA.debugLineNum = 61;BA.debugLine="lblION.Font = Font.CreateNewBold(20)";
[self->__lblion setFont:[[self->___c Font] CreateNewBold:(float) (20)]];
 //BA.debugLineNum = 62;BA.debugLine="lblION.TextAlignment = lblION.ALIGNMENT_RIGHT";
[self->__lblion setTextAlignment:[self->__lblion ALIGNMENT_RIGHT]];
 //BA.debugLineNum = 63;BA.debugLine="lblION.TextColor = 0xFF124342";
[self->__lblion setTextColor:((int)0xff124342)];
 //BA.debugLineNum = 64;BA.debugLine="lblION.Text = \"The\"";
[self->__lblion setText:@"The"];
 //BA.debugLineNum = 66;BA.debugLine="mCallback.AddView(lblION,10dip,y(55),(mCallback.W";
[self->__mcallback AddView:(UIView*)((self->__lblion).object) :(float) (((int) (10))) :(float) ([self _y:(int) (55)]) :(float) (([self->__mcallback Width]/(double)2)-((int) (45))) :(float) (((int) (40)))];
 //BA.debugLineNum = 67;BA.debugLine="lblION.Visible = False";
[self->__lblion setVisible:false];
 //BA.debugLineNum = 69;BA.debugLine="lblVerse.Font = Font.CreateNewBold(20)";
[self->__lblverse setFont:[[self->___c Font] CreateNewBold:(float) (20)]];
 //BA.debugLineNum = 70;BA.debugLine="lblVerse.TextAlignment = lblVerse.ALIGNMENT_LEFT";
[self->__lblverse setTextAlignment:[self->__lblverse ALIGNMENT_LEFT]];
 //BA.debugLineNum = 71;BA.debugLine="lblVerse.Text = \"Cats App\"";
[self->__lblverse setText:@"Cats App"];
 //BA.debugLineNum = 72;BA.debugLine="lblVerse.TextColor = 0xFF640BC4";
[self->__lblverse setTextColor:((int)0xff640bc4)];
 //BA.debugLineNum = 73;BA.debugLine="mCallback.AddView(lblVerse,lblION.Left + lblION.W";
[self->__mcallback AddView:(UIView*)((self->__lblverse).object) :(float) ([self->__lblion Left]+[self->__lblion Width]+((int) (8))) :[self->__lblion Top] :[self->__lblion Width] :[self->__lblion Height]];
 //BA.debugLineNum = 74;BA.debugLine="lblVerse.Visible = False";
[self->__lblverse setVisible:false];
 //BA.debugLineNum = 77;BA.debugLine="LblDsc.Font = Font.CreateNewBold(17)";
[self->__lbldsc setFont:[[self->___c Font] CreateNewBold:(float) (17)]];
 //BA.debugLineNum = 78;BA.debugLine="LblDsc.TextAlignment = LblDsc.ALIGNMENT_CENTER";
[self->__lbldsc setTextAlignment:[self->__lbldsc ALIGNMENT_CENTER]];
 //BA.debugLineNum = 79;BA.debugLine="LblDsc.Text = \"Johan Hormaza\"";
[self->__lbldsc setText:@"Johan Hormaza"];
 //BA.debugLineNum = 80;BA.debugLine="LblDsc.TextColor = 0xFFD5D5D5";
[self->__lbldsc setTextColor:((int)0xffd5d5d5)];
 //BA.debugLineNum = 81;BA.debugLine="mCallback.AddView(LblDsc,15dip,lblION.Top + lblIO";
[self->__mcallback AddView:(UIView*)((self->__lbldsc).object) :(float) (((int) (15))) :(float) ([self->__lblion Top]+[self->__lblion Height]) :(float) ([self->__mcallback Width]-((int) (45))) :(float) (((int) (30)))];
 //BA.debugLineNum = 82;BA.debugLine="LblDsc.Visible = False";
[self->__lbldsc setVisible:false];
 //BA.debugLineNum = 84;BA.debugLine="End Sub";
return @"";
}
- (int)  _y:(int) _number{
double _a = 0.0;
int _b = 0;
 //BA.debugLineNum = 133;BA.debugLine="Private Sub y (Number As Int) As Int";
 //BA.debugLineNum = 134;BA.debugLine="Private a As Double = Number/100";
_a = _number/(double)100;
 //BA.debugLineNum = 135;BA.debugLine="Private b As Int = mCallback.Height*a";
_b = (int) ([self->__mcallback Height]*_a);
 //BA.debugLineNum = 136;BA.debugLine="Return b";
if (true) return _b;
 //BA.debugLineNum = 137;BA.debugLine="End Sub";
return 0;
}
@end
