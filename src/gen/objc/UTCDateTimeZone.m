//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/UTCDateTimeZone.java
//

#include "DateTimeZone.h"
#include "UTCDateTimeZone.h"
#include "java/util/SimpleTimeZone.h"
#include "java/util/TimeZone.h"

BOOL OrgJodaTimeUTCDateTimeZone_initialized = NO;

@implementation OrgJodaTimeUTCDateTimeZone

OrgJodaTimeDateTimeZone * OrgJodaTimeUTCDateTimeZone_INSTANCE_;

- (instancetype)init {
  return [super initWithNSString:@"UTC"];
}

- (NSString *)getNameKeyWithLong:(long long int)instant {
  return @"UTC";
}

- (int)getOffsetWithLong:(long long int)instant {
  return 0;
}

- (int)getStandardOffsetWithLong:(long long int)instant {
  return 0;
}

- (int)getOffsetFromLocalWithLong:(long long int)instantLocal {
  return 0;
}

- (BOOL)isFixed {
  return YES;
}

- (long long int)nextTransitionWithLong:(long long int)instant {
  return instant;
}

- (long long int)previousTransitionWithLong:(long long int)instant {
  return instant;
}

- (JavaUtilTimeZone *)toTimeZone {
  return [[JavaUtilSimpleTimeZone alloc] initWithInt:0 withNSString:[self getID]];
}

- (BOOL)isEqual:(id)obj {
  return ([obj isKindOfClass:[OrgJodaTimeUTCDateTimeZone class]]);
}

- (NSUInteger)hash {
  return ((int) [((NSString *) nil_chk([self getID])) hash]);
}

+ (void)initialize {
  if (self == [OrgJodaTimeUTCDateTimeZone class]) {
    OrgJodaTimeUTCDateTimeZone_INSTANCE_ = [[OrgJodaTimeUTCDateTimeZone alloc] init];
    OrgJodaTimeUTCDateTimeZone_initialized = YES;
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "UTCDateTimeZone", NULL, 0x1, NULL },
    { "getNameKeyWithLong:", "getNameKey", "Ljava.lang.String;", 0x1, NULL },
    { "getOffsetWithLong:", "getOffset", "I", 0x1, NULL },
    { "getStandardOffsetWithLong:", "getStandardOffset", "I", 0x1, NULL },
    { "getOffsetFromLocalWithLong:", "getOffsetFromLocal", "I", 0x1, NULL },
    { "isFixed", NULL, "Z", 0x1, NULL },
    { "nextTransitionWithLong:", "nextTransition", "J", 0x1, NULL },
    { "previousTransitionWithLong:", "previousTransition", "J", 0x1, NULL },
    { "toTimeZone", NULL, "Ljava.util.TimeZone;", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x18, "Lorg.joda.time.DateTimeZone;", &OrgJodaTimeUTCDateTimeZone_INSTANCE_,  },
    { "serialVersionUID_UTCDateTimeZone_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = OrgJodaTimeUTCDateTimeZone_serialVersionUID },
  };
  static J2ObjcClassInfo _OrgJodaTimeUTCDateTimeZone = { "UTCDateTimeZone", "org.joda.time", NULL, 0x10, 11, methods, 2, fields, 0, NULL};
  return &_OrgJodaTimeUTCDateTimeZone;
}

@end
