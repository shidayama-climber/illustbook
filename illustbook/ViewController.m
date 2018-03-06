//
//  ViewController.m
//  illustbook
//
//  Created by shidayamasyuuhei on 2018/02/09.
//  Copyright © 2018年 shidayamasyuuhei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *parentView;
@property (strong, nonatomic) IBOutlet UIView *menuView;
@property (strong, nonatomic) IBOutlet UIView *menuBackgroundView;

@property bool phoneticActionFlg;
@property bool class1Flg;
@property bool class2Flg;
@property bool class3Flg;
@property bool class4Flg;
@property bool class5Flg;
@property bool class6Flg;
@property bool menubarActionFlg;

@property int defaultPosX;
@property int defaultPosY;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _phoneticActionFlg = YES;
    _class1Flg = YES;
    _class2Flg = YES;
    _class3Flg = YES;
    _class4Flg = YES;
    _class5Flg = YES;
    _class6Flg = YES;
    _menubarActionFlg = YES;
    
    _defaultPosX = _menuView.frame.origin.x;
    _defaultPosY = _menuView.frame.origin.y;
    
    _menuView.frame = CGRectMake(1280, 0, _menuView.frame.size.width, _menuView.frame.size.height);
    _menuBackgroundView.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.02f];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)appear:(id)sender {
    UIButton *classBtn = (UIButton*)sender;
    NSString *numStr = [classBtn.titleLabel.text substringWithRange:NSMakeRange(0, 1)];
    NSString *textStr = [classBtn.titleLabel.text substringFromIndex:3];
    NSLog(@"tag:%ld name:%@",(long)[numStr integerValue],textStr);
    [self textAction:[numStr integerValue] type:textStr];
}


//学年ボタンが押されたらその学年の読み仮名だけ出すやつ
- (void)textAction:(NSInteger)num type:(NSString*)type{
    for(UIButton *button in [_parentView subviews]){
        if([type isEqualToString:@"表示"]){
            //tagが学年を表す 学年毎のボタンを消したり出したり
            switch (num) {
                case 1:
                    if(button.tag == 1){
                        button.alpha = 1;
                    }
                    break;
                case 2:
                    if(button.tag == 2){
                        button.alpha = 1;
                    }
                    break;
                case 3:
                    if(button.tag == 3){
                        button.alpha = 1;
                    }
                    break;
                case 4:
                    if(button.tag == 4){
                        button.alpha = 1;
                    }
                    break;
                case 5:
                    if(button.tag == 5){
                        button.alpha = 1;
                    }
                    break;
                case 6:
                    if(button.tag == 6){
                        button.alpha = 1;
                    }
                    break;
                default:
                    NSLog(@"default");
                    break;
            }
        }else if([type isEqualToString:@"非表示"]){
            //tagが学年を表す 学年毎のボタンを消したり出したり
            switch (num) {
                case 1:
                    if(button.tag == 1){
                        button.alpha = 0.02f;
                    }
                    break;
                case 2:
                    if(button.tag == 2){
                        button.alpha = 0.02f;
                    }
                    break;
                case 3:
                    if(button.tag == 3){
                        button.alpha = 0.02f;
                    }
                    break;
                case 4:
                    if(button.tag == 4){
                        button.alpha = 0.02f;
                    }
                    break;
                case 5:
                    if(button.tag == 5){
                        button.alpha = 0.02f;
                    }
                    break;
                case 6:
                    if(button.tag == 6){
                        button.alpha = 0.02f;
                    }
                    break;
                default:
                    NSLog(@"default");
                    break;
            }
        }
    }
}

- (IBAction)classCheckAction:(id)sender {
    UIButton *classBtn = (UIButton*)sender;
    NSString *numStr = [classBtn.titleLabel.text substringWithRange:NSMakeRange(0, 1)];
    [self classAction:[numStr integerValue]];
}


