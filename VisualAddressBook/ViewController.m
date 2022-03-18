//
//  ViewController.m
//  VisualAddressBook
//
//  Created by 강인철 on 2022/03/16.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView;
@synthesize nameTextField;
@synthesize genreTextField;
@synthesize authorTextField;
@synthesize countLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    Book *book1 = [[Book alloc]init];
    book1.name = @"햄릿";
    book1.genre = @"비극";
    book1.author = @"셰익스피어";
    
    [book1 bookPrint];
    
    Book *book2 = [[Book alloc]init];
    book2.name = @"누구를 위하여 종을 울리나";
    book2.genre = @"전쟁소설";
    book2.author = @"해밍웨이";
    
    [book2 bookPrint];
    
    Book *book3 = [[Book alloc]init];
    book3.name = @"죄와 벌";
    book3.genre = @"사실주의";
    book3.author = @"톨스토이";
    
    [book3 bookPrint];
    
    mybook = [[BookManager alloc]init];
    
    [mybook addBook:book1];
    [mybook addBook:book2];
    [mybook addBook:book3];
    
    countLabel.text = [NSString stringWithFormat:@"%li",[mybook countBook]];
    // Do any additional setup after loading the view.
}
-(IBAction)showAllBookAction:(id)sender{
//    NSLog(@"%@",[mybook showAllBook]);
    resultTextView.text = [mybook showAllBook];
}
-(IBAction)addBookAction:(id)sender{
    Book *bookTemp = [[Book alloc]init];
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [mybook addBook:bookTemp];
    countLabel.text = [NSString stringWithFormat:@"%li",[mybook countBook]];
    resultTextView.text = @"책이 추가 됐습니다.";
}
-(IBAction)findBookAction:(id)sender{
    NSString *strTemp = [mybook findBook:nameTextField.text];
    if(strTemp != nil){
        resultTextView.text = strTemp;
    }else{
        resultTextView.text = @"찾으시는 책이 없습니다";
    }
}
-(IBAction)removeBookAction:(id)sender{
    NSString *strTemp = [mybook removeBook:nameTextField.text];
    if(strTemp != nil){
        NSMutableString *str = [[NSMutableString alloc]init];
        [str appendString:strTemp];
        [str appendString:@"책이 지워졌습니다"];
        resultTextView.text = str;
        countLabel.text = [NSString stringWithFormat:@"%li",[mybook countBook]];
    }else{
        resultTextView.text = @"지우려는 책이 없습니다";
    }
}

@end
