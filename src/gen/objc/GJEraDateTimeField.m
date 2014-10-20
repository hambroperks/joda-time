//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/chrono/GJEraDateTimeField.java
//

#include "BasicChronology.h"
#include "DateTimeConstants.h"
#include "DateTimeField.h"
#include "DateTimeFieldType.h"
#include "DurationField.h"
#include "DurationFieldType.h"
#include "FieldUtils.h"
#include "GJEraDateTimeField.h"
#include "GJLocaleSymbols.h"
#include "UnsupportedDurationField.h"
#include "java/lang/Long.h"
#include "java/util/Locale.h"

@implementation OrgJodaTimeChronoGJEraDateTimeField

- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology {
  if (self = [super initWithOrgJodaTimeDateTimeFieldType:[OrgJodaTimeDateTimeFieldType era]]) {
    iChronology_ = chronology;
  }
  return self;
}

- (BOOL)isLenient {
  return NO;
}

- (int)getWithLong:(long long int)instant {
  if ([((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getYearWithLong:instant] <= 0) {
    return OrgJodaTimeDateTimeConstants_BCE;
  }
  else {
    return OrgJodaTimeDateTimeConstants_CE;
  }
}

- (NSString *)getAsTextWithInt:(int)fieldValue
            withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk([OrgJodaTimeChronoGJLocaleSymbols forLocaleWithJavaUtilLocale:locale])) eraValueToTextWithInt:fieldValue];
}

- (long long int)setWithLong:(long long int)instant
                     withInt:(int)era {
  [OrgJodaTimeFieldFieldUtils verifyValueBoundsWithOrgJodaTimeDateTimeField:self withInt:era withInt:OrgJodaTimeDateTimeConstants_BCE withInt:OrgJodaTimeDateTimeConstants_CE];
  int oldEra = [self getWithLong:instant];
  if (oldEra != era) {
    int year = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getYearWithLong:instant];
    return [iChronology_ setYearWithLong:instant withInt:-year];
  }
  else {
    return instant;
  }
}

- (long long int)setWithLong:(long long int)instant
                withNSString:(NSString *)text
          withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [self setWithLong:instant withInt:[((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk([OrgJodaTimeChronoGJLocaleSymbols forLocaleWithJavaUtilLocale:locale])) eraTextToValueWithNSString:text]];
}

- (long long int)roundFloorWithLong:(long long int)instant {
  if ([self getWithLong:instant] == OrgJodaTimeDateTimeConstants_CE) {
    return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) setYearWithLong:0 withInt:1];
  }
  else {
    return JavaLangLong_MIN_VALUE;
  }
}

- (long long int)roundCeilingWithLong:(long long int)instant {
  if ([self getWithLong:instant] == OrgJodaTimeDateTimeConstants_BCE) {
    return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) setYearWithLong:0 withInt:1];
  }
  else {
    return JavaLangLong_MAX_VALUE;
  }
}

- (long long int)roundHalfFloorWithLong:(long long int)instant {
  return [self roundFloorWithLong:instant];
}

- (long long int)roundHalfCeilingWithLong:(long long int)instant {
  return [self roundFloorWithLong:instant];
}

- (long long int)roundHalfEvenWithLong:(long long int)instant {
  return [self roundFloorWithLong:instant];
}

- (OrgJodaTimeDurationField *)getDurationField {
  return [OrgJodaTimeFieldUnsupportedDurationField getInstanceWithOrgJodaTimeDurationFieldType:[OrgJodaTimeDurationFieldType eras]];
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  return nil;
}

- (int)getMinimumValue {
  return OrgJodaTimeDateTimeConstants_BCE;
}

- (int)getMaximumValue {
  return OrgJodaTimeDateTimeConstants_CE;
}

- (int)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk([OrgJodaTimeChronoGJLocaleSymbols forLocaleWithJavaUtilLocale:locale])) getEraMaxTextLength];
}

- (id)readResolve {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) era];
}

- (void)copyAllFieldsTo:(OrgJodaTimeChronoGJEraDateTimeField *)other {
  [super copyAllFieldsTo:other];
  other->iChronology_ = iChronology_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeChronoBasicChronology:", "GJEraDateTimeField", NULL, 0x0, NULL },
    { "isLenient", NULL, "Z", 0x1, NULL },
    { "getWithLong:", "get", "I", 0x1, NULL },
    { "getAsTextWithInt:withJavaUtilLocale:", "getAsText", "Ljava.lang.String;", 0x1, NULL },
    { "setWithLong:withInt:", "set", "J", 0x1, NULL },
    { "setWithLong:withNSString:withJavaUtilLocale:", "set", "J", 0x1, NULL },
    { "roundFloorWithLong:", "roundFloor", "J", 0x1, NULL },
    { "roundCeilingWithLong:", "roundCeiling", "J", 0x1, NULL },
    { "roundHalfFloorWithLong:", "roundHalfFloor", "J", 0x1, NULL },
    { "roundHalfCeilingWithLong:", "roundHalfCeiling", "J", 0x1, NULL },
    { "roundHalfEvenWithLong:", "roundHalfEven", "J", 0x1, NULL },
    { "getDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL },
    { "getRangeDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL },
    { "getMinimumValue", NULL, "I", 0x1, NULL },
    { "getMaximumValue", NULL, "I", 0x1, NULL },
    { "getMaximumTextLengthWithJavaUtilLocale:", "getMaximumTextLength", "I", 0x1, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = OrgJodaTimeChronoGJEraDateTimeField_serialVersionUID },
    { "iChronology_", NULL, 0x12, "Lorg.joda.time.chrono.BasicChronology;", NULL,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeChronoGJEraDateTimeField = { "GJEraDateTimeField", "org.joda.time.chrono", NULL, 0x10, 17, methods, 2, fields, 0, NULL};
  return &_OrgJodaTimeChronoGJEraDateTimeField;
}

@end
