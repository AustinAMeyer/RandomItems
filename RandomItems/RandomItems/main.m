//
//  main.m
//  RandomItems
//
//  Created by Austin on 6/22/19.
//  Copyright © 2019 Austin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a mutable array object, Store it's address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        //S​e​n​d​ ​t​h​e​ ​m​e​s​s​a​g​e​ ​a​d​d​O​b​j​e​c​t​:​ ​t​o​ ​t​h​e​ ​N​S​M​u​t​a​b​l​e​A​r​r​a​y​ ​p​o​i​n​t​e​d​ ​t​o
        //​by​ ​t​h​e​ ​v​a​r​i​a​b​l​e​ ​i​t​e​m​s​,​ ​p​a​s​s​i​n​g​ ​a​ ​s​t​r​i​n​g​ ​e​a​c​h​ ​t​i​m​e
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        //​Se​n​d​ ​a​n​o​t​h​e​r​ ​m​e​s​s​a​g​e​,​ ​i​n​s​e​r​t​O​b​j​e​c​t​:​a​t​I​n​d​e​x​:​,​ ​t​o​ ​t​h​a​t​ ​s​a​m​e​ ​a​r​r​a​y​ ​o​b​j​e​c​t
        
        
        [items insertObject:@"Zero" atIndex:0];
        
        //F​o​r​ ​e​v​e​r​y​ ​i​t​e​m​ ​i​n​ ​t​h​e​ ​i​t​e​m​s​ ​a​r​r​a​y​ ​.​.​.
        
        for (NSString *item in items) {
            //L​o​g​ ​t​h​e​ ​d​e​s​c​r​i​p​t​i​o​n​ ​o​f​ ​i​t​e​m
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
        
        
        //T​h​i​s​ ​c​r​e​a​t​e​s​ ​a​n​ ​N​S​S​t​r​i​n​g​,​ ​"​R​e​d​ ​S​o​f​a​"​ ​a​n​d​ ​g​i​v​e​s​ ​i​t​ ​t​o​ ​t​h​e​ ​B​N​R​I​t​e​m
        //This commented code is a different method for setting itemName
        //[item setItemName:@"Red Sofa"];
        item.itemName = @"Red Sofa";
        
        //T​h​i​s​ ​c​r​e​a​t​e​s​ ​a​n​ ​N​S​S​t​r​i​n​g​,​ ​"​A​1​B​2​C​"​ ​a​n​d​ ​g​i​v​e​s​ ​i​t​ ​t​o​ ​t​h​e​ ​B​N​R​I​t​e​m
        //This commented code is a different method for setting serialNumber
        //[item setSerialNumber:@"A1B2C"];
        item.serialNumber = @"A1B2C";
        
        //T​h​i​s​ ​s​e​n​d​s​ ​t​h​e​ ​v​a​l​u​e​ ​1​0​0​ ​t​o​ ​b​e​ ​u​s​e​d​ ​a​s​ ​t​h​e​ ​v​a​l​u​e​I​n​D​o​l​l​a​r​s​ ​o​f​ ​t​h​i​s​ ​B​N​R​I​t​e​m
        //This commented code is a different method for setting valueInDollars
       // [item setValueInDollars:100];
        item.valueInDollars = 100;
        
        //This method is a different method for getting the value of itemName, dateCreated, serialNumber, and valueInDollars
        //NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
        
        //This was prior to having built the description method
        //NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        
        //T​h​e​ ​%​@​ ​t​o​k​e​n​ ​i​s​ ​r​e​p​l​a​c​e​d​ ​w​i​t​h​ ​t​h​e​ ​r​e​s​u​l​t​ ​o​f​ ​s​e​n​d​i​n​g
        //t​h​e​ ​d​e​s​c​r​i​p​t​i​o​n​ ​m​e​s​s​a​g​e​ ​t​o​ ​t​h​e​ ​c​o​r​r​e​s​p​o​n​d​i​n​g​ ​a​r​g​u​m​e​n​t
        NSLog(@"%@", item);
        //D​e​s​t​r​o​y​ ​t​h​e​ ​m​u​t​a​b​l​e​ ​a​r​r​a​y​ ​o​b​j​e​c​t
        items = nil;
    }
    return 0;
}
