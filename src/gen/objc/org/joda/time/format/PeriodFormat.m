//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/format/PeriodFormat.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Writer.h"
#include "java/lang/StringBuffer.h"
#include "java/util/Enumeration.h"
#include "java/util/Locale.h"
#include "java/util/ResourceBundle.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "java/util/concurrent/ConcurrentMap.h"
#include "org/joda/time/ReadWritablePeriod.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/format/PeriodFormat.h"
#include "org/joda/time/format/PeriodFormatter.h"
#include "org/joda/time/format/PeriodFormatterBuilder.h"
#include "org/joda/time/format/PeriodParser.h"
#include "org/joda/time/format/PeriodPrinter.h"

@interface OrgJodaTimeFormatPeriodFormat ()

+ (OrgJodaTimeFormatPeriodFormatter *)buildWordBasedWithJavaUtilLocale:(JavaUtilLocale *)locale;

+ (OrgJodaTimeFormatPeriodFormatter *)buildRegExFormatterWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b
                                                                 withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (OrgJodaTimeFormatPeriodFormatter *)buildNonRegExFormatterWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b
                                                                    withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (IOSObjectArray *)retrieveVariantsWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b;

+ (jboolean)containsKeyWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)bundle
                                     withNSString:(NSString *)key;

@end

inline NSString *OrgJodaTimeFormatPeriodFormat_get_BUNDLE_NAME(void);
static NSString *OrgJodaTimeFormatPeriodFormat_BUNDLE_NAME = @"org.joda.time.format.messages";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeFormatPeriodFormat, BUNDLE_NAME, NSString *)

inline id<JavaUtilConcurrentConcurrentMap> OrgJodaTimeFormatPeriodFormat_get_FORMATTERS(void);
static id<JavaUtilConcurrentConcurrentMap> OrgJodaTimeFormatPeriodFormat_FORMATTERS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeFormatPeriodFormat, FORMATTERS, id<JavaUtilConcurrentConcurrentMap>)

__attribute__((unused)) static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildWordBasedWithJavaUtilLocale_(JavaUtilLocale *locale);

__attribute__((unused)) static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildRegExFormatterWithJavaUtilResourceBundle_withJavaUtilLocale_(JavaUtilResourceBundle *b, JavaUtilLocale *locale);

__attribute__((unused)) static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildNonRegExFormatterWithJavaUtilResourceBundle_withJavaUtilLocale_(JavaUtilResourceBundle *b, JavaUtilLocale *locale);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(JavaUtilResourceBundle *b);

__attribute__((unused)) static jboolean OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(JavaUtilResourceBundle *bundle, NSString *key);

@interface OrgJodaTimeFormatPeriodFormat_DynamicWordBased () {
 @public
  OrgJodaTimeFormatPeriodFormatter *iFormatter_;
}

- (id<OrgJodaTimeFormatPeriodPrinter>)getPrinterWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (id<OrgJodaTimeFormatPeriodParser>)getParserWithJavaUtilLocale:(JavaUtilLocale *)locale;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatPeriodFormat_DynamicWordBased, iFormatter_, OrgJodaTimeFormatPeriodFormatter *)

__attribute__((unused)) static id<OrgJodaTimeFormatPeriodPrinter> OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getPrinterWithJavaUtilLocale_(OrgJodaTimeFormatPeriodFormat_DynamicWordBased *self, JavaUtilLocale *locale);

__attribute__((unused)) static id<OrgJodaTimeFormatPeriodParser> OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getParserWithJavaUtilLocale_(OrgJodaTimeFormatPeriodFormat_DynamicWordBased *self, JavaUtilLocale *locale);

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeFormatPeriodFormat)

@implementation OrgJodaTimeFormatPeriodFormat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeFormatPeriodFormat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgJodaTimeFormatPeriodFormatter *)getDefault {
  return OrgJodaTimeFormatPeriodFormat_getDefault();
}

+ (OrgJodaTimeFormatPeriodFormatter *)wordBased {
  return OrgJodaTimeFormatPeriodFormat_wordBased();
}

+ (OrgJodaTimeFormatPeriodFormatter *)wordBasedWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(locale);
}

+ (OrgJodaTimeFormatPeriodFormatter *)buildWordBasedWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgJodaTimeFormatPeriodFormat_buildWordBasedWithJavaUtilLocale_(locale);
}

