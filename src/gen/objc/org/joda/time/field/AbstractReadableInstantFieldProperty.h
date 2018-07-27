//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/field/AbstractReadableInstantFieldProperty.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty")
#ifdef RESTRICT_OrgJodaTimeFieldAbstractReadableInstantFieldProperty
#define INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty 1
#endif
#undef RESTRICT_OrgJodaTimeFieldAbstractReadableInstantFieldProperty

#if !defined (OrgJodaTimeFieldAbstractReadableInstantFieldProperty_) && (INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty || defined(INCLUDE_OrgJodaTimeFieldAbstractReadableInstantFieldProperty))
#define OrgJodaTimeFieldAbstractReadableInstantFieldProperty_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;
@class OrgJodaTimeInterval;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePartial;

@interface OrgJodaTimeFieldAbstractReadableInstantFieldProperty : NSObject < JavaIoSerializable >

#pragma mark Public

- (instancetype)init;

- (jint)compareToWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

- (jint)compareToWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

- (jboolean)isEqual:(id)object;

- (jint)get;

- (NSString *)getAsShortText;

- (NSString *)getAsShortTextWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (NSString *)getAsString;

- (NSString *)getAsText;

- (NSString *)getAsTextWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (jint)getDifferenceWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

- (jlong)getDifferenceAsLongWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

- (OrgJodaTimeDurationField *)getDurationField;

- (OrgJodaTimeDateTimeField *)getField;

- (OrgJodaTimeDateTimeFieldType *)getFieldType;

- (jint)getLeapAmount;

- (OrgJodaTimeDurationField *)getLeapDurationField;

- (jint)getMaximumShortTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (jint)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (jint)getMaximumValue;

- (jint)getMaximumValueOverall;

- (jint)getMinimumValue;

- (jint)getMinimumValueOverall;

- (NSString *)getName;

- (OrgJodaTimeDurationField *)getRangeDurationField;

- (NSUInteger)hash;

- (jboolean)isLeap;

- (jlong)remainder;

- (OrgJodaTimeInterval *)toInterval;

- (NSString *)description;

#pragma mark Protected

- (OrgJodaTimeChronology *)getChronology;

- (jlong)getMillis;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldAbstractReadableInstantFieldProperty)

FOUNDATION_EXPORT void OrgJodaTimeFieldAbstractReadableInstantFieldProperty_init(OrgJodaTimeFieldAbstractReadableInstantFieldProperty *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldAbstractReadableInstantFieldProperty)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty")
