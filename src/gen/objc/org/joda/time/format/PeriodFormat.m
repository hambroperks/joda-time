//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/PeriodFormat.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Enumeration.h"
#include "java/util/Locale.h"
#include "java/util/ResourceBundle.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "java/util/concurrent/ConcurrentMap.h"
#include "org/joda/time/format/PeriodFormat.h"
#include "org/joda/time/format/PeriodFormatter.h"
#include "org/joda/time/format/PeriodFormatterBuilder.h"

@interface OrgJodaTimeFormatPeriodFormat ()

+ (OrgJodaTimeFormatPeriodFormatter *)buildRegExFormatterWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b;

+ (OrgJodaTimeFormatPeriodFormatter *)buildNonRegExFormatterWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b;

+ (IOSObjectArray *)retrieveVariantsWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b;

+ (jboolean)containsKeyWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)bundle
                                     withNSString:(NSString *)key;

@end

static NSString *OrgJodaTimeFormatPeriodFormat_BUNDLE_NAME_ = @"org.joda.time.format.messages";
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFormatPeriodFormat, BUNDLE_NAME_, NSString *)

static id<JavaUtilConcurrentConcurrentMap> OrgJodaTimeFormatPeriodFormat_FORMATTERS_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFormatPeriodFormat, FORMATTERS_, id<JavaUtilConcurrentConcurrentMap>)

__attribute__((unused)) static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildRegExFormatterWithJavaUtilResourceBundle_(JavaUtilResourceBundle *b);

__attribute__((unused)) static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildNonRegExFormatterWithJavaUtilResourceBundle_(JavaUtilResourceBundle *b);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(JavaUtilResourceBundle *b);

__attribute__((unused)) static jboolean OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(JavaUtilResourceBundle *bundle, NSString *key);

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeFormatPeriodFormat)

@implementation OrgJodaTimeFormatPeriodFormat

- (instancetype)init {
  OrgJodaTimeFormatPeriodFormat_init(self);
  return self;
}

+ (OrgJodaTimeFormatPeriodFormatter *)getDefault {
  return OrgJodaTimeFormatPeriodFormat_getDefault();
}

+ (OrgJodaTimeFormatPeriodFormatter *)wordBased {
  return OrgJodaTimeFormatPeriodFormat_wordBased();
}

+ (OrgJodaTimeFormatPeriodFormatter *)wordBasedWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(locale);
}

+ (OrgJodaTimeFormatPeriodFormatter *)buildRegExFormatterWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b {
  return OrgJodaTimeFormatPeriodFormat_buildRegExFormatterWithJavaUtilResourceBundle_(b);
}

+ (OrgJodaTimeFormatPeriodFormatter *)buildNonRegExFormatterWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b {
  return OrgJodaTimeFormatPeriodFormat_buildNonRegExFormatterWithJavaUtilResourceBundle_(b);
}

+ (IOSObjectArray *)retrieveVariantsWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)b {
  return OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(b);
}

+ (jboolean)containsKeyWithJavaUtilResourceBundle:(JavaUtilResourceBundle *)bundle
                                     withNSString:(NSString *)key {
  return OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(bundle, key);
}

