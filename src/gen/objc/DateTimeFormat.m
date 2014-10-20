//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/format/DateTimeFormat.java
//

#include "Chronology.h"
#include "DateTime.h"
#include "DateTimeFormat.h"
#include "DateTimeFormatter.h"
#include "DateTimeFormatterBuilder.h"
#include "DateTimeParserBucket.h"
#include "DateTimeZone.h"
#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "InternalParser.h"
#include "InternalPrinter.h"
#include "ReadablePartial.h"
#include "java/io/IOException.h"
#include "java/lang/Appendable.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/text/DateFormat.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Locale.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "java/util/concurrent/atomic/AtomicReferenceArray.h"

BOOL OrgJodaTimeFormatDateTimeFormat_initialized = NO;

@implementation OrgJodaTimeFormatDateTimeFormat

JavaUtilConcurrentConcurrentHashMap * OrgJodaTimeFormatDateTimeFormat_cPatternCache_;
JavaUtilConcurrentAtomicAtomicReferenceArray * OrgJodaTimeFormatDateTimeFormat_cStyleCache_;

+ (OrgJodaTimeFormatDateTimeFormatter *)forPatternWithNSString:(NSString *)pattern {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForPatternWithNSString:pattern];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)forStyleWithNSString:(NSString *)style {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleWithNSString:style];
}

+ (NSString *)patternForStyleWithNSString:(NSString *)style
                       withJavaUtilLocale:(JavaUtilLocale *)locale {
  OrgJodaTimeFormatDateTimeFormatter *formatter = [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleWithNSString:style];
  if (locale == nil) {
    locale = [JavaUtilLocale getDefault];
  }
  return [((OrgJodaTimeFormatDateTimeFormat_StyleFormatter *) nil_chk(((OrgJodaTimeFormatDateTimeFormat_StyleFormatter *) check_class_cast([((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(formatter)) getPrinter0], [OrgJodaTimeFormatDateTimeFormat_StyleFormatter class])))) getPatternWithJavaUtilLocale:locale];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)shortDate {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_SHORT withInt:OrgJodaTimeFormatDateTimeFormat_NONE];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)shortTime {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_NONE withInt:OrgJodaTimeFormatDateTimeFormat_SHORT];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)shortDateTime {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_SHORT withInt:OrgJodaTimeFormatDateTimeFormat_SHORT];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)mediumDate {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_MEDIUM withInt:OrgJodaTimeFormatDateTimeFormat_NONE];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)mediumTime {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_NONE withInt:OrgJodaTimeFormatDateTimeFormat_MEDIUM];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)mediumDateTime {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_MEDIUM withInt:OrgJodaTimeFormatDateTimeFormat_MEDIUM];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)longDate {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_LONG withInt:OrgJodaTimeFormatDateTimeFormat_NONE];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)longTime {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_NONE withInt:OrgJodaTimeFormatDateTimeFormat_LONG];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)longDateTime {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_LONG withInt:OrgJodaTimeFormatDateTimeFormat_LONG];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)fullDate {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_FULL withInt:OrgJodaTimeFormatDateTimeFormat_NONE];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)fullTime {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_NONE withInt:OrgJodaTimeFormatDateTimeFormat_FULL];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)fullDateTime {
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:OrgJodaTimeFormatDateTimeFormat_FULL withInt:OrgJodaTimeFormatDateTimeFormat_FULL];
}

+ (void)appendPatternToWithOrgJodaTimeFormatDateTimeFormatterBuilder:(OrgJodaTimeFormatDateTimeFormatterBuilder *)builder
                                                        withNSString:(NSString *)pattern {
  [OrgJodaTimeFormatDateTimeFormat parsePatternToWithOrgJodaTimeFormatDateTimeFormatterBuilder:builder withNSString:pattern];
}

- (instancetype)init {
  return [super init];
}

