//
// Created by Leland Richardson on 12/27/15.
// Copyright (c) 2015 Facebook. All rights reserved.
//

#import "ABI21_0_0RCTConvert+AirMap.h"

#import <ReactABI21_0_0/ABI21_0_0RCTConvert+CoreLocation.h>
#import "ABI21_0_0AIRMapCoordinate.h"

@implementation ABI21_0_0RCTConvert (AirMap)

+ (MKCoordinateSpan)MKCoordinateSpan:(id)json
{
  json = [self NSDictionary:json];
  return (MKCoordinateSpan){
    [self CLLocationDegrees:json[@"latitudeDelta"]],
    [self CLLocationDegrees:json[@"longitudeDelta"]]
  };
}

+ (MKCoordinateRegion)MKCoordinateRegion:(id)json
{
  return (MKCoordinateRegion){
    [self CLLocationCoordinate2D:json],
    [self MKCoordinateSpan:json]
  };
}

ABI21_0_0RCT_ENUM_CONVERTER(MKMapType, (@{
  @"standard": @(MKMapTypeStandard),
  @"satellite": @(MKMapTypeSatellite),
  @"hybrid": @(MKMapTypeHybrid),
}), MKMapTypeStandard, integerValue)

// NOTE(lmr):
// This is a bit of a hack, but I'm using this class to simply wrap
// around a `CLLocationCoordinate2D`, since I was unable to figure out
// how to handle an array of structs like CLLocationCoordinate2D. Would love
// to get rid of this if someone can show me how...
+ (ABI21_0_0AIRMapCoordinate *)ABI21_0_0AIRMapCoordinate:(id)json
{
    ABI21_0_0AIRMapCoordinate *coord = [ABI21_0_0AIRMapCoordinate new];
    coord.coordinate = [self CLLocationCoordinate2D:json];
    return coord;
}

ABI21_0_0RCT_ARRAY_CONVERTER(ABI21_0_0AIRMapCoordinate)

+ (NSArray<NSArray<ABI21_0_0AIRMapCoordinate *> *> *)ABI21_0_0AIRMapCoordinateArrayArray:(id)json
{
    return ABI21_0_0RCTConvertArrayValue(@selector(ABI21_0_0AIRMapCoordinateArray:), json);
}

@end