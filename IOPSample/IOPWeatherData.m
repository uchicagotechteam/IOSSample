//
//  IOPWeatherData.m
//  IOPSampleApplication
//
//  Created by Adam Benjamin Thal Gluck on 5/6/14.
//  Copyright (c) 2014 Adam Benjamin Thal Gluck. All rights reserved.
//

#import "IOPWeatherData.h"

@implementation IOPWeatherData

+(void)gatherWeatherDataFor:(NSString *)city completion:(void (^)(double temperature))completion
{
    NSString *weatherAPI = @"http://api.openweathermap.org/data/2.5/weather?q=";
    weatherAPI = [weatherAPI stringByAppendingString:city];
    NSURLSession * session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:weatherAPI]
            completionHandler:^(NSData *data, NSURLResponse * response, NSError * error){
                NSError * jsonError;
                NSDictionary * parsedResponse = [NSJSONSerialization JSONObjectWithData:data
                                                                                options:NSJSONReadingAllowFragments
                                                                                  error:&jsonError];
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion([parsedResponse[@"main"][@"temp"] doubleValue]);
                });
                
            }] resume];
}

@end
