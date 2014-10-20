//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/convert/ConverterManager.java
//

#include "CalendarConverter.h"
#include "Converter.h"
#include "ConverterManager.h"
#include "ConverterSet.h"
#include "DateConverter.h"
#include "DurationConverter.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "InstantConverter.h"
#include "IntervalConverter.h"
#include "JodaTimePermission.h"
#include "LongConverter.h"
#include "NullConverter.h"
#include "PartialConverter.h"
#include "PeriodConverter.h"
#include "ReadableDurationConverter.h"
#include "ReadableInstantConverter.h"
#include "ReadableIntervalConverter.h"
#include "ReadablePartialConverter.h"
#include "ReadablePeriodConverter.h"
#include "StringConverter.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/SecurityException.h"
#include "java/lang/SecurityManager.h"
#include "java/lang/System.h"

@implementation OrgJodaTimeConvertConverterManager

OrgJodaTimeConvertConverterManager * OrgJodaTimeConvertConverterManager_INSTANCE_;

+ (OrgJodaTimeConvertConverterManager *)getInstance {
  if (OrgJodaTimeConvertConverterManager_INSTANCE_ == nil) {
    OrgJodaTimeConvertConverterManager_INSTANCE_ = [[OrgJodaTimeConvertConverterManager alloc] init];
  }
  return OrgJodaTimeConvertConverterManager_INSTANCE_;
}

- (instancetype)init {
  if (self = [super init]) {
    iInstantConverters_ = [[OrgJodaTimeConvertConverterSet alloc] initWithOrgJodaTimeConvertConverterArray:[IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeConvertReadableInstantConverter_get_INSTANCE_(), OrgJodaTimeConvertStringConverter_get_INSTANCE_(), OrgJodaTimeConvertCalendarConverter_get_INSTANCE_(), OrgJodaTimeConvertDateConverter_get_INSTANCE_(), OrgJodaTimeConvertLongConverter_get_INSTANCE_(), OrgJodaTimeConvertNullConverter_get_INSTANCE_() } count:6 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertConverter)]]];
    iPartialConverters_ = [[OrgJodaTimeConvertConverterSet alloc] initWithOrgJodaTimeConvertConverterArray:[IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeConvertReadablePartialConverter_get_INSTANCE_(), OrgJodaTimeConvertReadableInstantConverter_get_INSTANCE_(), OrgJodaTimeConvertStringConverter_get_INSTANCE_(), OrgJodaTimeConvertCalendarConverter_get_INSTANCE_(), OrgJodaTimeConvertDateConverter_get_INSTANCE_(), OrgJodaTimeConvertLongConverter_get_INSTANCE_(), OrgJodaTimeConvertNullConverter_get_INSTANCE_() } count:7 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertConverter)]]];
    iDurationConverters_ = [[OrgJodaTimeConvertConverterSet alloc] initWithOrgJodaTimeConvertConverterArray:[IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeConvertReadableDurationConverter_get_INSTANCE_(), OrgJodaTimeConvertReadableIntervalConverter_get_INSTANCE_(), OrgJodaTimeConvertStringConverter_get_INSTANCE_(), OrgJodaTimeConvertLongConverter_get_INSTANCE_(), OrgJodaTimeConvertNullConverter_get_INSTANCE_() } count:5 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertConverter)]]];
    iPeriodConverters_ = [[OrgJodaTimeConvertConverterSet alloc] initWithOrgJodaTimeConvertConverterArray:[IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeConvertReadableDurationConverter_get_INSTANCE_(), OrgJodaTimeConvertReadablePeriodConverter_get_INSTANCE_(), OrgJodaTimeConvertReadableIntervalConverter_get_INSTANCE_(), OrgJodaTimeConvertStringConverter_get_INSTANCE_(), OrgJodaTimeConvertNullConverter_get_INSTANCE_() } count:5 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertConverter)]]];
    iIntervalConverters_ = [[OrgJodaTimeConvertConverterSet alloc] initWithOrgJodaTimeConvertConverterArray:[IOSObjectArray arrayWithObjects:(id[]){ OrgJodaTimeConvertReadableIntervalConverter_get_INSTANCE_(), OrgJodaTimeConvertStringConverter_get_INSTANCE_(), OrgJodaTimeConvertNullConverter_get_INSTANCE_() } count:3 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertConverter)]]];
  }
  return self;
}

