//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/GJMonthOfYearDateTimeField.java
//

#include "J2ObjC_source.h"
#include "java/util/Locale.h"
#include "org/joda/time/chrono/BasicChronology.h"
#include "org/joda/time/chrono/BasicMonthOfYearDateTimeField.h"
#include "org/joda/time/chrono/GJLocaleSymbols.h"
#include "org/joda/time/chrono/GJMonthOfYearDateTimeField.h"

#define OrgJodaTimeChronoGJMonthOfYearDateTimeField_serialVersionUID -4748157875845286249LL

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoGJMonthOfYearDateTimeField, serialVersionUID, jlong)

@implementation OrgJodaTimeChronoGJMonthOfYearDateTimeField

- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology {
  OrgJodaTimeChronoGJMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(self, chronology);
  return self;
}

- (NSString *)getAsTextWithInt:(jint)fieldValue
            withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk(OrgJodaTimeChronoGJLocaleSymbols_forLocaleWithJavaUtilLocale_(locale))) monthOfYearValueToTextWithInt:fieldValue];
}

- (NSString *)getAsShortTextWithInt:(jint)fieldValue
                 withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk(OrgJodaTimeChronoGJLocaleSymbols_forLocaleWithJavaUtilLocale_(locale))) monthOfYearValueToShortTextWithInt:fieldValue];
}

- (jint)convertTextWithNSString:(NSString *)text
             withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk(OrgJodaTimeChronoGJLocaleSymbols_forLocaleWithJavaUtilLocale_(locale))) monthOfYearTextToValueWithNSString:text];
}

- (jint)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk(OrgJodaTimeChronoGJLocaleSymbols_forLocaleWithJavaUtilLocale_(locale))) getMonthMaxTextLength];
}

- (jint)getMaximumShortTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk(OrgJodaTimeChronoGJLocaleSymbols_forLocaleWithJavaUtilLocale_(locale))) getMonthMaxShortTextLength];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeChronoBasicChronology:", "GJMonthOfYearDateTimeField", NULL, 0x0, NULL, NULL },
    { "getAsTextWithInt:withJavaUtilLocale:", "getAsText", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAsShortTextWithInt:withJavaUtilLocale:", "getAsShortText", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "convertTextWithNSString:withJavaUtilLocale:", "convertText", "I", 0x4, NULL, NULL },
    { "getMaximumTextLengthWithJavaUtilLocale:", "getMaximumTextLength", "I", 0x1, NULL, NULL },
    { "getMaximumShortTextLengthWithJavaUtilLocale:", "getMaximumShortTextLength", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoGJMonthOfYearDateTimeField_serialVersionUID },
  };
  static const J2ObjcClassInfo _OrgJodaTimeChronoGJMonthOfYearDateTimeField = { 2, "GJMonthOfYearDateTimeField", "org.joda.time.chrono", NULL, 0x10, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeChronoGJMonthOfYearDateTimeField;
}

@end

void OrgJodaTimeChronoGJMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoGJMonthOfYearDateTimeField *self, OrgJodaTimeChronoBasicChronology *chronology) {
  OrgJodaTimeChronoBasicMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withInt_(self, chronology, 2);
}

OrgJodaTimeChronoGJMonthOfYearDateTimeField *new_OrgJodaTimeChronoGJMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoBasicChronology *chronology) {
  OrgJodaTimeChronoGJMonthOfYearDateTimeField *self = [OrgJodaTimeChronoGJMonthOfYearDateTimeField alloc];
  OrgJodaTimeChronoGJMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(self, chronology);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoGJMonthOfYearDateTimeField)
