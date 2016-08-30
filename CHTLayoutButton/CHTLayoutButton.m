//
//  CHTLayoutButton.m
//  CHTGithub
//
//  Created by cht on 16/7/15.
//  Copyright © 2016年 cht. All rights reserved.
//

#import "CHTLayoutButton.h"

@implementation CHTLayoutButton

- (instancetype)initWithFrame:(CGRect)frame subMargin:(CGFloat)subMargin layoutButtonType:(CHTLayoutButtonType)layoutButtonType{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        _subMargin = subMargin;
        _layoutButtonType = layoutButtonType;
        
        //default color
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //default font
        self.titleLabel.font = [UIFont systemFontOfSize:13];
        
    }
    return self;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state{
    
    [super setTitle:title forState:state];
    
}

- (void)setBtnTitle:(NSString *)btnTitle{
    
    _btnTitle = [btnTitle copy];
    [self setTitle:_btnTitle forState:UIControlStateNormal];
}

- (void)setSubMargin:(CGFloat)subMargin{
    
    _subMargin = subMargin;
    
    [self layoutSubviews];
}

- (void)setLayoutButtonType:(CHTLayoutButtonType)layoutButtonType{
    
    _layoutButtonType = layoutButtonType;
    
    [self layoutSubviews];
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    if (self.imageView.image) {
        
        switch (_layoutButtonType) {
            case CHTLayoutButtonTypeLeft:
                [self layoutSubviewsByTypeLeft];
                break;
            case CHTLayoutButtonTypeRight:
                [self layoutSubviewsByTypeRight];
                break;
            case CHTLayoutButtonTypeTop:
                [self layoutSubviewsByTypeTop];
                break;
            case CHTLayoutButtonTypeBottom:
                [self layoutSubviewsByTypeBottom];
                break;
            default:
                break;
        }
        
    }
}

- (void)layoutSubviewsByTypeLeft{
    
    CGFloat imageW = self.imageView.frame.size.width;
    CGFloat imageH = self.imageView.frame.size.height;
    
    CGFloat maxLabelW = CGRectGetWidth(self.frame) - imageW - X_MARGIN - _subMargin;
    CGSize maxSize = CGSizeMake(maxLabelW, 0);
    
    CGSize labelSize = CHT_MULTILINE_TEXTSIZE(self.titleLabel.text, self.titleLabel.font, maxSize, NSLineBreakByWordWrapping);
    CGFloat imageX = (CGRectGetWidth(self.frame) - imageW - labelSize.width - _subMargin) / 2;
    CGFloat imageY = (CGRectGetHeight(self.frame) - imageH) / 2;
    
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    
    CGFloat labelX = CGRectGetMaxX(self.imageView.frame) + _subMargin;
    CGFloat labelY = (CGRectGetHeight(self.frame) - labelSize.height) / 2;
    self.titleLabel.frame = CGRectMake(labelX, labelY, labelSize.width, labelSize.height);
    
}

- (void)layoutSubviewsByTypeRight{
    
    CGFloat imageW = self.imageView.frame.size.width;
    CGFloat imageH = self.imageView.frame.size.height;
    
    CGFloat maxLabelW = CGRectGetWidth(self.frame) - imageW - X_MARGIN - _subMargin;
    CGSize maxSize = CGSizeMake(maxLabelW, 0);
    
    CGSize labelSize = CHT_MULTILINE_TEXTSIZE(self.titleLabel.text, self.titleLabel.font, maxSize, NSLineBreakByWordWrapping);
    
    CGFloat labelX = (CGRectGetWidth(self.frame) - imageW - labelSize.width - _subMargin) / 2;
    CGFloat labelY = (CGRectGetHeight(self.frame) - labelSize.height) / 2;
    self.titleLabel.frame = CGRectMake(labelX, labelY, labelSize.width, labelSize.height);
    
    CGFloat imageX = CGRectGetMaxX(self.titleLabel.frame) + _subMargin;
    CGFloat imageY = (CGRectGetHeight(self.frame) - imageH) / 2;
    
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    
    
}

- (void)layoutSubviewsByTypeTop{
    
    CGSize maxSize = CGSizeMake(CGRectGetWidth(self.frame), CGRectGetHeight(self.frame));
    
    CGSize labelSize = CHT_MULTILINE_TEXTSIZE(self.titleLabel.text, self.titleLabel.font, maxSize, NSLineBreakByWordWrapping);
    
    CGFloat imageW = self.imageView.frame.size.width;
    CGFloat imageH = self.imageView.frame.size.height;
    CGFloat imageX = (CGRectGetWidth(self.frame) - imageW) / 2;
    CGFloat imageY = (CGRectGetHeight(self.frame) - imageH - labelSize.height - _subMargin) / 2;
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    
    CGFloat labelX = (CGRectGetWidth(self.frame) - labelSize.width) / 2;
    CGFloat labelY = CGRectGetMaxY(self.imageView.frame) + _subMargin;
    self.titleLabel.frame = CGRectMake(labelX, labelY, labelSize.width, labelSize.height);
    
}

- (void)layoutSubviewsByTypeBottom{
    
    CGSize maxSize = CGSizeMake(CGRectGetWidth(self.frame), CGRectGetHeight(self.frame));
    
    CGSize labelSize = CHT_MULTILINE_TEXTSIZE(self.titleLabel.text, self.titleLabel.font, maxSize, NSLineBreakByWordWrapping);
    
    CGFloat imageW = self.imageView.frame.size.width;
    CGFloat imageH = self.imageView.frame.size.height;
    
    CGFloat labelX = (CGRectGetWidth(self.frame) - labelSize.width) / 2;
    CGFloat labelY = (CGRectGetHeight(self.frame) - labelSize.height - imageH - _subMargin) / 2;
    self.titleLabel.frame = CGRectMake(labelX, labelY, labelSize.width, labelSize.height);
    
    
    CGFloat imageX = (CGRectGetWidth(self.frame) - imageW) / 2;
    CGFloat imageY = CGRectGetMaxY(self.titleLabel.frame) + _subMargin;
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