- (id<OrgJodaTimeConvertInstantConverter>)getInstantConverterWithId:(id)object {
  id<OrgJodaTimeConvertInstantConverter> converter = (id<OrgJodaTimeConvertInstantConverter>) check_protocol_cast([((OrgJodaTimeConvertConverterSet *) nil_chk(iInstantConverters_)) selectWithIOSClass:object == nil ? nil : [object getClass]], @protocol(OrgJodaTimeConvertInstantConverter));
  if (converter != nil) {
    return converter;
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No instant converter found for type: %@", (object == nil ? @"null" : [[object getClass] getName])]];
}

- (IOSObjectArray *)getInstantConverters {
  OrgJodaTimeConvertConverterSet *set = iInstantConverters_;
  IOSObjectArray *converters = [IOSObjectArray arrayWithLength:[((OrgJodaTimeConvertConverterSet *) nil_chk(set)) size] type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertInstantConverter)]];
  [set copyIntoWithOrgJodaTimeConvertConverterArray:converters];
  return converters;
}

- (id<OrgJodaTimeConvertInstantConverter>)addInstantConverterWithOrgJodaTimeConvertInstantConverter:(id<OrgJodaTimeConvertInstantConverter>)converter {
  [self checkAlterInstantConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertInstantConverter)]];
  iInstantConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iInstantConverters_)) addWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (id<OrgJodaTimeConvertInstantConverter>)removeInstantConverterWithOrgJodaTimeConvertInstantConverter:(id<OrgJodaTimeConvertInstantConverter>)converter {
  [self checkAlterInstantConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertInstantConverter)]];
  iInstantConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iInstantConverters_)) removeWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (void)checkAlterInstantConverters {
  JavaLangSecurityManager *sm = [JavaLangSystem getSecurityManager];
  if (sm != nil) {
    [sm checkPermissionWithJavaSecurityPermission:[[OrgJodaTimeJodaTimePermission alloc] initWithNSString:@"ConverterManager.alterInstantConverters"]];
  }
}

- (id<OrgJodaTimeConvertPartialConverter>)getPartialConverterWithId:(id)object {
  id<OrgJodaTimeConvertPartialConverter> converter = (id<OrgJodaTimeConvertPartialConverter>) check_protocol_cast([((OrgJodaTimeConvertConverterSet *) nil_chk(iPartialConverters_)) selectWithIOSClass:object == nil ? nil : [object getClass]], @protocol(OrgJodaTimeConvertPartialConverter));
  if (converter != nil) {
    return converter;
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No partial converter found for type: %@", (object == nil ? @"null" : [[object getClass] getName])]];
}

- (IOSObjectArray *)getPartialConverters {
  OrgJodaTimeConvertConverterSet *set = iPartialConverters_;
  IOSObjectArray *converters = [IOSObjectArray arrayWithLength:[((OrgJodaTimeConvertConverterSet *) nil_chk(set)) size] type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertPartialConverter)]];
  [set copyIntoWithOrgJodaTimeConvertConverterArray:converters];
  return converters;
}

- (id<OrgJodaTimeConvertPartialConverter>)addPartialConverterWithOrgJodaTimeConvertPartialConverter:(id<OrgJodaTimeConvertPartialConverter>)converter {
  [self checkAlterPartialConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertPartialConverter)]];
  iPartialConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iPartialConverters_)) addWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (id<OrgJodaTimeConvertPartialConverter>)removePartialConverterWithOrgJodaTimeConvertPartialConverter:(id<OrgJodaTimeConvertPartialConverter>)converter {
  [self checkAlterPartialConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertPartialConverter)]];
  iPartialConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iPartialConverters_)) removeWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (void)checkAlterPartialConverters {
  JavaLangSecurityManager *sm = [JavaLangSystem getSecurityManager];
  if (sm != nil) {
    [sm checkPermissionWithJavaSecurityPermission:[[OrgJodaTimeJodaTimePermission alloc] initWithNSString:@"ConverterManager.alterPartialConverters"]];
  }
}

