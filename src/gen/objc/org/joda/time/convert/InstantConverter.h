//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/convert/InstantConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeConvertInstantConverter")
#ifdef RESTRICT_OrgJodaTimeConvertInstantConverter
#define INCLUDE_ALL_OrgJodaTimeConvertInstantConverter 0
#else
#define INCLUDE_ALL_OrgJodaTimeConvertInstantConverter 1
#endif
#undef RESTRICT_OrgJodaTimeConvertInstantConverter

#if !defined (OrgJodaTimeConvertInstantConverter_) && (INCLUDE_ALL_OrgJodaTimeConvertInstantConverter || defined(INCLUDE_OrgJodaTimeConvertInstantConverter))
#define OrgJodaTimeConvertInstantConverter_

#define RESTRICT_OrgJodaTimeConvertConverter 1
#define INCLUDE_OrgJodaTimeConvertConverter 1
#include "org/joda/time/convert/Converter.h"

@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

@protocol OrgJodaTimeConvertInstantConverter < OrgJodaTimeConvertConverter, JavaObject >

- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                   withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                     withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

- (jlong)getInstantMillisWithId:(id)object
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeConvertInstantConverter)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertInstantConverter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeConvertInstantConverter")
