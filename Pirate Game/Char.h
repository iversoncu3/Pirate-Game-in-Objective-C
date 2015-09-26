//
//  Char.h
//  Pirate Game
//
//  Created by Baran on 9/17/15.
//  Copyright (c) 2015 com.MyCodeIsWorking. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Weapon;
@class Armor;
@interface Char : NSObject

@property (readwrite)int health;
@property(readwrite)int damage;
@property(nonatomic,strong)Weapon *weapon;
@property(nonatomic,strong)Armor* armor;


@end
