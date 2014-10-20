//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/convert/DurationConverter.java
//

#ifndef _OrgJodaTimeConvertDurationConverter_H_
#define _OrgJodaTimeConvertDurationConverter_H_

#import "JreEmulation.h"
#include "Converter.h"

/**
 @brief DurationConverter defines how an object is converted to a millisecond duration.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@protocol OrgJodaTimeConvertDurationConverter < OrgJodaTimeConvertConverter, NSObject, JavaObject >
/**
 @brief Extracts the millis from an object of this convertor's type.
 @param object the object to convert, must not be null
 @return the millisecond duration
 @throws ClassCastException if the object is invalid
 */
- (long long int)getDurationMillisWithId:(id)object;

@end

__attribute__((always_inline)) inline void OrgJodaTimeConvertDurationConverter_init() {}

#endif // _OrgJodaTimeConvertDurationConverter_H_
