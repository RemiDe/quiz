//
//  ResultViewController.h
//  Quiz
//
//  Created by ohtatomotaka on 2014/12/04.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import "ViewController.h"

@interface ResultViewController : UIViewController{
    int _getAnswerCount;
    int _getSumCount;
    
    //正解した数を表示
    IBOutlet UILabel *answerLabel;
}
@property (nonatomic) int getAnswerCount;
@property (nonatomic) int getSumCount;
@end

