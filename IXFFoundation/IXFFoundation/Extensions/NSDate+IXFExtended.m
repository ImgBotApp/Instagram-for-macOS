//
//  NSDate+IXFExtended.m
//  IXFFoundation
//
//  Copyright (C) 2016  Zhi-Wei Cai. (@x43x61x69)
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//

#import "NSDate+IXFExtended.h"

@implementation NSDate (IXFExtended)

- (NSString *)dateStringWithFormat:(NSString *)format
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
    [dateFormat setDateFormat:format];
    [dateFormat setTimeZone:[NSTimeZone systemTimeZone]];
    return [dateFormat stringFromDate:self];
}

@end