+ (OrgJodaTimeFormatPeriodFormatter *)buildRegExFormatterWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b
                                                                 withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgJodaTimeFormatPeriodFormat_buildRegExFormatterWithJavaUtilResourceBundle_withJavaUtilLocale_(b, locale);
}

+ (OrgJodaTimeFormatPeriodFormatter *)buildNonRegExFormatterWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b
                                                                    withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgJodaTimeFormatPeriodFormat_buildNonRegExFormatterWithJavaUtilResourceBundle_withJavaUtilLocale_(b, locale);
}

+ (IOSObjectArray *)retrieveVariantsWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b {
  return OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(b);
}

+ (jboolean)containsKeyWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)bundle
                                     withNSString:(NSString *)key {
  return OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(bundle, key);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeFormatPeriodFormatter;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeFormatPeriodFormatter;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeFormatPeriodFormatter;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeFormatPeriodFormatter;", 0xa, 2, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeFormatPeriodFormatter;", 0xa, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeFormatPeriodFormatter;", 0xa, 5, 4, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0xa, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getDefault);
  methods[2].selector = @selector(wordBased);
  methods[3].selector = @selector(wordBasedWithJavaUtilLocale:);
  methods[4].selector = @selector(buildWordBasedWithJavaUtilLocale:);
  methods[5].selector = @selector(buildRegExFormatterWithJavaUtilResourceBundle:withJavaUtilLocale:);
  methods[6].selector = @selector(buildNonRegExFormatterWithJavaUtilResourceBundle:withJavaUtilLocale:);
  methods[7].selector = @selector(retrieveVariantsWithJavaUtilResourceBundle:);
  methods[8].selector = @selector(containsKeyWithJavaUtilResourceBundle:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BUNDLE_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "FORMATTERS", "LJavaUtilConcurrentConcurrentMap;", .constantValue.asLong = 0, 0x1a, -1, 11, 12, -1 },
  };
  static const void *ptrTable[] = { "wordBased", "LJavaUtilLocale;", "buildWordBased", "buildRegExFormatter", "LJavaUtilResourceBundle;LJavaUtilLocale;", "buildNonRegExFormatter", "retrieveVariants", "LJavaUtilResourceBundle;", "containsKey", "LJavaUtilResourceBundle;LNSString;", &OrgJodaTimeFormatPeriodFormat_BUNDLE_NAME, &OrgJodaTimeFormatPeriodFormat_FORMATTERS, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/Locale;Lorg/joda/time/format/PeriodFormatter;>;", "LOrgJodaTimeFormatPeriodFormat_DynamicWordBased;" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatPeriodFormat = { "PeriodFormat", "org.joda.time.format", ptrTable, methods, fields, 7, 0x1, 9, 2, -1, 13, -1, -1, -1 };
  return &_OrgJodaTimeFormatPeriodFormat;
}

+ (void)initialize {
  if (self == [OrgJodaTimeFormatPeriodFormat class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeFormatPeriodFormat_FORMATTERS, new_JavaUtilConcurrentConcurrentHashMap_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeFormatPeriodFormat)
  }
}

@end

void OrgJodaTimeFormatPeriodFormat_init(OrgJodaTimeFormatPeriodFormat *self) {
  NSObject_init(self);
}

OrgJodaTimeFormatPeriodFormat *new_OrgJodaTimeFormatPeriodFormat_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeFormatPeriodFormat, init)
}

