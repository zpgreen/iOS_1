//
//  Book.h
//  BookManager
//
//  Created by 강인철 on 2022/03/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *genre;
@property(nonatomic,strong) NSString *author;

-(void)bookPrint;

@end

NS_ASSUME_NONNULL_END