- (id<OrgJodaTimeConvertDurationConverter>)getDurationConverterWithId:(id)object {
  id<OrgJodaTimeConvertDurationConverter> converter = (id<OrgJodaTimeConvertDurationConverter>) check_protocol_cast([((OrgJodaTimeConvertConverterSet *) nil_chk(iDurationConverters_)) selectWithIOSClass:object == nil ? nil : [object getClass]], @protocol(OrgJodaTimeConvertDurationConverter));
  if (converter != nil) {
    return converter;
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No duration converter found for type: %@", (object == nil ? @"null" : [[object getClass] getName])]];
}

- (IOSObjectArray *)getDurationConverters {
  OrgJodaTimeConvertConverterSet *set = iDurationConverters_;
  IOSObjectArray *converters = [IOSObjectArray arrayWithLength:[((OrgJodaTimeConvertConverterSet *) nil_chk(set)) size] type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertDurationConverter)]];
  [set copyIntoWithOrgJodaTimeConvertConverterArray:converters];
  return converters;
}

- (id<OrgJodaTimeConvertDurationConverter>)addDurationConverterWithOrgJodaTimeConvertDurationConverter:(id<OrgJodaTimeConvertDurationConverter>)converter {
  [self checkAlterDurationConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertDurationConverter)]];
  iDurationConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iDurationConverters_)) addWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (id<OrgJodaTimeConvertDurationConverter>)removeDurationConverterWithOrgJodaTimeConvertDurationConverter:(id<OrgJodaTimeConvertDurationConverter>)converter {
  [self checkAlterDurationConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertDurationConverter)]];
  iDurationConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iDurationConverters_)) removeWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (void)checkAlterDurationConverters {
  JavaLangSecurityManager *sm = [JavaLangSystem getSecurityManager];
  if (sm != nil) {
    [sm checkPermissionWithJavaSecurityPermission:[[OrgJodaTimeJodaTimePermission alloc] initWithNSString:@"ConverterManager.alterDurationConverters"]];
  }
}

- (id<OrgJodaTimeConvertPeriodConverter>)getPeriodConverterWithId:(id)object {
  id<OrgJodaTimeConvertPeriodConverter> converter = (id<OrgJodaTimeConvertPeriodConverter>) check_protocol_cast([((OrgJodaTimeConvertConverterSet *) nil_chk(iPeriodConverters_)) selectWithIOSClass:object == nil ? nil : [object getClass]], @protocol(OrgJodaTimeConvertPeriodConverter));
  if (converter != nil) {
    return converter;
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No period converter found for type: %@", (object == nil ? @"null" : [[object getClass] getName])]];
}

- (IOSObjectArray *)getPeriodConverters {
  OrgJodaTimeConvertConverterSet *set = iPeriodConverters_;
  IOSObjectArray *converters = [IOSObjectArray arrayWithLength:[((OrgJodaTimeConvertConverterSet *) nil_chk(set)) size] type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertPeriodConverter)]];
  [set copyIntoWithOrgJodaTimeConvertConverterArray:converters];
  return converters;
}

- (id<OrgJodaTimeConvertPeriodConverter>)addPeriodConverterWithOrgJodaTimeConvertPeriodConverter:(id<OrgJodaTimeConvertPeriodConverter>)converter {
  [self checkAlterPeriodConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertPeriodConverter)]];
  iPeriodConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iPeriodConverters_)) addWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (id<OrgJodaTimeConvertPeriodConverter>)removePeriodConverterWithOrgJodaTimeConvertPeriodConverter:(id<OrgJodaTimeConvertPeriodConverter>)converter {
  [self checkAlterPeriodConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertPeriodConverter)]];
  iPeriodConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iPeriodConverters_)) removeWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (void)checkAlterPeriodConverters {
  JavaLangSecurityManager *sm = [JavaLangSystem getSecurityManager];
  if (sm != nil) {
    [sm checkPermissionWithJavaSecurityPermission:[[OrgJodaTimeJodaTimePermission alloc] initWithNSString:@"ConverterManager.alterPeriodConverters"]];
  }
}