+ (void)parsePatternToWithOrgJodaTimeFormatDateTimeFormatterBuilder:(OrgJodaTimeFormatDateTimeFormatterBuilder *)builder
                                                       withNSString:(NSString *)pattern {
  int length = ((int) [((NSString *) nil_chk(pattern)) length]);
  IOSIntArray *indexRef = [IOSIntArray arrayWithLength:1];
  for (int i = 0; i < length; i++) {
    (*IOSIntArray_GetRef(indexRef, 0)) = i;
    NSString *token = [OrgJodaTimeFormatDateTimeFormat parseTokenWithNSString:pattern withIntArray:indexRef];
    i = IOSIntArray_Get(indexRef, 0);
    int tokenLen = ((int) [((NSString *) nil_chk(token)) length]);
    if (tokenLen == 0) {
      break;
    }
    unichar c = [token charAtWithInt:0];
    {
      NSString *sub;
      switch (c) {
        case 'G':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendEraText];
        break;
        case 'C':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendCenturyOfEraWithInt:tokenLen withInt:tokenLen];
        break;
        case 'x':
        case 'y':
        case 'Y':
        if (tokenLen == 2) {
          BOOL lenientParse = YES;
          if (i + 1 < length) {
            (*IOSIntArray_GetRef(indexRef, 0))++;
            if ([OrgJodaTimeFormatDateTimeFormat isNumericTokenWithNSString:[OrgJodaTimeFormatDateTimeFormat parseTokenWithNSString:pattern withIntArray:indexRef]]) {
              lenientParse = NO;
            }
            (*IOSIntArray_GetRef(indexRef, 0))--;
          }
          switch (c) {
            case 'x':
            (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendTwoDigitWeekyearWithInt:[((OrgJodaTimeDateTime *) [[OrgJodaTimeDateTime alloc] init]) getWeekyear] - 30 withBoolean:lenientParse];
            break;
            case 'y':
            case 'Y':
            default:
            (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendTwoDigitYearWithInt:[((OrgJodaTimeDateTime *) [[OrgJodaTimeDateTime alloc] init]) getYear] - 30 withBoolean:lenientParse];
            break;
          }
        }
        else {
          int maxDigits = 9;
          if (i + 1 < length) {
            (*IOSIntArray_GetRef(indexRef, 0))++;
            if ([OrgJodaTimeFormatDateTimeFormat isNumericTokenWithNSString:[OrgJodaTimeFormatDateTimeFormat parseTokenWithNSString:pattern withIntArray:indexRef]]) {
              maxDigits = tokenLen;
            }
            (*IOSIntArray_GetRef(indexRef, 0))--;
          }
          switch (c) {
            case 'x':
            (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendWeekyearWithInt:tokenLen withInt:maxDigits];
            break;
            case 'y':
            (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendYearWithInt:tokenLen withInt:maxDigits];
            break;
            case 'Y':
            (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendYearOfEraWithInt:tokenLen withInt:maxDigits];
            break;
          }
        }
        break;
        case 'M':
        if (tokenLen >= 3) {
          if (tokenLen >= 4) {
            (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendMonthOfYearText];
          }
          else {
            (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendMonthOfYearShortText];
          }
        }
        else {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendMonthOfYearWithInt:tokenLen];
        }
        break;
        case 'd':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendDayOfMonthWithInt:tokenLen];
        break;
        case 'a':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendHalfdayOfDayText];
        break;
        case 'h':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendClockhourOfHalfdayWithInt:tokenLen];
        break;
        case 'H':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendHourOfDayWithInt:tokenLen];
        break;
        case 'k':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendClockhourOfDayWithInt:tokenLen];
        break;
        case 'K':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendHourOfHalfdayWithInt:tokenLen];
        break;
        case 'm':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendMinuteOfHourWithInt:tokenLen];
        break;
        case 's':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendSecondOfMinuteWithInt:tokenLen];
        break;
        case 'S':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendFractionOfSecondWithInt:tokenLen withInt:tokenLen];
        break;
        case 'e':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendDayOfWeekWithInt:tokenLen];
        break;
        case 'E':
        if (tokenLen >= 4) {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendDayOfWeekText];
        }
        else {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendDayOfWeekShortText];
        }
        break;
        case 'D':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendDayOfYearWithInt:tokenLen];
        break;
        case 'w':
        (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendWeekOfWeekyearWithInt:tokenLen];
        break;
        case 'z':
        if (tokenLen >= 4) {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendTimeZoneName];
        }
        else {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendTimeZoneShortNameWithJavaUtilMap:nil];
        }
        break;
        case 'Z':
        if (tokenLen == 1) {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendTimeZoneOffsetWithNSString:nil withNSString:@"Z" withBoolean:NO withInt:2 withInt:2];
        }
        else if (tokenLen == 2) {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendTimeZoneOffsetWithNSString:nil withNSString:@"Z" withBoolean:YES withInt:2 withInt:2];
        }
        else {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendTimeZoneId];
        }
        break;
        case '\'':
        sub = [token substring:1];
        if (((int) [((NSString *) nil_chk(sub)) length]) == 1) {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendLiteralWithChar:[sub charAtWithInt:0]];
        }
        else {
          (void) [((OrgJodaTimeFormatDateTimeFormatterBuilder *) nil_chk(builder)) appendLiteralWithNSString:[NSString stringWithString:sub]];
        }
        break;
        default:
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Illegal pattern component: %@", token]];
      }
    }
  }
}