OrgJodaTimeFormatPeriodFormat *create_OrgJodaTimeFormatPeriodFormat_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFormatPeriodFormat, init)
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_getDefault() {
  OrgJodaTimeFormatPeriodFormat_initialize();
  return OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(JreLoadStatic(JavaUtilLocale, ENGLISH));
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_wordBased() {
  OrgJodaTimeFormatPeriodFormat_initialize();
  return OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(JavaUtilLocale_getDefault());
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(JavaUtilLocale *locale) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  OrgJodaTimeFormatPeriodFormatter *pf = [((id<JavaUtilConcurrentConcurrentMap>) nil_chk(OrgJodaTimeFormatPeriodFormat_FORMATTERS)) getWithId:locale];
  if (pf == nil) {
    OrgJodaTimeFormatPeriodFormat_DynamicWordBased *dynamic = create_OrgJodaTimeFormatPeriodFormat_DynamicWordBased_initWithOrgJodaTimeFormatPeriodFormatter_(OrgJodaTimeFormatPeriodFormat_buildWordBasedWithJavaUtilLocale_(locale));
    pf = create_OrgJodaTimeFormatPeriodFormatter_initWithOrgJodaTimeFormatPeriodPrinter_withOrgJodaTimeFormatPeriodParser_withJavaUtilLocale_withOrgJodaTimePeriodType_(dynamic, dynamic, locale, nil);
    OrgJodaTimeFormatPeriodFormatter *existing = [OrgJodaTimeFormatPeriodFormat_FORMATTERS putIfAbsentWithId:locale withId:pf];
    if (existing != nil) {
      pf = existing;
    }
  }
  return pf;
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildWordBasedWithJavaUtilLocale_(JavaUtilLocale *locale) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  JavaUtilResourceBundle *b = JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_(OrgJodaTimeFormatPeriodFormat_BUNDLE_NAME, locale);
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.regex.separator")) {
    return OrgJodaTimeFormatPeriodFormat_buildRegExFormatterWithJavaUtilResourceBundle_withJavaUtilLocale_(b, locale);
  }
  else {
    return OrgJodaTimeFormatPeriodFormat_buildNonRegExFormatterWithJavaUtilResourceBundle_withJavaUtilLocale_(b, locale);
  }
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildRegExFormatterWithJavaUtilResourceBundle_withJavaUtilLocale_(JavaUtilResourceBundle *b, JavaUtilLocale *locale) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  IOSObjectArray *variants = OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(b);
  NSString *regExSeparator = [((JavaUtilResourceBundle *) nil_chk(b)) getStringWithNSString:@"PeriodFormat.regex.separator"];
  OrgJodaTimeFormatPeriodFormatterBuilder *builder = create_OrgJodaTimeFormatPeriodFormatterBuilder_init();
  [builder appendYears];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.years.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.years.regex"])) java_split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.years.list"])) java_split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.year"] withNSString:[b getStringWithNSString:@"PeriodFormat.years"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendMonths];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.months.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.months.regex"])) java_split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.months.list"])) java_split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.month"] withNSString:[b getStringWithNSString:@"PeriodFormat.months"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendWeeks];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.weeks.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.weeks.regex"])) java_split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.weeks.list"])) java_split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.week"] withNSString:[b getStringWithNSString:@"PeriodFormat.weeks"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendDays];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.days.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.days.regex"])) java_split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.days.list"])) java_split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.day"] withNSString:[b getStringWithNSString:@"PeriodFormat.days"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendHours];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.hours.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.hours.regex"])) java_split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.hours.list"])) java_split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.hour"] withNSString:[b getStringWithNSString:@"PeriodFormat.hours"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendMinutes];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.minutes.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.minutes.regex"])) java_split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.minutes.list"])) java_split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.minute"] withNSString:[b getStringWithNSString:@"PeriodFormat.minutes"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendSeconds];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.seconds.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.seconds.regex"])) java_split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.seconds.list"])) java_split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.second"] withNSString:[b getStringWithNSString:@"PeriodFormat.seconds"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendMillis];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.milliseconds.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.milliseconds.regex"])) java_split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.milliseconds.list"])) java_split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.millisecond"] withNSString:[b getStringWithNSString:@"PeriodFormat.milliseconds"]];
  }
  return [((OrgJodaTimeFormatPeriodFormatter *) nil_chk([builder toFormatter])) withLocaleWithJavaUtilLocale:locale];
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildNonRegExFormatterWithJavaUtilResourceBundle_withJavaUtilLocale_(JavaUtilResourceBundle *b, JavaUtilLocale *locale) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  IOSObjectArray *variants = OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(b);
  return [((OrgJodaTimeFormatPeriodFormatter *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([create_OrgJodaTimeFormatPeriodFormatterBuilder_init() appendYears])) appendSuffixWithNSString:[((JavaUtilResourceBundle *) nil_chk(b)) getStringWithNSString:@"PeriodFormat.year"] withNSString:[b getStringWithNSString:@"PeriodFormat.years"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendMonths])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.month"] withNSString:[b getStringWithNSString:@"PeriodFormat.months"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendWeeks])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.week"] withNSString:[b getStringWithNSString:@"PeriodFormat.weeks"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendDays])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.day"] withNSString:[b getStringWithNSString:@"PeriodFormat.days"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendHours])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.hour"] withNSString:[b getStringWithNSString:@"PeriodFormat.hours"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendMinutes])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.minute"] withNSString:[b getStringWithNSString:@"PeriodFormat.minutes"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendSeconds])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.second"] withNSString:[b getStringWithNSString:@"PeriodFormat.seconds"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendMillis])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.millisecond"] withNSString:[b getStringWithNSString:@"PeriodFormat.milliseconds"]])) toFormatter])) withLocaleWithJavaUtilLocale:locale];
}

