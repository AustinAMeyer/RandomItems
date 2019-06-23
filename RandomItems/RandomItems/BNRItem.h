//
//  BNRItem.h
//  RandomItems
//
//  Created by Austin on 6/22/19.
//  Copyright © 2019 Austin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRItem : NSObject
{
    
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
}

//Setter
- (void)setItemName:(NSString *)str;
//getter
- (NSString *) itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *) serialNumber;

- (void)setValueInDollars:(int)v;
- (int) valueInDollars;

- (NSDate *)dateCreated;

@end

NS_ASSUME_NONNULL_END