+ (NSString *)parseTokenWithNSString:(NSString *)pattern
                        withIntArray:(IOSIntArray *)indexRef {
  JavaLangStringBuilder *buf = [[JavaLangStringBuilder alloc] init];
  int i = IOSIntArray_Get(nil_chk(indexRef), 0);
  int length = ((int) [((NSString *) nil_chk(pattern)) length]);
  unichar c = [pattern charAtWithInt:i];
  if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')) {
    (void) [buf appendWithChar:c];
    while (i + 1 < length) {
      unichar peek = [pattern charAtWithInt:i + 1];
      if (peek == c) {
        (void) [buf appendWithChar:c];
        i++;
      }
      else {
        break;
      }
    }
  }
  else {
    (void) [buf appendWithChar:'\''];
    BOOL inLiteral = NO;
    for (; i < length; i++) {
      c = [pattern charAtWithInt:i];
      if (c == '\'') {
        if (i + 1 < length && [pattern charAtWithInt:i + 1] == '\'') {
          i++;
          (void) [buf appendWithChar:c];
        }
        else {
          inLiteral = !inLiteral;
        }
      }
      else if (!inLiteral && ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z'))) {
        i--;
        break;
      }
      else {
        (void) [buf appendWithChar:c];
      }
    }
  }
  (*IOSIntArray_GetRef(indexRef, 0)) = i;
  return [buf description];
}

+ (BOOL)isNumericTokenWithNSString:(NSString *)token {
  int tokenLen = ((int) [((NSString *) nil_chk(token)) length]);
  if (tokenLen > 0) {
    unichar c = [token charAtWithInt:0];
    switch (c) {
      case 'c':
      case 'C':
      case 'x':
      case 'y':
      case 'Y':
      case 'd':
      case 'h':
      case 'H':
      case 'm':
      case 's':
      case 'S':
      case 'e':
      case 'D':
      case 'F':
      case 'w':
      case 'W':
      case 'k':
      case 'K':
      return YES;
      case 'M':
      if (tokenLen <= 2) {
        return YES;
      }
    }
  }
  return NO;
}

+ (OrgJodaTimeFormatDateTimeFormatter *)createFormatterForPatternWithNSString:(NSString *)pattern {
  if (pattern == nil || ((int) [pattern length]) == 0) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Invalid pattern specification"];
  }
  OrgJodaTimeFormatDateTimeFormatter *formatter = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(OrgJodaTimeFormatDateTimeFormat_cPatternCache_)) getWithId:pattern];
  if (formatter == nil) {
    OrgJodaTimeFormatDateTimeFormatterBuilder *builder = [[OrgJodaTimeFormatDateTimeFormatterBuilder alloc] init];
    [OrgJodaTimeFormatDateTimeFormat parsePatternToWithOrgJodaTimeFormatDateTimeFormatterBuilder:builder withNSString:pattern];
    formatter = [builder toFormatter];
    if ([OrgJodaTimeFormatDateTimeFormat_cPatternCache_ size] < OrgJodaTimeFormatDateTimeFormat_PATTERN_CACHE_SIZE) {
      OrgJodaTimeFormatDateTimeFormatter *oldFormatter = [OrgJodaTimeFormatDateTimeFormat_cPatternCache_ putIfAbsentWithId:pattern withId:formatter];
      if (oldFormatter != nil) {
        formatter = oldFormatter;
      }
    }
  }
  return formatter;
}

