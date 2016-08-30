//
//  CHTLayoutButton.h
//  CHTGithub
//
//  Created by cht on 16/7/15.
//  Copyright © 2016年 cht. All rights reserved.
//

#import <UIKit/UIKit.h>

#define X_MARGIN 0

#if __IPHONE_OS_VERSION_MIN_REQUIRED >= 70000
#define CHT_MULTILINE_TEXTSIZE(text, font, maxSize, mode) [text length] > 0 ? [text \
boundingRectWithSize:maxSize options:(NSStringDrawingUsesLineFragmentOrigin) \
attributes:@{NSFontAttributeName:font} context:nil].size : CGSizeZero;
#else
#define CHT_MULTILINE_TEXTSIZE(text, font, maxSize, mode) [text length] > 0 ? [text \
sizeWithFont:font constrainedToSize:maxSize lineBreakMode:mode] : CGSizeZero;
#endif

//button type: image's position
typedef enum : NSUInteger {
    CHTLayoutButtonTypeLeft     = 0,    //image on the left
    CHTLayoutButtonTypeRight    = 1,    //image on the right
    CHTLayoutButtonTypeTop      = 2,    //image on the top
    CHTLayoutButtonTypeBottom   = 3     //image on the bottom
} CHTLayoutButtonType;


@interface CHTLayoutButton : UIButton

//margin between text and image
@property (nonatomic, assign) CGFloat subMargin;

//button type
@property (nonatomic, assign) CHTLayoutButtonType layoutButtonType;

@property (nonatomic, copy) NSString * btnTitle;

- (instancetype)initWithFrame:(CGRect)frame subMargin:(CGFloat)subMargin layoutButtonType:(CHTLayoutButtonType)layoutButtonType;

@end
