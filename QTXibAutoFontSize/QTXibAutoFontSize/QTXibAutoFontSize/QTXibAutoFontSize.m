//
//  XibAutoFontSize.m
//  QTCoreMain
//
//  Created by MasterBie on 2020/7/29.
//  Copyright © 2020 MasterBie. All rights reserved.
//


#import "XibAutoFontSize.h"
#import <objc/runtime.h>

#define AutoFontSizeOffWidth [UIScreen mainScreen].bounds.size.width / 375
#define AutoFontSizeOffHeight [UIScreen mainScreen].bounds.size.height / 667
#define AutoFontSizeViewTag 3333

@implementation UIButton (AutoFontSize)

+ (void)load{
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(myInitWithCoder:));
    method_exchangeImplementations(imp, myImp);
}

- (id)myInitWithCoder:(NSCoder*)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        
        //部分不像改变字体的 把tag值设置成333跳过
        if(self.titleLabel.tag == AutoFontSizeViewTag){
            CGFloat fontSize = self.titleLabel.font.pointSize;
            self.titleLabel.font = [self.titleLabel.font fontWithSize:(fontSize * AutoFontSizeOffWidth)];
        }
    }
    return self;
}

@end


@implementation UILabel (AutoFontSize)

+ (void)load{
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(myInitWithCoder:));
    method_exchangeImplementations(imp, myImp);
}

- (id)myInitWithCoder:(NSCoder*)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        NSLog(@"%@", self.font);
        //部分不像改变字体的 把tag值设置成333跳过
        if(self.tag == 3333){
            CGFloat fontSize = self.font.pointSize;
            self.font = [self.font fontWithSize:floor(fontSize * AutoFontSizeOffWidth)  ];
        }
    }
    return self;
}

@end

@implementation UITextField (AutoFontSize)

+ (void)load{
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(myInitWithCoder:));
    method_exchangeImplementations(imp, myImp);
}

- (id)myInitWithCoder:(NSCoder*)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        //部分不像改变字体的 把tag值设置成333跳过
        if(self.tag == AutoFontSizeViewTag){
            CGFloat fontSize = self.font.pointSize;
            self.font = [self.font fontWithSize:(fontSize * AutoFontSizeOffWidth)];
        }
    }
    return self;
}

@end

@implementation UITextView (AutoFontSize)

+ (void)load{
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(myInitWithCoder:));
    method_exchangeImplementations(imp, myImp);
}

- (id)myInitWithCoder:(NSCoder*)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        //部分不像改变字体的 把tag值设置成333跳过
        if(self.tag == AutoFontSizeViewTag){
            CGFloat fontSize = self.font.pointSize;
            self.font = [self.font fontWithSize:(fontSize * AutoFontSizeOffWidth)];
        }
    }
    return self;
}

@end
