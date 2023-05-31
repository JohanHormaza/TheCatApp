
#import "iCore.h"
@interface LS_splash:NSObject
@end

@implementation LS_splash

- (void)LS_general:(B4ILayoutData*)views :(int)width :(int)height{
[B4ILayoutBuilder setScaleRate:0.3];
[views get:@"img"].Height = (int)((90 / 100.0 * width));
//BA.debugLineNum = 3;BA.debugLine="img.Width = img.Height"[splash/General script]
[views get:@"img"].Width = (int)(([views get:@"img"].Height));
//BA.debugLineNum = 4;BA.debugLine="img.HorizontalCenter = 50%x"[splash/General script]
[views get:@"img"].Left = (int)((50 / 100.0 * width) - ([views get:@"img"].Width / 2));
//BA.debugLineNum = 5;BA.debugLine="img.VerticalCenter = 50%y"[splash/General script]
[views get:@"img"].Top = (int)((50 / 100.0 * height) - ([views get:@"img"].Height / 2));
//BA.debugLineNum = 7;BA.debugLine="background.Width = 110%y"[splash/General script]
[views get:@"background"].Width = (int)((110 / 100.0 * height));
//BA.debugLineNum = 8;BA.debugLine="background.Height = 110%y"[splash/General script]
[views get:@"background"].Height = (int)((110 / 100.0 * height));
//BA.debugLineNum = 9;BA.debugLine="background.HorizontalCenter = 50%x"[splash/General script]
[views get:@"background"].Left = (int)((50 / 100.0 * width) - ([views get:@"background"].Width / 2));
//BA.debugLineNum = 10;BA.debugLine="background.VerticalCenter = 50%y"[splash/General script]
[views get:@"background"].Top = (int)((50 / 100.0 * height) - ([views get:@"background"].Height / 2));
//BA.debugLineNum = 12;BA.debugLine="LblUiIonverse.Width = 100%x - 40dip"[splash/General script]
[views get:@"lbluiionverse"].Width = (int)((100 / 100.0 * width)-(40 * 1));
//BA.debugLineNum = 13;BA.debugLine="LblUiIonverse.Height = 35dip"[splash/General script]
[views get:@"lbluiionverse"].Height = (int)((35 * 1));
//BA.debugLineNum = 14;BA.debugLine="LblUiIonverse.Left = 20dip"[splash/General script]
[views get:@"lbluiionverse"].Left = (int)((20 * 1));
//BA.debugLineNum = 15;BA.debugLine="LblUiIonverse.Bottom = 100%y - 20dip"[splash/General script]
[views get:@"lbluiionverse"].Top = (int)((100 / 100.0 * height)-(20 * 1) - ([views get:@"lbluiionverse"].Height));

}
@end