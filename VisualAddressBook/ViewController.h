//
//  ViewController.h
//  VisualAddressBook
//
//  Created by 강인철 on 2022/03/16.
//

#import <UIKit/UIKit.h>
@class BookManager;
@interface ViewController : UIViewController{
    BookManager *mybook;
}
@property (nonatomic,strong) IBOutlet UITextView *resultTextView;
@property (nonatomic,strong) IBOutlet UITextField *nameTextField;
@property (nonatomic,strong) IBOutlet UITextField *genreTextField;
@property (nonatomic,strong) IBOutlet UITextField *authorTextField;
@property (nonatomic,strong) IBOutlet UILabel *countLabel;

-(IBAction)showAllBookAction:(id)sender;
-(IBAction)addBookAction:(id)sender;
-(IBAction)findBookAction:(id)sender;
-(IBAction)removeBookAction:(id)sender;

@end