- (id<OrgJodaTimeConvertIntervalConverter>)getIntervalConverterWithId:(id)object {
  id<OrgJodaTimeConvertIntervalConverter> converter = (id<OrgJodaTimeConvertIntervalConverter>) check_protocol_cast([((OrgJodaTimeConvertConverterSet *) nil_chk(iIntervalConverters_)) selectWithIOSClass:object == nil ? nil : [object getClass]], @protocol(OrgJodaTimeConvertIntervalConverter));
  if (converter != nil) {
    return converter;
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"No interval converter found for type: %@", (object == nil ? @"null" : [[object getClass] getName])]];
}

- (IOSObjectArray *)getIntervalConverters {
  OrgJodaTimeConvertConverterSet *set = iIntervalConverters_;
  IOSObjectArray *converters = [IOSObjectArray arrayWithLength:[((OrgJodaTimeConvertConverterSet *) nil_chk(set)) size] type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertIntervalConverter)]];
  [set copyIntoWithOrgJodaTimeConvertConverterArray:converters];
  return converters;
}

- (id<OrgJodaTimeConvertIntervalConverter>)addIntervalConverterWithOrgJodaTimeConvertIntervalConverter:(id<OrgJodaTimeConvertIntervalConverter>)converter {
  [self checkAlterIntervalConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertIntervalConverter)]];
  iIntervalConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iIntervalConverters_)) addWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (id<OrgJodaTimeConvertIntervalConverter>)removeIntervalConverterWithOrgJodaTimeConvertIntervalConverter:(id<OrgJodaTimeConvertIntervalConverter>)converter {
  [self checkAlterIntervalConverters];
  if (converter == nil) {
    return nil;
  }
  IOSObjectArray *removed = [IOSObjectArray arrayWithLength:1 type:[IOSClass classWithProtocol:@protocol(OrgJodaTimeConvertIntervalConverter)]];
  iIntervalConverters_ = [((OrgJodaTimeConvertConverterSet *) nil_chk(iIntervalConverters_)) removeWithOrgJodaTimeConvertConverter:converter withOrgJodaTimeConvertConverterArray:removed];
  return IOSObjectArray_Get(removed, 0);
}

- (void)checkAlterIntervalConverters {
  JavaLangSecurityManager *sm = [JavaLangSystem getSecurityManager];
  if (sm != nil) {
    [sm checkPermissionWithJavaSecurityPermission:[[OrgJodaTimeJodaTimePermission alloc] initWithNSString:@"ConverterManager.alterIntervalConverters"]];
  }
}

- (NSString *)description {
  return [NSString stringWithFormat:@"ConverterManager[%d instant,%d partial,%d duration,%d period,%d interval]", [((OrgJodaTimeConvertConverterSet *) nil_chk(iInstantConverters_)) size], [((OrgJodaTimeConvertConverterSet *) nil_chk(iPartialConverters_)) size], [((OrgJodaTimeConvertConverterSet *) nil_chk(iDurationConverters_)) size], [((OrgJodaTimeConvertConverterSet *) nil_chk(iPeriodConverters_)) size], [((OrgJodaTimeConvertConverterSet *) nil_chk(iIntervalConverters_)) size]];
}