+ (void)initialize {
  if (self == [OrgJodaTimeFormatPeriodFormat class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeFormatPeriodFormat_FORMATTERS_, nil, new_JavaUtilConcurrentConcurrentHashMap_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeFormatPeriodFormat)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PeriodFormat", NULL, 0x4, NULL, NULL },
    { "getDefault", NULL, "Lorg.joda.time.format.PeriodFormatter;", 0x9, NULL, NULL },
    { "wordBased", NULL, "Lorg.joda.time.format.PeriodFormatter;", 0x9, NULL, NULL },
    { "wordBasedWithJavaUtilLocale:", "wordBased", "Lorg.joda.time.format.PeriodFormatter;", 0x9, NULL, NULL },
    { "buildRegExFormatterWithJavaUtilResourceBundle:", "buildRegExFormatter", "Lorg.joda.time.format.PeriodFormatter;", 0xa, NULL, NULL },
    { "buildNonRegExFormatterWithJavaUtilResourceBundle:", "buildNonRegExFormatter", "Lorg.joda.time.format.PeriodFormatter;", 0xa, NULL, NULL },
    { "retrieveVariantsWithJavaUtilResourceBundle:", "retrieveVariants", "[Ljava.lang.String;", 0xa, NULL, NULL },
    { "containsKeyWithJavaUtilResourceBundle:withNSString:", "containsKey", "Z", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BUNDLE_NAME_", NULL, 0x1a, "Ljava.lang.String;", &OrgJodaTimeFormatPeriodFormat_BUNDLE_NAME_, NULL,  },
    { "FORMATTERS_", NULL, 0x1a, "Ljava.util.concurrent.ConcurrentMap;", &OrgJodaTimeFormatPeriodFormat_FORMATTERS_, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/Locale;Lorg/joda/time/format/PeriodFormatter;>;",  },
  };
  static const J2ObjcClassInfo _OrgJodaTimeFormatPeriodFormat = { 2, "PeriodFormat", "org.joda.time.format", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeFormatPeriodFormat;
}

@end

void OrgJodaTimeFormatPeriodFormat_init(OrgJodaTimeFormatPeriodFormat *self) {
  NSObject_init(self);
}

OrgJodaTimeFormatPeriodFormat *new_OrgJodaTimeFormatPeriodFormat_init() {
  OrgJodaTimeFormatPeriodFormat *self = [OrgJodaTimeFormatPeriodFormat alloc];
  OrgJodaTimeFormatPeriodFormat_init(self);
  return self;
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_getDefault() {
  OrgJodaTimeFormatPeriodFormat_initialize();
  return OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(JavaUtilLocale_get_ENGLISH_());
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_wordBased() {
  OrgJodaTimeFormatPeriodFormat_initialize();
  return OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(JavaUtilLocale_getDefault());
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(JavaUtilLocale *locale) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  OrgJodaTimeFormatPeriodFormatter *pf = [((id<JavaUtilConcurrentConcurrentMap>) nil_chk(OrgJodaTimeFormatPeriodFormat_FORMATTERS_)) getWithId:locale];
  if (pf == nil) {
    JavaUtilResourceBundle *b = JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_(OrgJodaTimeFormatPeriodFormat_BUNDLE_NAME_, locale);
    if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.regex.separator")) {
      pf = OrgJodaTimeFormatPeriodFormat_buildRegExFormatterWithJavaUtilResourceBundle_(b);
    }
    else {
      pf = OrgJodaTimeFormatPeriodFormat_buildNonRegExFormatterWithJavaUtilResourceBundle_(b);
    }
    [OrgJodaTimeFormatPeriodFormat_FORMATTERS_ putIfAbsentWithId:locale withId:pf];
  }
  return pf;
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildRegExFormatterWithJavaUtilResourceBundle_(JavaUtilResourceBundle *b) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  IOSObjectArray *variants = OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(b);
  NSString *regExSeparator = [((JavaUtilResourceBundle *) nil_chk(b)) getStringWithNSString:@"PeriodFormat.regex.separator"];
  OrgJodaTimeFormatPeriodFormatterBuilder *builder = [new_OrgJodaTimeFormatPeriodFormatterBuilder_init() autorelease];
  [builder appendYears];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.years.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.years.regex"])) split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.years.list"])) split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.year"] withNSString:[b getStringWithNSString:@"PeriodFormat.years"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendMonths];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.months.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.months.regex"])) split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.months.list"])) split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.month"] withNSString:[b getStringWithNSString:@"PeriodFormat.months"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendWeeks];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.weeks.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.weeks.regex"])) split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.weeks.list"])) split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.week"] withNSString:[b getStringWithNSString:@"PeriodFormat.weeks"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendDays];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.days.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.days.regex"])) split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.days.list"])) split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.day"] withNSString:[b getStringWithNSString:@"PeriodFormat.days"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendHours];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.hours.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.hours.regex"])) split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.hours.list"])) split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.hour"] withNSString:[b getStringWithNSString:@"PeriodFormat.hours"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendMinutes];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.minutes.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.minutes.regex"])) split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.minutes.list"])) split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.minute"] withNSString:[b getStringWithNSString:@"PeriodFormat.minutes"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendSeconds];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.seconds.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.seconds.regex"])) split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.seconds.list"])) split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.second"] withNSString:[b getStringWithNSString:@"PeriodFormat.seconds"]];
  }
  [builder appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants];
  [builder appendMillis];
  if (OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(b, @"PeriodFormat.milliseconds.regex")) {
    [builder appendSuffixWithNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.milliseconds.regex"])) split:regExSeparator] withNSStringArray:[((NSString *) nil_chk([b getStringWithNSString:@"PeriodFormat.milliseconds.list"])) split:regExSeparator]];
  }
  else {
    [builder appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.millisecond"] withNSString:[b getStringWithNSString:@"PeriodFormat.milliseconds"]];
  }
  return [builder toFormatter];
}

OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_buildNonRegExFormatterWithJavaUtilResourceBundle_(JavaUtilResourceBundle *b) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  IOSObjectArray *variants = OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(b);
  return [((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) nil_chk([((OrgJodaTimeFormatPeriodFormatterBuilder *) [new_OrgJodaTimeFormatPeriodFormatterBuilder_init() autorelease]) appendYears])) appendSuffixWithNSString:[((JavaUtilResourceBundle *) nil_chk(b)) getStringWithNSString:@"PeriodFormat.year"] withNSString:[b getStringWithNSString:@"PeriodFormat.years"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendMonths])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.month"] withNSString:[b getStringWithNSString:@"PeriodFormat.months"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendWeeks])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.week"] withNSString:[b getStringWithNSString:@"PeriodFormat.weeks"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendDays])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.day"] withNSString:[b getStringWithNSString:@"PeriodFormat.days"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendHours])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.hour"] withNSString:[b getStringWithNSString:@"PeriodFormat.hours"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendMinutes])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.minute"] withNSString:[b getStringWithNSString:@"PeriodFormat.minutes"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendSeconds])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.second"] withNSString:[b getStringWithNSString:@"PeriodFormat.seconds"]])) appendSeparatorWithNSString:[b getStringWithNSString:@"PeriodFormat.commaspace"] withNSString:[b getStringWithNSString:@"PeriodFormat.spaceandspace"] withNSStringArray:variants])) appendMillis])) appendSuffixWithNSString:[b getStringWithNSString:@"PeriodFormat.millisecond"] withNSString:[b getStringWithNSString:@"PeriodFormat.milliseconds"]])) toFormatter];
}

IOSObjectArray *OrgJodaTimeFormatPeriodFormat_retrieveVariantsWithJavaUtilResourceBundle_(JavaUtilResourceBundle *b) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  return [IOSObjectArray arrayWithObjects:(id[]){ [((JavaUtilResourceBundle *) nil_chk(b)) getStringWithNSString:@"PeriodFormat.space"], [b getStringWithNSString:@"PeriodFormat.comma"], [b getStringWithNSString:@"PeriodFormat.commandand"], [b getStringWithNSString:@"PeriodFormat.commaspaceand"] } count:4 type:NSString_class_()];
}

jboolean OrgJodaTimeFormatPeriodFormat_containsKeyWithJavaUtilResourceBundle_withNSString_(JavaUtilResourceBundle *bundle, NSString *key) {
  OrgJodaTimeFormatPeriodFormat_initialize();
  for (id<JavaUtilEnumeration> en = [((JavaUtilResourceBundle *) nil_chk(bundle)) getKeys]; [((id<JavaUtilEnumeration>) nil_chk(en)) hasMoreElements]; ) {
    if ([((NSString *) nil_chk([en nextElement])) isEqual:key]) {
      return YES;
    }
  }
  return NO;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatPeriodFormat)
