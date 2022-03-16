//
//  BookManager.h
//  BookManager
//
//  Created by 강인철 on 2022/03/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Book;
@interface BookManager : NSObject{
    NSMutableArray *bookList;
}

-(void)addBook:(Book *)bookObject;
-(NSString *)showAllBook;
-(NSInteger)countBook;
-(NSString *)findBook:(NSString *)name;
-(NSString *)removeBook:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