- (void)classAction:(NSInteger)num{
    
    
    for(UIButton *button in [_parentView subviews]){
        //tagが学年を表す 学年毎のボタンを消したり出したり
        switch (num) {
            case 1:
                if(button.tag > 1){
                    if(_class1Flg){
                        button.alpha = 1;
                    }else if(!_class1Flg){
                        button.alpha = 0.02f;
                    }
                }
                break;
            case 2:
                if(button.tag > 2){
                    if(_class2Flg){
                        button.alpha = 1;
                    }else if(!_class2Flg){
                        button.alpha = 0.02f;
                    }
                }
                break;
            case 3:
                if(button.tag > 3){
                    if(_class3Flg){
                        button.alpha = 1;
                    }else if(!_class3Flg){
                        button.alpha = 0.02f;
                    }
                }
                break;
            case 4:
                if(button.tag > 4){
                    if(_class4Flg){
                        button.alpha = 1;
                    }else if(!_class4Flg){
                        button.alpha = 0.02f;
                    }
                }
                break;
            case 5:
                if(button.tag > 5){
                    if(_class5Flg){
                        button.alpha = 1;
                    }else if(!_class5Flg){
                        button.alpha = 0.02f;
                    }
                }
                break;
            case 6:
                if(button.tag >= 6){
                    if(_class6Flg){
                        button.alpha = 1;
                    }else if(!_class6Flg){
                        button.alpha = 0.02f;
                    }
                }
                break;
            default:
                NSLog(@"default");
                break;
        }
    }
    
    switch (num) {
        case 1:
            if(_class1Flg){
                _class1Flg = NO;
            }else if(!_class1Flg){
                _class1Flg = YES;
            }
            break;
        case 2:
            if(_class2Flg){
                _class2Flg = NO;
            }else if(!_class2Flg){
                _class2Flg = YES;
            }
            break;
        case 3:
            if(_class3Flg){
                _class3Flg = NO;
            }else if(!_class3Flg){
                _class3Flg = YES;
            }
            break;
        case 4:
            if(_class4Flg){
                _class4Flg = NO;
            }else if(!_class4Flg){
                _class4Flg = YES;
            }
            break;
        case 5:
            if(_class5Flg){
                _class5Flg = NO;
            }else if(!_class5Flg){
                _class5Flg = YES;
            }
            break;
        case 6:
            if(_class6Flg){
                _class6Flg = NO;
            }else if(!_class6Flg){
                _class6Flg = YES;
            }
            break;
        default:
            NSLog(@"default");
            break;
    }
}


//ふりがなを押されたらすべてふりがなを表示したり消したりする
- (IBAction)phoneticAction:(id)sender {
    if(_phoneticActionFlg){
        for(UIButton *button in [_parentView subviews]){
            button.alpha = 1;
        }
        _phoneticActionFlg = NO;
    }else if(!_phoneticActionFlg){
        for(UIButton *button in [_parentView subviews]){
            button.alpha = 0.02f;
        }
        _phoneticActionFlg = YES;
    }
}

- (IBAction)menubarAction:(id)sender {
    if(_menubarActionFlg){
        [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^ {
            //アニメーションで変化させたい値を設定する（最終的に変更したい値）
            _menuView.frame = CGRectMake(_defaultPosX, _defaultPosY, _menuView.frame.size.width, _menuView.frame.size.height);
            _menuBackgroundView.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.6f];
        }completion:^(BOOL finished) {
            // アニメーション終了時
            _menubarActionFlg = NO;
        }];
        
    }else if(!_menubarActionFlg){
        [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^ {
            //アニメーションで変化させたい値を設定する（最終的に変更したい値）
            _menuView.frame = CGRectMake(1280, 0, _menuView.frame.size.width, _menuView.frame.size.height);
            _menuBackgroundView.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.02f];
        }completion:^(BOOL finished) {
            // アニメーション終了時
            _menubarActionFlg = YES;
        }];
    }
}



//サポートしている方向
#if __IPHONE_OS_VERSION_MAX_ALLOWED < 90000
- (NSUInteger)supportedInterfaceOrientations
#else
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
#endif
{
    return UIInterfaceOrientationMaskLandscape;
}


@end
