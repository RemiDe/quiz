//
//  ViewController.m
//  Quiz
//
//  Created by ohtatomotaka on 2014/12/03.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import "ViewController.h"
#import "ResultViewController.h"
//何問出題するかの設定
#define COUNT 10
@interface ViewController ()

@end

@implementation ViewController

//アプリの起動時に最初に呼ばれる
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //auizListArrayを初期化
    quizListArray= [NSMutableArray array];
    //変数の初期化処理
    sumCount = 0;
    answerCount = 0;
    
    //↓で配列に問題を追加
    // TODO:ここに問題を追加
    //--------------ここから下にクイズの問題を書いてみよう！--------------//
    
    //[quizListArray addObject:[NSArray arrayWithObjects:@"2LifeisTech!は何をしている会社ですか？", @"まっすー帝国", @"みっちー帝国",@"IT教育",@"3",nil] ];の形で問題を書く
    //例↓
    [quizListArray addObject:[NSArray arrayWithObjects:@"初音ミクが発売された日は？",@"４月９日",@"８月３１日",@"１０月１８日",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"VY1の愛称は？",@"MIZUKI",@"MZUKI",@"MIZKI",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"VY2のパッケージには何が描いてある？",@"刀",@"扇子",@"袴",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"ボカロPが集まって作ったボカロは？",@"結月ゆかり",@"兎眠りおん",@"歌手音ピコ",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"MAYUの持っているぬいぐるみの名前は？",@"宇佐之ミミ",@"宇佐乃ミミ",@"兎佐乃ミミ",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"ZOLA PROJECTに入っていないボカロは？",@"YUU",@"MIL",@"CUL",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"英語圏生まれのボカロは？",@"Avanna",@"Mew",@"Lily",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"一番年下は？",@"MAYU",@"鏡音リン",@"初音ミク",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"MAYUが右手に持っているものは？",@"ぬいぐるみ",@"マイク",@"斧",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"MEIKOが発売されたのは初音ミクより何年前？",@"３年前",@"４年前",@"５年前",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"GUMIの製品名は？",@"Gumipoid",@"Megpoid",@"Mugpoid",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"歌愛ユキの年齢は？",@"５歳",@"７歳",@"９歳",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"氷山キヨテルのロックバンドのボーカルとしての名前は？",@"テル",@"キヨ",@"キル",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"ボーカロイド初の英語と日本語のバイリンガルは？",@"GUMI",@"巡音ルカ",@"IA",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"この中でキャラクターとはコラボしていないのは？",@"ガチャッポイド",@"猫村いろは",@"神威がくぽ",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"キャラクター・ボーカル・シリーズの第一弾は？",@"初音ミク",@"MEIKO",@"巡音ルカ",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"KAITOの発売日は？",@"１２月６日",@"２月１７日",@"９月２日",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"MEIKOの発売日は？",@"２月２４日",@"５月１２日",@"１１月５日",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"鏡音リン,レンの発売日は？",@"１２月２７日",@"３月１０日",@"８月３日",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"巡音ルカの発売日は？",@"１０月１９日",@"１月３０日",@"４月２０日",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"GUMIの発売日は？",@"３月２７日",@"１１月１９日",@"６月２６日",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"IAを提供した会社は？",@"1st PLACE",@"YAMAHA",@"インターネット",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"初音ミクの年齢は？",@"１４歳",@"１６歳",@"１８歳",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"鏡音リンの年齢は？",@"１１歳",@"１６歳",@"１４歳",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"巡音ルカの年齢は？",@"２０歳",@"１８歳",@"２３歳",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"VY2の愛称は？",@"風馬",@"勇馬",@"冬馬",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"蒼姫ラピスの身長は？",@"１７０mm",@"１００mm",@"１５０mm",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"WILの体重は？",@"５８kg",@"５１kg",@"５５kg",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"KYOの体重は？",@"５９kg",@"６０kg",@"５３kg",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"YUUの体重は？",@"５０kg",@"５７kg",@"５３kg",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"巡音ルカの身長は？",@"１６２cm",@"１５８cm",@"１６０cm",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"初音ミクの身長は？",@"１５５cm",@"１５８cm",@"１５２cm",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"鏡音リンの身長は？",@"１５４cm",@"１５６cm",@"１５２cm",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"鏡音レンの身長は？",@"１５６cm",@"１５２cm",@"１５４cm",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"兎眠りおんの年齢は？",@"１７歳",@"１６歳",@"１４歳",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"ガチャッポイドの擬人化されたキャラクターの名前は？",@"ヒュウト",@"ユウト",@"リュウト",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"初音ミクの左腕に書いてあるのは？",@"０１",@"１",@"NO.1",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"Mewのパッケージに描いてある猫の名前は？",@"ヒロ美",@"サバ美",@"シノ美",@"2",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"YAMAHAから発売されたボーカロイドは？",@"蒼姫ラピス",@"MEIKO",@"VY1",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"歌手音ピコの読み方は？",@"うたてねぴこ",@"うたたねぴこ",@"うたおとぴこ",@"2",nil] ];

    //--------------ここから上にクイズの問題を書いてみよう！--------------//
    //最初の問題を設定
    [self setQuestion];
}
//選択肢のボタンをおした時の処理
-(IBAction)answerIsChoise1{
    if (answerNumber == 1) {
        answerCount = answerCount +1;
    }
    [self setQuestion];
}
-(IBAction)answerIsChoise2{
    if (answerNumber == 2) {
        answerCount = answerCount +1;
    }
    [self setQuestion];
}
-(IBAction)answerIsChoise3{
    if (answerNumber == 3) {
        answerCount = answerCount +1;
    }
    [self setQuestion];
}
//配列から問題をセット&規定数出題した場合の画面推移
-(void)setQuestion{
    //define　COUNTした値だけ問題を出題したら結果画面に推移する
    if (sumCount == COUNT) {
        [self performSegueWithIdentifier:@"Result" sender:self];

    }else{
        //現在解いている問題の出題数を保存
        sumCount = sumCount +1;
        //クイズがRANDOMに出題されるように設定
        int section = arc4random() % [quizListArray count];
        section = 0;
        NSLog(@"section:%d",section);
        //配列の中の問題を表示する
        probelemText.text=[[quizListArray objectAtIndex:section] objectAtIndex:0];
        [choise1 setTitle:[[quizListArray objectAtIndex:section] objectAtIndex:1] forState:UIControlStateNormal];
        [choise2 setTitle:[[quizListArray objectAtIndex:section] objectAtIndex:2] forState:UIControlStateNormal];
        [choise3 setTitle:[[quizListArray objectAtIndex:section] objectAtIndex:3] forState:UIControlStateNormal];
        answerNumber = [[[quizListArray objectAtIndex:section] objectAtIndex:4] intValue];
        //問題の重複表示を回避　↓コメントアウトで重複も可能
        [quizListArray removeObjectAtIndex:section];
    }
}
//画面推移時に値を渡す
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Result"]) {
        ResultViewController *viewCon = segue.destinationViewController;
        viewCon.getAnswerCount = answerCount;
        viewCon.getSumCount = sumCount;
    }
}
@end
