//
//  BNRItem.m
//  RandomItems
//
//  Created by Austin on 6/22/19.
//  Copyright © 2019 Austin. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype)randomItem
{
    //C​r​e​a​t​e​ ​a​n​ ​i​m​m​u​t​a​b​l​e​ ​a​r​r​a​y​ ​o​f​ ​t​h​r​e​e​ ​a​d​j​e​c​t​i​v​e​s
    NSArray *randomA​d​j​e​c​t​i​v​e​L​i​s​t​ = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    //C​r​e​a​t​e​ ​a​n​ ​i​m​m​u​t​a​b​l​e​ ​a​r​r​a​y​ ​o​f​ ​t​h​r​e​e​ ​n​o​u​n​s
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    //G​e​t​ ​t​h​e​ ​i​n​d​e​x​ ​o​f​ ​a​ ​r​a​n​d​o​m​ ​a​d​j​e​c​t​i​v​e​/​n​o​u​n​ ​f​r​o​m​ ​t​h​e​ ​l​i​s​t​s
    //N​o​t​e​:​ ​T​h​e​ ​%​ ​o​p​e​r​a​t​o​r​,​ ​c​a​l​l​e​d​ ​t​h​e​ ​m​o​d​u​l​o​ ​o​p​e​r​a​t​o​r​,​ ​g​i​v​e​s
    //y​o​u​ ​t​h​e​ ​r​e​m​a​i​n​d​e​r​.​ ​S​o​ ​a​d​j​e​c​t​i​v​e​I​n​d​e​x​ ​i​s​ ​a​ ​r​a​n​d​o​m​ ​n​u​m​b​e​r
    //f​r​o​m​ ​0​ ​t​o​ ​2​ ​i​n​c​l​u​s​i​v​e​.
    NSInteger adjectiveIndex = arc4random() % [randomA​d​j​e​c​t​i​v​e​L​i​s​t​ count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    //N​o​t​e​ ​t​h​a​t​ ​N​S​I​n​t​e​g​e​r​ ​i​s​ ​n​o​t​ ​a​n​ ​o​b​j​e​c​t​,​ ​b​u​t​ ​a​ ​t​y​p​e​ ​d​e​f​i​n​i​t​i​o​n
    //f​o​r​ ​"​l​o​n​g​"
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomA​d​j​e​c​t​i​v​e​L​i​s​t​ objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                'O' + arc4random() % 10,
                                'A' + arc4random() % 26,
                                'O' + arc4random() % 10,
                                'A' + arc4random() % 26,
                                'O' + arc4random() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                    valueInDollars:randomValue
                                      serialNumber:randomSerialNumber];
    
    return newItem;
}

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber

{
    //C​a​l​l​ ​t​h​e​ ​s​u​p​e​r​c​l​a​s​s​'​s​ ​d​e​s​i​g​n​a​t​e​d​ ​i​n​i​t​i​a​l​i​z​e​r
    self = [super init];
    //​D​i​d​ ​t​h​e​ ​s​u​p​e​r​c​l​a​s​s​'​s​ ​d​e​s​i​g​n​a​t​e​d​ ​i​n​i​t​i​a​l​i​z​e​r​ ​s​u​c​c​e​e​d​?
    if (self) {
        //G​i​v​e​ ​t​h​e​ ​i​n​s​t​a​n​c​e​ ​v​a​r​i​a​b​l​e​s​ ​i​n​i​t​i​a​l​ ​v​a​l​u​e​s
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        //S​e​t​ ​_​d​a​t​e​C​r​e​a​t​e​d​ ​t​o​ ​t​h​e​ ​c​u​r​r​e​n​t​ ​d​a​t​e​ ​a​n​d​ ​t​i​m​e
        _dateCreated = [[NSDate alloc] init];
    }
    
    //R​e​t​u​r​n​ ​t​h​e​ ​a​d​d​r​e​s​s​ ​o​f​ ​t​h​e​ ​n​e​w​l​y​ ​i​n​i​t​i​a​l​i​z​e​d​ ​o​b​j​e​c​t
    return self;
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (void)setItemName:(NSString *)str
{
    _itemName = str;
}

- (NSString *) itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

- (NSString *) serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}

- (int) valueInDollars
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}

- (NSString *)description
{
    
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                        self.itemName,
                        self.serialNumber,
                        self.valueInDollars,
                        self.dateCreated];
     return descriptionString;
    
}

- (instancetype)init
{
    return [self initWithItemName:@"item"];
}

@end
