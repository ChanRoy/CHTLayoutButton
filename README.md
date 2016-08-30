# CHTLayoutButton

![] (https://github.com/ChanRoy/CHTLayoutButton/blob/master/CHTLayoutButton.png)

## 简介

当UIButton存在UIImage和title时，自动实现调整布局展示

## 使用

### 属性

    //margin between text and image
    @property (nonatomic, assign) CGFloat subMargin;

    //button type
    @property (nonatomic, assign) CHTLayoutButtonType layoutButtonType;

    @property (nonatomic, copy) NSString * btnTitle;
   
### 初始化

    - (instancetype)initWithFrame:(CGRect)frame
                    subMargin:(CGFloat)subMargin
             layoutButtonType:(CHTLayoutButtonType)layoutButtonType;
             
### 按钮类型 CHTLayoutButtonType

    CHTLayoutButtonTypeLeft     = 0,    //image on the left
    CHTLayoutButtonTypeRight    = 1,    //image on the right
    CHTLayoutButtonTypeTop      = 2,    //image on the top
    CHTLayoutButtonTypeBottom   = 3     //image on the bottom
    
## Demo

    CHTLayoutButton *leftBtn = [[CHTLayoutButton alloc]initWithFrame:CGRectMake(0, 0, 90, 90)
                                                           subMargin:2
                                                    layoutButtonType:CHTLayoutButtonTypeLeft];
    leftBtn.center = CGPointMake(SCREEN_WIDTH / 4, SCREEN_HEIGHT / 4);
    [leftBtn setTitle:@"搜索" forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    [self.view addSubview:leftBtn];

