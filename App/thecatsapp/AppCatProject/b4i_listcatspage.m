
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
                self->_state = 1;
                self->_listbitmap = [B4IList new];
                self->_listbitmap = [self.bi ArrayToList:[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:(NSObject*)(@"Cat1.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat2.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat3.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat4.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat5.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat6.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat7.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat8.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat9.jpg")],[B4I nilToNSNull:(NSObject*)(@"Cat10.jpg")]]]];
                [parent->__jhrlistview1 _clear];
                self->_j = [b4i_httpjob new];
                [self->_j _initialize /*NSString**/ :self.bi :@"" :parent];
                [self->_j _download /*NSString**/ :@"https://api.thecatapi.com/v1/breeds"];
                [[self->_j _getrequest /*B4IHttpRequest**/ ] SetHeader:@"x-api-key" :@"bda53789-d59e-46cd-9bc4-2936630fde39"];
                [parent->___c WaitFor:@"jobdone:" :self.bi :self :(NSObject*)(self->_j)];
                self->_state = 15;
                return;
            case 15:
                self->_state = 1;
                self->_j = ((b4i_httpjob*) result[0]);
                ;
                if (true) break;
                
            case 1:
                self->_state = 8;
                if (self->_j->__success) {
                    self->_state = 3;
                }if (true) break;
                
            case 3:
                self->_state = 4;
                self->_catslist = [B4IList new];
                self->_catslist = [((B4IJSONConverter*) [B4IObjectWrapper createWrapper:[B4IJSONConverter new] object:(NSObject*)([self->_j _getstring /*NSString**/ ])]) ToList];
                if (true) break;
                
            case 4:
                self->_state = 7;
                group10 = self->_catslist;
                index10 = 0;
                groupLen10 = group10.Size;
                self->_state = 16;
                if (true) break;
                
            case 16:
                self->_state = 7;
                if (index10 < groupLen10) {
                    self->_state = 6;
                    self->_colrootmap = (B4IMap*)([group10 Get:index10]);}
                if (true) break;
                
            case 17:
                self->_state = 16;
                index10++;
                if (true) break;
                
            case 6:
                
                self->_state = 17;
                self->_cats = [_datacats new];
                [self->_cats Initialize];
                self->_cats->_nameRazaCat = [self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"name")]];
                self->_cats->_DescriptionCat = [self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"description")]];
                self->_cats->_inteligencia = [self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"intelligence")]];
                self->_cats->_paisOrigen = [self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"origin")]];
                self->_cats->_imageFile = [self.bi ObjectToString:[self->_listbitmap Get:(int) ([parent->___c Rnd:(int) (0) :(int) (9)]%[self->_listbitmap Size])]];
                [parent->___c LogImpl:@"06488082" :[self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"name")]] :[[parent->___c Colors] Blue]];
                self->_p = [B4IPanelWrapper new];
                self->_p = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([parent->__xui CreatePanel:self.bi :@""]).object)];
                [self->_p SetLayoutAnimated:(int) (0) :(float) (1) :(float) (0) :(float) (0) :[[parent->__jhrlistview1 _asview] Width] :(float) (((int) (280)))];
                [parent->__jhrlistview1 _add:(B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((self->_p).object)] :(NSObject*)(self->_cats)];
                if (true) break;
                if (true) break;
                
            case 7:
                self->_state = 8;
                ;
                if (true) break;
                
            case 8:
                self->_state = 9;
                ;
                [self->_j _release];
                if (true) break;
                
            case 9:
                self->_state = 14;
                if ([parent->__jhrlistview1 _getsize]==0) {
                    self->_state = 11;
                }else {
                    self->_state = 13;
                }if (true) break;
                
            case 11:
                self->_state = 14;
                [((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__imgemptylist).object)]) setVisible:true];
                if (true) break;
                
            case 13:
                self->_state = 14;
                [((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__imgemptylist).object)]) setVisible:false];
                if (true) break;
                
            case 14:
                self->_state = -1;
                ;
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
    _no = [B4INativeObject new];
    _no = (B4INativeObject*) [B4IObjectWrapper createWrapper:[B4INativeObject new] object:(NSObject*)((_textfield1).object)];
    [_no SetField:@"inputAccessoryView" :(NSObject*)((_view1).object)];
    return @"";
}
- (NSString*)  _btndone_click{
    [self->__page ResignFocus];
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
    return @"";
}
- (NSString*)  _jhrlistview1_itemclick:(int) _index :(NSObject*) _value{
    self->__main->__valueobject /*NSObject**/  = _value;
    return @"";
}
- (NSString*)  _jhrlistview1_visiblerangechanged:(int) _firstindex :(int) _lastindex{
    int _extrasize = 0;
    int _i = 0;
    B4IPanelWrapper* _p = nil;
    _datacats* _du = nil;
    _extrasize = (int) (2);
    {
        const int step2 = 1;
        const int limit2 = (int) ([self->__jhrlistview1 _getsize]-1);
        _i = (int) (0) ;
        for (;_i <= limit2 ;_i = _i + step2 ) {
            _p = [B4IPanelWrapper new];
            _p = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([self->__jhrlistview1 _getpanel:_i]).object)];
            if (_i>_firstindex-_extrasize && _i<_lastindex+_extrasize) {
                if ([_p NumberOfViews]==0) {
                    _du = (_datacats*)([self->__jhrlistview1 _getvalue:_i]);
                    [_p LoadLayout:@"listCatsDesing" :self.bi];
                    [self->__lblnamerazacat setText:_du->_nameRazaCat];
                    [self->__lblorigen setText:_du->_paisOrigen];
                    [self->__lbldescriptioncat setText:_du->_DescriptionCat];
                    [self->__lblintelligence setText:[@[@"#",_du->_inteligencia] componentsJoinedByString:@""]];
                    [self->__imgcats setBitmap:[self->___c LoadBitmap:[[self->___c File] DirAssets] :_du->_imageFile]];
                };
            }else {
                if ([_p NumberOfViews]>0) {
                    [_p RemoveAllViews];
                };
            };
        }
    };
    return @"";
}
- (NSString*)  _lblbuttonrefresh_click{
    [self _consultlistcats];
    return @"";
}
- (NSString*)  _process_globals{
    self->__main=[b4i_main new];
    self->__httputils2service=[b4i_httputils2service new];
    self->__page = [B4IPage new];
    self->__pnlbuscador = [B4IPanelWrapper new];
    self->__edtbuscador = [B4ITextFieldWrapper new];
    self->__jhrlistview1 = [b4i_jhrlistview new];
    self->__xui = [B4IXUI new];
    ;
    self->__imgemptylist = [B4IImageViewWrapper new];
    self->__lblnamerazacat = [B4ILabelWrapper new];
    self->__lbldescriptioncat = [B4ILabelWrapper new];
    self->__lblintelligence = [B4ILabelWrapper new];
    self->__lblorigen = [B4ILabelWrapper new];
    self->__imgcats = [B4IImageViewWrapper new];
    return @"";
}
- (NSString*)  _show{
    B4IPanelWrapper* _pdone = nil;
    if ([self->__page IsInitialized]==false) {
        [self->__page Initialize:self.bi :@"Page"];};
    [self->__main->__navcontrol ShowPage:(UIViewController*)((self->__page).object)];
    [[self->__page RootPanel] RemoveAllViews];
    [[self->__page RootPanel] LoadLayout:@"Page2" :self.bi];
    _pdone = [B4IPanelWrapper new];
    [_pdone Initialize:self.bi :@""];
    [_pdone LoadLayout:@"keyBoardDone" :self.bi];
    [_pdone setHeight:(float) (46)];
    [self _addviewtokeyboard:self->__edtbuscador :(B4IViewWrapper*) [B4IObjectWrapper createWrapper:[B4IViewWrapper new] object:(UIView*)((_pdone).object)]];
    [self->__jhrlistview1 _clear];
    [self _consultlistcats];
    return @"";
}
@end