+ (OrgJodaTimeFormatDateTimeFormatter *)createFormatterForStyleWithNSString:(NSString *)style {
  if (style == nil || ((int) [style length]) != 2) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid style specification: %@", style]];
  }
  int dateStyle = [OrgJodaTimeFormatDateTimeFormat selectStyleWithChar:[((NSString *) nil_chk(style)) charAtWithInt:0]];
  int timeStyle = [OrgJodaTimeFormatDateTimeFormat selectStyleWithChar:[style charAtWithInt:1]];
  if (dateStyle == OrgJodaTimeFormatDateTimeFormat_NONE && timeStyle == OrgJodaTimeFormatDateTimeFormat_NONE) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Style '--' is invalid"];
  }
  return [OrgJodaTimeFormatDateTimeFormat createFormatterForStyleIndexWithInt:dateStyle withInt:timeStyle];
}

+ (OrgJodaTimeFormatDateTimeFormatter *)createFormatterForStyleIndexWithInt:(int)dateStyle
                                                                    withInt:(int)timeStyle {
  int index = ((dateStyle << 2) + dateStyle) + timeStyle;
  if (index >= [((JavaUtilConcurrentAtomicAtomicReferenceArray *) nil_chk(OrgJodaTimeFormatDateTimeFormat_cStyleCache_)) length]) {
    return [OrgJodaTimeFormatDateTimeFormat createDateTimeFormatterWithInt:dateStyle withInt:timeStyle];
  }
  OrgJodaTimeFormatDateTimeFormatter *f = [OrgJodaTimeFormatDateTimeFormat_cStyleCache_ getWithInt:index];
  if (f == nil) {
    f = [OrgJodaTimeFormatDateTimeFormat createDateTimeFormatterWithInt:dateStyle withInt:timeStyle];
    if ([OrgJodaTimeFormatDateTimeFormat_cStyleCache_ compareAndSetWithInt:index withId:nil withId:f] == NO) {
      f = [OrgJodaTimeFormatDateTimeFormat_cStyleCache_ getWithInt:index];
    }
  }
  return f;
}

+ (OrgJodaTimeFormatDateTimeFormatter *)createDateTimeFormatterWithInt:(int)dateStyle
                                                               withInt:(int)timeStyle {
  int type = OrgJodaTimeFormatDateTimeFormat_DATETIME;
  if (dateStyle == OrgJodaTimeFormatDateTimeFormat_NONE) {
    type = OrgJodaTimeFormatDateTimeFormat_TIME;
  }
  else if (timeStyle == OrgJodaTimeFormatDateTimeFormat_NONE) {
    type = OrgJodaTimeFormatDateTimeFormat_DATE;
  }
  OrgJodaTimeFormatDateTimeFormat_StyleFormatter *llf = [[OrgJodaTimeFormatDateTimeFormat_StyleFormatter alloc] initWithInt:dateStyle withInt:timeStyle withInt:type];
  return [[OrgJodaTimeFormatDateTimeFormatter alloc] initWithOrgJodaTimeFormatInternalPrinter:llf withOrgJodaTimeFormatInternalParser:llf];
}

+ (int)selectStyleWithChar:(unichar)ch {
  switch (ch) {
    case 'S':
    return OrgJodaTimeFormatDateTimeFormat_SHORT;
    case 'M':
    return OrgJodaTimeFormatDateTimeFormat_MEDIUM;
    case 'L':
    return OrgJodaTimeFormatDateTimeFormat_LONG;
    case 'F':
    return OrgJodaTimeFormatDateTimeFormat_FULL;
    case '-':
    return OrgJodaTimeFormatDateTimeFormat_NONE;
    default:
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid style character: %C", ch]];
  }
}

