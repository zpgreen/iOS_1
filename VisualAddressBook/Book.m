//
//  Book.m
//  BookManager
//
//  Created by 강인철 on 2022/03/14.
//

#import "Book.h"

@implementation Book

@synthesize name,genre,author;

-(void)bookPrint{
    NSLog(@"Name : %@",name);
    NSLog(@"Name : %@",genre);
    NSLog(@"Name : %@",author);
}
@end