IOSObjectArray *OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(JavaUtilResourceBundle *b) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  return [IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilResourceBundle *) nil_chk(b)) getStringWithNSString:@"PeriodFormat.space"], [b getStringWithNSString:@"PeriodFormat.comma"], [b getStringWithNSString:@"PeriodFormat.commandand"], [b getStringWithNSString:@"PeriodFormat.commaspaceand"] } count:4 type:NSString_class_()];
}

jboolean OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(JavaUtilResourceBundle *bundle, NSString *key) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  for (id<JavaUtilEnumeration> en = [((JavaUtilResourceBundle *) nil_chk(bundle)) getKeys]; [((id<JavaUtilEnumeration>) nil_chk(en)) hasMoreElements]; ) {
    if ([((NSString *) nil_chk([en nextElement])) isEqual:key]) {
      return true;
    }
  }
  return false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatPeriodFormat)

@implementation OrgJodaTimeFormatPeriodFormat_DynamicWordBased

- (instancetype)initWithOrgJodaTimeFormatPeriodFormatter:(OrgJodaTimeFormatPeriodFormatter *)formatter {
  OrgJodaTimeFormatPeriodFormat_DynamicWordBased_initWithOrgJodaTimeFormatPeriodFormatter_(self, formatter);
  return self;
}

- (jint)countFieldsToPrintWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                withInt:(jint)stopAt
                                     withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((id<OrgJodaTimeFormatPeriodPrinter>) nil_chk(OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getPrinterWithJavaUtilLocale_(self, locale))) countFieldsToPrintWithOrgJodaTimeReadablePeriod:period withInt:stopAt withJavaUtilLocale:locale];
}

- (jint)calculatePrintedLengthWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                         withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((id<OrgJodaTimeFormatPeriodPrinter>) nil_chk(OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getPrinterWithJavaUtilLocale_(self, locale))) calculatePrintedLengthWithOrgJodaTimeReadablePeriod:period withJavaUtilLocale:locale];
}

- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
          withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                     withJavaUtilLocale:(JavaUtilLocale *)locale {
  [((id<OrgJodaTimeFormatPeriodPrinter>) nil_chk(OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getPrinterWithJavaUtilLocale_(self, locale))) printToWithJavaLangStringBuffer:buf withOrgJodaTimeReadablePeriod:period withJavaUtilLocale:locale];
}

- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
  withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
             withJavaUtilLocale:(JavaUtilLocale *)locale {
  [((id<OrgJodaTimeFormatPeriodPrinter>) nil_chk(OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getPrinterWithJavaUtilLocale_(self, locale))) printToWithJavaIoWriter:outArg withOrgJodaTimeReadablePeriod:period withJavaUtilLocale:locale];
}

- (id<OrgJodaTimeFormatPeriodPrinter>)getPrinterWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getPrinterWithJavaUtilLocale_(self, locale);
}

- (jint)parseIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>)period
                                      withNSString:(NSString *)periodStr
                                           withInt:(jint)position
                                withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((id<OrgJodaTimeFormatPeriodParser>) nil_chk(OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getParserWithJavaUtilLocale_(self, locale))) parseIntoWithOrgJodaTimeReadWritablePeriod:period withNSString:periodStr withInt:position withJavaUtilLocale:locale];
}

- (id<OrgJodaTimeFormatPeriodParser>)getParserWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getParserWithJavaUtilLocale_(self, locale);
}