+ (void)initialize {
  if (self == [OrgJodaTimeFormatDateTimeFormat class]) {
    OrgJodaTimeFormatDateTimeFormat_cPatternCache_ = [[JavaUtilConcurrentConcurrentHashMap alloc] init];
    OrgJodaTimeFormatDateTimeFormat_cStyleCache_ = [[JavaUtilConcurrentAtomicAtomicReferenceArray alloc] initWithInt:25];
    OrgJodaTimeFormatDateTimeFormat_initialized = YES;
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "forPatternWithNSString:", "forPattern", "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "forStyleWithNSString:", "forStyle", "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "patternForStyleWithNSString:withJavaUtilLocale:", "patternForStyle", "Ljava.lang.String;", 0x9, NULL },
    { "shortDate", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "shortTime", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "shortDateTime", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "mediumDate", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "mediumTime", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "mediumDateTime", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "longDate", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "longTime", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "longDateTime", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "fullDate", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "fullTime", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "fullDateTime", NULL, "Lorg.joda.time.format.DateTimeFormatter;", 0x9, NULL },
    { "appendPatternToWithOrgJodaTimeFormatDateTimeFormatterBuilder:withNSString:", "appendPatternTo", "V", 0x8, NULL },
    { "init", "DateTimeFormat", NULL, 0x4, NULL },
    { "parsePatternToWithOrgJodaTimeFormatDateTimeFormatterBuilder:withNSString:", "parsePatternTo", "V", 0xa, NULL },
    { "parseTokenWithNSString:withIntArray:", "parseToken", "Ljava.lang.String;", 0xa, NULL },
    { "isNumericTokenWithNSString:", "isNumericToken", "Z", 0xa, NULL },
    { "createFormatterForPatternWithNSString:", "createFormatterForPattern", "Lorg.joda.time.format.DateTimeFormatter;", 0xa, NULL },
    { "createFormatterForStyleWithNSString:", "createFormatterForStyle", "Lorg.joda.time.format.DateTimeFormatter;", 0xa, NULL },
    { "createFormatterForStyleIndexWithInt:withInt:", "createFormatterForStyleIndex", "Lorg.joda.time.format.DateTimeFormatter;", 0xa, NULL },
    { "createDateTimeFormatterWithInt:withInt:", "createDateTimeFormatter", "Lorg.joda.time.format.DateTimeFormatter;", 0xa, NULL },
    { "selectStyleWithChar:", "selectStyle", "I", 0xa, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "FULL_", NULL, 0x18, "I", NULL, .constantValue.asInt = OrgJodaTimeFormatDateTimeFormat_FULL },
    { "LONG_", NULL, 0x18, "I", NULL, .constantValue.asInt = OrgJodaTimeFormatDateTimeFormat_LONG },
    { "MEDIUM_", NULL, 0x18, "I", NULL, .constantValue.asInt = OrgJodaTimeFormatDateTimeFormat_MEDIUM },
    { "SHORT_", NULL, 0x18, "I", NULL, .constantValue.asInt = OrgJodaTimeFormatDateTimeFormat_SHORT },
    { "NONE_", NULL, 0x18, "I", NULL, .constantValue.asInt = OrgJodaTimeFormatDateTimeFormat_NONE },
    { "DATE_", NULL, 0x18, "I", NULL, .constantValue.asInt = OrgJodaTimeFormatDateTimeFormat_DATE },
    { "TIME_", NULL, 0x18, "I", NULL, .constantValue.asInt = OrgJodaTimeFormatDateTimeFormat_TIME },
    { "DATETIME_", NULL, 0x18, "I", NULL, .constantValue.asInt = OrgJodaTimeFormatDateTimeFormat_DATETIME },
    { "PATTERN_CACHE_SIZE_", NULL, 0x1a, "I", NULL, .constantValue.asInt = OrgJodaTimeFormatDateTimeFormat_PATTERN_CACHE_SIZE },
    { "cPatternCache_", NULL, 0x1a, "Ljava.util.concurrent.ConcurrentHashMap;", &OrgJodaTimeFormatDateTimeFormat_cPatternCache_,  },
    { "cStyleCache_", NULL, 0x1a, "Ljava.util.concurrent.atomic.AtomicReferenceArray;", &OrgJodaTimeFormatDateTimeFormat_cStyleCache_,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeFormatDateTimeFormat = { "DateTimeFormat", "org.joda.time.format", NULL, 0x1, 25, methods, 11, fields, 0, NULL};
  return &_OrgJodaTimeFormatDateTimeFormat;
}

@end

BOOL OrgJodaTimeFormatDateTimeFormat_StyleFormatter_initialized = NO;

@implementation OrgJodaTimeFormatDateTimeFormat_StyleFormatter

JavaUtilConcurrentConcurrentHashMap * OrgJodaTimeFormatDateTimeFormat_StyleFormatter_cCache_;

- (instancetype)initWithInt:(int)dateStyle
                    withInt:(int)timeStyle
                    withInt:(int)type {
  if (self = [super init]) {
    iDateStyle_ = dateStyle;
    iTimeStyle_ = timeStyle;
    iType_ = type;
  }
  return self;
}

- (int)estimatePrintedLength {
  return 40;
}

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appenadble
                             withLong:(long long int)instant
            withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                              withInt:(int)displayOffset
          withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
                   withJavaUtilLocale:(JavaUtilLocale *)locale {
  id<OrgJodaTimeFormatInternalPrinter> p = [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk([self getFormatterWithJavaUtilLocale:locale])) getPrinter0];
  [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(p)) printToWithJavaLangAppendable:appenadble withLong:instant withOrgJodaTimeChronology:chrono withInt:displayOffset withOrgJodaTimeDateTimeZone:displayZone withJavaUtilLocale:locale];
}

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
       withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                   withJavaUtilLocale:(JavaUtilLocale *)locale {
  id<OrgJodaTimeFormatInternalPrinter> p = [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk([self getFormatterWithJavaUtilLocale:locale])) getPrinter0];
  [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(p)) printToWithJavaLangAppendable:appendable withOrgJodaTimeReadablePartial:partial withJavaUtilLocale:locale];
}

