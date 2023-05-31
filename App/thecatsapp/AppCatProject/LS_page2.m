
#import "iCore.h"
@interface LS_page2:NSObject
@end

@implementation LS_page2

- (void)LS_general:(B4ILayoutData*)views :(int)width :(int)height{
[B4ILayoutBuilder setScaleRate:0.3];
//BA.debugLineNum = 1;BA.debugLine="pnlBuscador.HorizontalCenter = 50%x"[Page2/General script]
[views get:@"pnlbuscador"].Left = (int)((50 / 100.0 * width) - ([views get:@"pnlbuscador"].Width / 2));
//BA.debugLineNum = 2;BA.debugLine="imgEmptyList.HorizontalCenter = 50%x"[Page2/General script]
[views get:@"imgemptylist"].Left = (int)((50 / 100.0 * width) - ([views get:@"imgemptylist"].Width / 2));

}
@end