- (void)dealloc {
  RELEASE_(iFormatter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 7, 8, -1, -1, -1 },
    { NULL, "LOrgJodaTimeFormatPeriodPrinter;", 0x2, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeFormatPeriodParser;", 0x2, 13, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgJodaTimeFormatPeriodFormatter:);
  methods[1].selector = @selector(countFieldsToPrintWithOrgJodaTimeReadablePeriod:withInt:withJavaUtilLocale:);
  methods[2].selector = @selector(calculatePrintedLengthWithOrgJodaTimeReadablePeriod:withJavaUtilLocale:);
  methods[3].selector = @selector(printToWithJavaLangStringBuffer:withOrgJodaTimeReadablePeriod:withJavaUtilLocale:);
  methods[4].selector = @selector(printToWithJavaIoWriter:withOrgJodaTimeReadablePeriod:withJavaUtilLocale:);
  methods[5].selector = @selector(getPrinterWithJavaUtilLocale:);
  methods[6].selector = @selector(parseIntoWithOrgJodaTimeReadWritablePeriod:withNSString:withInt:withJavaUtilLocale:);
  methods[7].selector = @selector(getParserWithJavaUtilLocale:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iFormatter_", "LOrgJodaTimeFormatPeriodFormatter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeFormatPeriodFormatter;", "countFieldsToPrint", "LOrgJodaTimeReadablePeriod;ILJavaUtilLocale;", "calculatePrintedLength", "LOrgJodaTimeReadablePeriod;LJavaUtilLocale;", "printTo", "LJavaLangStringBuffer;LOrgJodaTimeReadablePeriod;LJavaUtilLocale;", "LJavaIoWriter;LOrgJodaTimeReadablePeriod;LJavaUtilLocale;", "LJavaIoIOException;", "getPrinter", "LJavaUtilLocale;", "parseInto", "LOrgJodaTimeReadWritablePeriod;LNSString;ILJavaUtilLocale;", "getParser", "LOrgJodaTimeFormatPeriodFormat;" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatPeriodFormat_DynamicWordBased = { "DynamicWordBased", "org.joda.time.format", ptrTable, methods, fields, 7, 0x8, 8, 1, 14, -1, -1, -1, -1 };
  return &_OrgJodaTimeFormatPeriodFormat_DynamicWordBased;
}

@end

void OrgJodaTimeFormatPeriodFormat_DynamicWordBased_initWithOrgJodaTimeFormatPeriodFormatter_(OrgJodaTimeFormatPeriodFormat_DynamicWordBased *self, OrgJodaTimeFormatPeriodFormatter *formatter) {
  NSObject_init(self);
  JreStrongAssign(&self->iFormatter_, formatter);
}

OrgJodaTimeFormatPeriodFormat_DynamicWordBased *new_OrgJodaTimeFormatPeriodFormat_DynamicWordBased_initWithOrgJodaTimeFormatPeriodFormatter_(OrgJodaTimeFormatPeriodFormatter *formatter) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFormatPeriodFormat_DynamicWordBased, initWithOrgJodaTimeFormatPeriodFormatter_, formatter)
}

OrgJodaTimeFormatPeriodFormat_DynamicWordBased *create_OrgJodaTimeFormatPeriodFormat_DynamicWordBased_initWithOrgJodaTimeFormatPeriodFormatter_(OrgJodaTimeFormatPeriodFormatter *formatter) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFormatPeriodFormat_DynamicWordBased, initWithOrgJodaTimeFormatPeriodFormatter_, formatter)
}

id<OrgJodaTimeFormatPeriodPrinter> OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getPrinterWithJavaUtilLocale_(OrgJodaTimeFormatPeriodFormat_DynamicWordBased *self, JavaUtilLocale *locale) {
  if (locale != nil && ![locale isEqual:[((OrgJodaTimeFormatPeriodFormatter *) nil_chk(self->iFormatter_)) getLocale]]) {
    return [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(locale))) getPrinter];
  }
  return [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(self->iFormatter_)) getPrinter];
}

id<OrgJodaTimeFormatPeriodParser> OrgJodaTimeFormatPeriodFormat_DynamicWordBased_getParserWithJavaUtilLocale_(OrgJodaTimeFormatPeriodFormat_DynamicWordBased *self, JavaUtilLocale *locale) {
  if (locale != nil && ![locale isEqual:[((OrgJodaTimeFormatPeriodFormatter *) nil_chk(self->iFormatter_)) getLocale]]) {
    return [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(locale))) getParser];
  }
  return [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(self->iFormatter_)) getParser];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatPeriodFormat_DynamicWordBased)