- (int)estimateParsedLength {
  return 40;
}

- (int)parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)bucket
                                 withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                                  withInt:(int)position {
  id<OrgJodaTimeFormatInternalParser> p = [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk([self getFormatterWithJavaUtilLocale:[((OrgJodaTimeFormatDateTimeParserBucket *) nil_chk(bucket)) getLocale]])) getParser0];
  return [((id<OrgJodaTimeFormatInternalParser>) nil_chk(p)) parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:bucket withJavaLangCharSequence:text withInt:position];
}

- (OrgJodaTimeFormatDateTimeFormatter *)getFormatterWithJavaUtilLocale:(JavaUtilLocale *)locale {
  locale = (locale == nil ? [JavaUtilLocale getDefault] : locale);
  OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey *key = [[OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey alloc] initWithInt:iType_ withInt:iDateStyle_ withInt:iTimeStyle_ withJavaUtilLocale:locale];
  OrgJodaTimeFormatDateTimeFormatter *f = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(OrgJodaTimeFormatDateTimeFormat_StyleFormatter_cCache_)) getWithId:key];
  if (f == nil) {
    f = [OrgJodaTimeFormatDateTimeFormat forPatternWithNSString:[self getPatternWithJavaUtilLocale:locale]];
    OrgJodaTimeFormatDateTimeFormatter *oldFormatter = [OrgJodaTimeFormatDateTimeFormat_StyleFormatter_cCache_ putIfAbsentWithId:key withId:f];
    if (oldFormatter != nil) {
      f = oldFormatter;
    }
  }
  return f;
}

- (NSString *)getPatternWithJavaUtilLocale:(JavaUtilLocale *)locale {
  JavaTextDateFormat *f = nil;
  switch (iType_) {
    case OrgJodaTimeFormatDateTimeFormat_DATE:
    f = [JavaTextDateFormat getDateInstanceWithInt:iDateStyle_ withJavaUtilLocale:locale];
    break;
    case OrgJodaTimeFormatDateTimeFormat_TIME:
    f = [JavaTextDateFormat getTimeInstanceWithInt:iTimeStyle_ withJavaUtilLocale:locale];
    break;
    case OrgJodaTimeFormatDateTimeFormat_DATETIME:
    f = [JavaTextDateFormat getDateTimeInstanceWithInt:iDateStyle_ withInt:iTimeStyle_ withJavaUtilLocale:locale];
    break;
  }
  if ([f isKindOfClass:[JavaTextSimpleDateFormat class]] == NO) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No datetime pattern for locale: %@", locale]];
  }
  return [((JavaTextSimpleDateFormat *) nil_chk(((JavaTextSimpleDateFormat *) check_class_cast(f, [JavaTextSimpleDateFormat class])))) toPattern];
}