- (void)copyAllFieldsTo:(OrgJodaTimeConvertConverterManager *)other {
  [super copyAllFieldsTo:other];
  other->iDurationConverters_ = iDurationConverters_;
  other->iInstantConverters_ = iInstantConverters_;
  other->iIntervalConverters_ = iIntervalConverters_;
  other->iPartialConverters_ = iPartialConverters_;
  other->iPeriodConverters_ = iPeriodConverters_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getInstance", NULL, "Lorg.joda.time.convert.ConverterManager;", 0x9, NULL },
    { "init", "ConverterManager", NULL, 0x4, NULL },
    { "getInstantConverterWithId:", "getInstantConverter", "Lorg.joda.time.convert.InstantConverter;", 0x1, NULL },
    { "getInstantConverters", NULL, "[Lorg.joda.time.convert.InstantConverter;", 0x1, NULL },
    { "addInstantConverterWithOrgJodaTimeConvertInstantConverter:", "addInstantConverter", "Lorg.joda.time.convert.InstantConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "removeInstantConverterWithOrgJodaTimeConvertInstantConverter:", "removeInstantConverter", "Lorg.joda.time.convert.InstantConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "checkAlterInstantConverters", NULL, "V", 0x2, "Ljava.lang.SecurityException;" },
    { "getPartialConverterWithId:", "getPartialConverter", "Lorg.joda.time.convert.PartialConverter;", 0x1, NULL },
    { "getPartialConverters", NULL, "[Lorg.joda.time.convert.PartialConverter;", 0x1, NULL },
    { "addPartialConverterWithOrgJodaTimeConvertPartialConverter:", "addPartialConverter", "Lorg.joda.time.convert.PartialConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "removePartialConverterWithOrgJodaTimeConvertPartialConverter:", "removePartialConverter", "Lorg.joda.time.convert.PartialConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "checkAlterPartialConverters", NULL, "V", 0x2, "Ljava.lang.SecurityException;" },
    { "getDurationConverterWithId:", "getDurationConverter", "Lorg.joda.time.convert.DurationConverter;", 0x1, NULL },
    { "getDurationConverters", NULL, "[Lorg.joda.time.convert.DurationConverter;", 0x1, NULL },
    { "addDurationConverterWithOrgJodaTimeConvertDurationConverter:", "addDurationConverter", "Lorg.joda.time.convert.DurationConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "removeDurationConverterWithOrgJodaTimeConvertDurationConverter:", "removeDurationConverter", "Lorg.joda.time.convert.DurationConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "checkAlterDurationConverters", NULL, "V", 0x2, "Ljava.lang.SecurityException;" },
    { "getPeriodConverterWithId:", "getPeriodConverter", "Lorg.joda.time.convert.PeriodConverter;", 0x1, NULL },
    { "getPeriodConverters", NULL, "[Lorg.joda.time.convert.PeriodConverter;", 0x1, NULL },
    { "addPeriodConverterWithOrgJodaTimeConvertPeriodConverter:", "addPeriodConverter", "Lorg.joda.time.convert.PeriodConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "removePeriodConverterWithOrgJodaTimeConvertPeriodConverter:", "removePeriodConverter", "Lorg.joda.time.convert.PeriodConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "checkAlterPeriodConverters", NULL, "V", 0x2, "Ljava.lang.SecurityException;" },
    { "getIntervalConverterWithId:", "getIntervalConverter", "Lorg.joda.time.convert.IntervalConverter;", 0x1, NULL },
    { "getIntervalConverters", NULL, "[Lorg.joda.time.convert.IntervalConverter;", 0x1, NULL },
    { "addIntervalConverterWithOrgJodaTimeConvertIntervalConverter:", "addIntervalConverter", "Lorg.joda.time.convert.IntervalConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "removeIntervalConverterWithOrgJodaTimeConvertIntervalConverter:", "removeIntervalConverter", "Lorg.joda.time.convert.IntervalConverter;", 0x1, "Ljava.lang.SecurityException;" },
    { "checkAlterIntervalConverters", NULL, "V", 0x2, "Ljava.lang.SecurityException;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0xa, "Lorg.joda.time.convert.ConverterManager;", &OrgJodaTimeConvertConverterManager_INSTANCE_,  },
    { "iInstantConverters_", NULL, 0x2, "Lorg.joda.time.convert.ConverterSet;", NULL,  },
    { "iPartialConverters_", NULL, 0x2, "Lorg.joda.time.convert.ConverterSet;", NULL,  },
    { "iDurationConverters_", NULL, 0x2, "Lorg.joda.time.convert.ConverterSet;", NULL,  },
    { "iPeriodConverters_", NULL, 0x2, "Lorg.joda.time.convert.ConverterSet;", NULL,  },
    { "iIntervalConverters_", NULL, 0x2, "Lorg.joda.time.convert.ConverterSet;", NULL,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeConvertConverterManager = { "ConverterManager", "org.joda.time.convert", NULL, 0x11, 28, methods, 6, fields, 0, NULL};
  return &_OrgJodaTimeConvertConverterManager;
}

@end
