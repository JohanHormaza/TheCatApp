#import "iCore.h"
#import "iHttp.h"
#import "iStringUtils.h"
#import "iXUI.h"
#import "JHRListView.h"
#import "iJSON.h"
@class b4i_main;
@class b4i_httputils2service;
@class _multipartfiledata;
@class b4i_httpjob;
@class _datacats;
@interface b4i_listcatspage : B4IStaticModule
{
@public B4IPage* __page;
@public B4IPanelWrapper* __pnlbuscador;
@public B4ITextFieldWrapper* __edtbuscador;
@public b4i_jhrlistview* __jhrlistview1;
@public B4IXUI* __xui;
@public B4IImageViewWrapper* __imgemptylist;
@public B4ILabelWrapper* __lblnamerazacat;
@public B4ILabelWrapper* __lbldescriptioncat;
@public B4ILabelWrapper* __lblintelligence;
@public B4ILabelWrapper* __lblorigen;
@public B4IImageViewWrapper* __imgcats;
@public b4i_main* __main;
@public b4i_httputils2service* __httputils2service;
    
}- (NSString*)  _addviewtokeyboard:(B4ITextFieldWrapper*) _textfield1 :(B4IViewWrapper*) _view1;
- (NSString*)  _btndone_click;
- (void)  _consultlistcats;
- (void)  _jobdone:(b4i_httpjob*) _j;
- (NSString*)  _edtbuscador_textchanged:(NSString*) _oldtext :(NSString*) _newtext;
- (NSString*)  _jhrlistview1_itemclick:(int) _index :(NSObject*) _value;
- (NSString*)  _jhrlistview1_visiblerangechanged:(int) _firstindex :(int) _lastindex;
- (NSString*)  _lblbuttonrefresh_click;
- (NSString*)  _process_globals;
@property (nonatomic)B4IPage* _page;
@property (nonatomic)B4IPanelWrapper* _pnlbuscador;
@property (nonatomic)B4ITextFieldWrapper* _edtbuscador;
@property (nonatomic)b4i_jhrlistview* _jhrlistview1;
@property (nonatomic)B4IXUI* _xui;
@property (nonatomic)B4IImageViewWrapper* _imgemptylist;
@property (nonatomic)B4ILabelWrapper* _lblnamerazacat;
@property (nonatomic)B4ILabelWrapper* _lbldescriptioncat;
@property (nonatomic)B4ILabelWrapper* _lblintelligence;
@property (nonatomic)B4ILabelWrapper* _lblorigen;
@property (nonatomic)B4IImageViewWrapper* _imgcats;
@property (nonatomic)b4i_main* _main;
@property (nonatomic)b4i_httputils2service* _httputils2service;
- (NSString*)  _show;
@end
@interface _datacats:NSObject
{
@public BOOL _IsInitialized;
@public NSString* _nameRazaCat;
@public NSString* _paisOrigen;
@public NSString* _inteligencia;
@public NSString* _DescriptionCat;
@public int _ID;
@public NSString* _imageFile;
    
}
@property (nonatomic)BOOL IsInitialized;
@property (nonatomic)NSString* nameRazaCat;
@property (nonatomic)NSString* paisOrigen;
@property (nonatomic)NSString* inteligencia;
@property (nonatomic)NSString* DescriptionCat;
@property (nonatomic)int ID;
@property (nonatomic)NSString* imageFile;
-(void)Initialize;
@end