+ (void)initialize {
  if (self == [OrgJodaTimeFormatDateTimeFormat_StyleFormatter class]) {
    OrgJodaTimeFormatDateTimeFormat_StyleFormatter_cCache_ = [[JavaUtilConcurrentConcurrentHashMap alloc] init];
    OrgJodaTimeFormatDateTimeFormat_StyleFormatter_initialized = YES;
  }
}

- (void)copyAllFieldsTo:(OrgJodaTimeFormatDateTimeFormat_StyleFormatter *)other {
  [super copyAllFieldsTo:other];
  other->iDateStyle_ = iDateStyle_;
  other->iTimeStyle_ = iTimeStyle_;
  other->iType_ = iType_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withInt:", "StyleFormatter", NULL, 0x0, NULL },
    { "estimatePrintedLength", NULL, "I", 0x1, NULL },
    { "printToWithJavaLangAppendable:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:", "printTo", "V", 0x1, "Ljava.io.IOException;" },
    { "printToWithJavaLangAppendable:withOrgJodaTimeReadablePartial:withJavaUtilLocale:", "printTo", "V", 0x1, "Ljava.io.IOException;" },
    { "estimateParsedLength", NULL, "I", 0x1, NULL },
    { "parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:withJavaLangCharSequence:withInt:", "parseInto", "I", 0x1, NULL },
    { "getFormatterWithJavaUtilLocale:", "getFormatter", "Lorg.joda.time.format.DateTimeFormatter;", 0x2, NULL },
    { "getPatternWithJavaUtilLocale:", "getPattern", "Ljava.lang.String;", 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "cCache_", NULL, 0x1a, "Ljava.util.concurrent.ConcurrentHashMap;", &OrgJodaTimeFormatDateTimeFormat_StyleFormatter_cCache_,  },
    { "iDateStyle_", NULL, 0x12, "I", NULL,  },
    { "iTimeStyle_", NULL, 0x12, "I", NULL,  },
    { "iType_", NULL, 0x12, "I", NULL,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeFormatDateTimeFormat_StyleFormatter = { "StyleFormatter", "org.joda.time.format", "DateTimeFormat", 0x8, 8, methods, 4, fields, 0, NULL};
  return &_OrgJodaTimeFormatDateTimeFormat_StyleFormatter;
}

@end

@implementation OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey

- (instancetype)initWithInt:(int)iType
                    withInt:(int)iDateStyle
                    withInt:(int)iTimeStyle
         withJavaUtilLocale:(JavaUtilLocale *)locale {
  if (self = [super init]) {
    self->locale_ = locale;
    self->combinedTypeAndStyle_ = iType + (iDateStyle << 4) + (iTimeStyle << 8);
  }
  return self;
}

- (NSUInteger)hash {
  int prime = 31;
  int result = 1;
  result = prime * result + combinedTypeAndStyle_;
  result = prime * result + ((locale_ == nil) ? 0 : ((int) [locale_ hash]));
  return result;
}

- (BOOL)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if (obj == nil) {
    return NO;
  }
  if (!([obj isKindOfClass:[OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey class]])) {
    return NO;
  }
  OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey *other = (OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey *) check_class_cast(obj, [OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey class]);
  if (combinedTypeAndStyle_ != ((OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey *) nil_chk(other))->combinedTypeAndStyle_) {
    return NO;
  }
  if (locale_ == nil) {
    if (other->locale_ != nil) {
      return NO;
    }
  }
  else if (![locale_ isEqual:other->locale_]) {
    return NO;
  }
  return YES;
}

- (void)copyAllFieldsTo:(OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey *)other {
  [super copyAllFieldsTo:other];
  other->combinedTypeAndStyle_ = combinedTypeAndStyle_;
  other->locale_ = locale_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withInt:withJavaUtilLocale:", "StyleFormatterCacheKey", NULL, 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "combinedTypeAndStyle_", NULL, 0x12, "I", NULL,  },
    { "locale_", NULL, 0x12, "Ljava.util.Locale;", NULL,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey = { "StyleFormatterCacheKey", "org.joda.time.format", "DateTimeFormat", 0x8, 3, methods, 2, fields, 0, NULL};
  return &_OrgJodaTimeFormatDateTimeFormat_StyleFormatterCacheKey;
}

@end
