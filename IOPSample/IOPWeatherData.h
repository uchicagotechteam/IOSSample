//
//  IOPWeatherData.h
//  IOPSampleApplication
//
//  Created by Adam Benjamin Thal Gluck on 5/6/14.
//  Copyright (c) 2014 Adam Benjamin Thal Gluck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IOPWeatherData : NSObject

+(void)gatherWeatherDataFor:(NSString *) city
                 completion:(void (^)(double temperature))completion;

@end
