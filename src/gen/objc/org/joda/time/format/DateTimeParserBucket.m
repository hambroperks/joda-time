//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/format/DateTimeParserBucket.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Arrays.h"
#include "java/util/Locale.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/IllegalFieldValueException.h"
#include "org/joda/time/IllegalInstantException.h"
#include "org/joda/time/format/DateTimeParser.h"
#include "org/joda/time/format/DateTimeParserBucket.h"
#include "org/joda/time/format/DateTimeParserInternalParser.h"
#include "org/joda/time/format/FormatUtils.h"
#include "org/joda/time/format/InternalParser.h"

@interface OrgJodaTimeFormatDateTimeParserBucket () {
 @public
  /*!
   @brief The chronology to use for parsing.
   */
  OrgJodaTimeChronology *iChrono_;
  /*!
   @brief The initial millis.
   */
  jlong iMillis_;
  /*!
   @brief The locale to use for parsing.
   */
  JavaUtilLocale *iLocale_;
  /*!
   @brief Used for parsing month/day without year.
   */
  jint iDefaultYear_;
  /*!
   @brief The default zone from the constructor.
   */
  OrgJodaTimeDateTimeZone *iDefaultZone_;
  /*!
   @brief The default pivot year from the constructor.
   */
  JavaLangInteger *iDefaultPivotYear_;
  /*!
   @brief The parsed zone, initialised to formatter zone.
   */
  OrgJodaTimeDateTimeZone *iZone_;
  /*!
   @brief The parsed offset.
   */
  JavaLangInteger *iOffset_;
  /*!
   @brief Used for parsing two-digit years.
   */
  JavaLangInteger *iPivotYear_;
  IOSObjectArray *iSavedFields_;
  jint iSavedFieldsCount_;
  jboolean iSavedFieldsShared_;
  id iSavedState_;
}

- (OrgJodaTimeFormatDateTimeParserBucket_SavedField *)obtainSaveField;

/*!
 @brief Sorts elements [0,high).
 Calling java.util.Arrays isn't always the right
 choice since it always creates an internal copy of the array, even if it
 doesn't need to. If the array slice is small enough, an insertion sort
 is chosen instead, but it doesn't need a copy!
 <p>
 This method has a modified version of that insertion sort, except it
 doesn't create an unnecessary array copy. If high is over 10, then
 java.util.Arrays is called, which will perform a merge sort, which is
 faster than insertion sort on large lists.
 <p>
 The end result is much greater performance when computeMillis is called.
 Since the amount of saved fields is small, the insertion sort is a
 better choice. Additional performance is gained since there is no extra
 array allocation and copying. Also, the insertion sort here does not
 perform any casting operations. The version in java.util.Arrays performs
 casts within the insertion sort loop.
 */
+ (void)sortWithOrgJodaTimeFormatDateTimeParserBucket_SavedFieldArray:(IOSObjectArray *)array
                                                              withInt:(jint)high;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket, iChrono_, OrgJodaTimeChronology *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket, iLocale_, JavaUtilLocale *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket, iDefaultZone_, OrgJodaTimeDateTimeZone *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket, iDefaultPivotYear_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket, iZone_, OrgJodaTimeDateTimeZone *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket, iOffset_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket, iPivotYear_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket, iSavedFields_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket, iSavedState_, id)

__attribute__((unused)) static OrgJodaTimeFormatDateTimeParserBucket_SavedField *OrgJodaTimeFormatDateTimeParserBucket_obtainSaveField(OrgJodaTimeFormatDateTimeParserBucket *self);

__attribute__((unused)) static void OrgJodaTimeFormatDateTimeParserBucket_sortWithOrgJodaTimeFormatDateTimeParserBucket_SavedFieldArray_withInt_(IOSObjectArray *array, jint high);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$1();

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$2();

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$3();

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$4();

@interface OrgJodaTimeFormatDateTimeParserBucket_SavedState () {
 @public
  OrgJodaTimeFormatDateTimeParserBucket *this$0_;
}

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedState, this$0_, OrgJodaTimeFormatDateTimeParserBucket *)

@implementation OrgJodaTimeFormatDateTimeParserBucket

- (instancetype)initWithLong:(jlong)instantLocal
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
          withJavaUtilLocale:(JavaUtilLocale *)locale {
  OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_(self, instantLocal, chrono, locale);
  return self;
}

- (instancetype)initWithLong:(jlong)instantLocal
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
          withJavaUtilLocale:(JavaUtilLocale *)locale
         withJavaLangInteger:(JavaLangInteger *)pivotYear {
  OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_(self, instantLocal, chrono, locale, pivotYear);
  return self;
}

- (instancetype)initWithLong:(jlong)instantLocal
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
          withJavaUtilLocale:(JavaUtilLocale *)locale
         withJavaLangInteger:(JavaLangInteger *)pivotYear
                     withInt:(jint)defaultYear {
  OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(self, instantLocal, chrono, locale, pivotYear, defaultYear);
  return self;
}

- (void)reset {
  JreStrongAssign(&iZone_, iDefaultZone_);
  JreStrongAssign(&iOffset_, nil);
  JreStrongAssign(&iPivotYear_, iDefaultPivotYear_);
  iSavedFieldsCount_ = 0;
  iSavedFieldsShared_ = false;
  JreStrongAssign(&iSavedState_, nil);
}

- (jlong)parseMillisWithOrgJodaTimeFormatDateTimeParser:(id<OrgJodaTimeFormatDateTimeParser>)parser
                               withJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  [self reset];
  return [self doParseMillisWithOrgJodaTimeFormatInternalParser:OrgJodaTimeFormatDateTimeParserInternalParser_ofWithOrgJodaTimeFormatDateTimeParser_(parser) withJavaLangCharSequence:text];
}

- (jlong)doParseMillisWithOrgJodaTimeFormatInternalParser:(id<OrgJodaTimeFormatInternalParser>)parser
                                 withJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  jint newPos = [((id<OrgJodaTimeFormatInternalParser>) nil_chk(parser)) parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:self withJavaLangCharSequence:text withInt:0];
  if (newPos >= 0) {
    if (newPos >= [((id<JavaLangCharSequence>) nil_chk(text)) length]) {
      return [self computeMillisWithBoolean:true withJavaLangCharSequence:text];
    }
  }
  else {
    newPos = ~newPos;
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(OrgJodaTimeFormatFormatUtils_createErrorMessageWithNSString_withInt_([((id<JavaLangCharSequence>) nil_chk(text)) description], newPos));
}

- (OrgJodaTimeChronology *)getChronology {
  return iChrono_;
}

- (JavaUtilLocale *)getLocale {
  return iLocale_;
}

- (OrgJodaTimeDateTimeZone *)getZone {
  return iZone_;
}

- (void)setZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  JreStrongAssign(&iSavedState_, nil);
  JreStrongAssign(&iZone_, zone);
}

- (jint)getOffset {
  return (iOffset_ != nil ? [iOffset_ intValue] : 0);
}

- (JavaLangInteger *)getOffsetInteger {
  return iOffset_;
}

- (void)setOffsetWithInt:(jint)offset {
  JreStrongAssign(&iSavedState_, nil);
  JreStrongAssign(&iOffset_, JavaLangInteger_valueOfWithInt_(offset));
}

- (void)setOffsetWithJavaLangInteger:(JavaLangInteger *)offset {
  JreStrongAssign(&iSavedState_, nil);
  JreStrongAssign(&iOffset_, offset);
}

- (JavaLangInteger *)getPivotYear {
  return iPivotYear_;
}

- (void)setPivotYearWithJavaLangInteger:(JavaLangInteger *)pivotYear {
  JreStrongAssign(&iPivotYear_, pivotYear);
}

- (void)saveFieldWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                      withInt:(jint)value {
  [((OrgJodaTimeFormatDateTimeParserBucket_SavedField *) nil_chk(OrgJodaTimeFormatDateTimeParserBucket_obtainSaveField(self))) init__WithOrgJodaTimeDateTimeField:field withInt:value];
}

- (void)saveFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                          withInt:(jint)value {
  [((OrgJodaTimeFormatDateTimeParserBucket_SavedField *) nil_chk(OrgJodaTimeFormatDateTimeParserBucket_obtainSaveField(self))) init__WithOrgJodaTimeDateTimeField:[((OrgJodaTimeDateTimeFieldType *) nil_chk(fieldType)) getFieldWithOrgJodaTimeChronology:iChrono_] withInt:value];
}

- (void)saveFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                     withNSString:(NSString *)text
                               withJavaUtilLocale:(JavaUtilLocale *)locale {
  [((OrgJodaTimeFormatDateTimeParserBucket_SavedField *) nil_chk(OrgJodaTimeFormatDateTimeParserBucket_obtainSaveField(self))) init__WithOrgJodaTimeDateTimeField:[((OrgJodaTimeDateTimeFieldType *) nil_chk(fieldType)) getFieldWithOrgJodaTimeChronology:iChrono_] withNSString:text withJavaUtilLocale:locale];
}

- (OrgJodaTimeFormatDateTimeParserBucket_SavedField *)obtainSaveField {
  return OrgJodaTimeFormatDateTimeParserBucket_obtainSaveField(self);
}

- (id)saveState {
  if (iSavedState_ == nil) {
    JreStrongAssignAndConsume(&iSavedState_, new_OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(self));
  }
  return iSavedState_;
}

- (jboolean)restoreStateWithId:(id)savedState {
  if ([savedState isKindOfClass:[OrgJodaTimeFormatDateTimeParserBucket_SavedState class]]) {
    if ([((OrgJodaTimeFormatDateTimeParserBucket_SavedState *) nil_chk(((OrgJodaTimeFormatDateTimeParserBucket_SavedState *) cast_chk(savedState, [OrgJodaTimeFormatDateTimeParserBucket_SavedState class])))) restoreStateWithOrgJodaTimeFormatDateTimeParserBucket:self]) {
      JreStrongAssign(&iSavedState_, savedState);
      return true;
    }
  }
  return false;
}

- (jlong)computeMillis {
  return [self computeMillisWithBoolean:false withJavaLangCharSequence:nil];
}

- (jlong)computeMillisWithBoolean:(jboolean)resetFields {
  return [self computeMillisWithBoolean:resetFields withJavaLangCharSequence:nil];
}

- (jlong)computeMillisWithBoolean:(jboolean)resetFields
                     withNSString:(NSString *)text {
  return [self computeMillisWithBoolean:resetFields withJavaLangCharSequence:text];
}

- (jlong)computeMillisWithBoolean:(jboolean)resetFields
         withJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  IOSObjectArray *savedFields = iSavedFields_;
  jint count = iSavedFieldsCount_;
  if (iSavedFieldsShared_) {
    JreStrongAssign(&iSavedFields_, savedFields = [((IOSObjectArray *) nil_chk(iSavedFields_)) clone]);
    iSavedFieldsShared_ = false;
  }
  OrgJodaTimeFormatDateTimeParserBucket_sortWithOrgJodaTimeFormatDateTimeParserBucket_SavedFieldArray_withInt_(savedFields, count);
  if (count > 0) {
    OrgJodaTimeDurationField *months = [((OrgJodaTimeDurationFieldType *) nil_chk(OrgJodaTimeDurationFieldType_months())) getFieldWithOrgJodaTimeChronology:iChrono_];
    OrgJodaTimeDurationField *days = [((OrgJodaTimeDurationFieldType *) nil_chk(OrgJodaTimeDurationFieldType_days())) getFieldWithOrgJodaTimeChronology:iChrono_];
    OrgJodaTimeDurationField *first = [((OrgJodaTimeDateTimeField *) nil_chk(((OrgJodaTimeFormatDateTimeParserBucket_SavedField *) nil_chk(IOSObjectArray_Get(nil_chk(savedFields), 0)))->iField_)) getDurationField];
    if (OrgJodaTimeFormatDateTimeParserBucket_compareReverseWithOrgJodaTimeDurationField_withOrgJodaTimeDurationField_(first, months) >= 0 && OrgJodaTimeFormatDateTimeParserBucket_compareReverseWithOrgJodaTimeDurationField_withOrgJodaTimeDurationField_(first, days) <= 0) {
      [self saveFieldWithOrgJodaTimeDateTimeFieldType:OrgJodaTimeDateTimeFieldType_year() withInt:iDefaultYear_];
      return [self computeMillisWithBoolean:resetFields withJavaLangCharSequence:text];
    }
  }
  jlong millis = iMillis_;
  @try {
    for (jint i = 0; i < count; i++) {
      millis = [((OrgJodaTimeFormatDateTimeParserBucket_SavedField *) nil_chk(IOSObjectArray_Get(nil_chk(savedFields), i))) setWithLong:millis withBoolean:resetFields];
    }
    if (resetFields) {
      for (jint i = 0; i < count; i++) {
        millis = [((OrgJodaTimeFormatDateTimeParserBucket_SavedField *) nil_chk(IOSObjectArray_Get(nil_chk(savedFields), i))) setWithLong:millis withBoolean:i == (count - 1)];
      }
    }
  }
  @catch (OrgJodaTimeIllegalFieldValueException *e) {
    if (text != nil) {
      [((OrgJodaTimeIllegalFieldValueException *) nil_chk(e)) prependMessageWithNSString:JreStrcat("$@C", @"Cannot parse \"", text, '"')];
    }
    @throw e;
  }
  if (iOffset_ != nil) {
    millis -= [iOffset_ intValue];
  }
  else if (iZone_ != nil) {
    jint offset = [iZone_ getOffsetFromLocalWithLong:millis];
    millis -= offset;
    if (offset != [((OrgJodaTimeDateTimeZone *) nil_chk(iZone_)) getOffsetWithLong:millis]) {
      NSString *message = JreStrcat("$@C", @"Illegal instant due to time zone offset transition (", iZone_, ')');
      if (text != nil) {
        message = JreStrcat("$@$$", @"Cannot parse \"", text, @"\": ", message);
      }
      @throw create_OrgJodaTimeIllegalInstantException_initWithNSString_(message);
    }
  }
  return millis;
}

+ (void)sortWithOrgJodaTimeFormatDateTimeParserBucket_SavedFieldArray:(IOSObjectArray *)array
                                                              withInt:(jint)high {
  OrgJodaTimeFormatDateTimeParserBucket_sortWithOrgJodaTimeFormatDateTimeParserBucket_SavedFieldArray_withInt_(array, high);
}

+ (jint)compareReverseWithOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)a
                      withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)b {
  return OrgJodaTimeFormatDateTimeParserBucket_compareReverseWithOrgJodaTimeDurationField_withOrgJodaTimeDurationField_(a, b);
}

- (void)dealloc {
  RELEASE_(iChrono_);
  RELEASE_(iLocale_);
  RELEASE_(iDefaultZone_);
  RELEASE_(iDefaultPivotYear_);
  RELEASE_(iZone_);
  RELEASE_(iOffset_);
  RELEASE_(iPivotYear_);
  RELEASE_(iSavedFields_);
  RELEASE_(iSavedState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, 1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, 3, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilLocale;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeZone;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, 11, -1 },
    { NULL, "LJavaLangInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, 14, -1 },
    { NULL, "V", 0x1, 12, 15, -1, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 15, -1, -1, 17, -1 },
    { NULL, "V", 0x1, 18, 19, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 21, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeFormatDateTimeParserBucket_SavedField;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 22, 23, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 24, 25, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 24, 26, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 24, 27, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 28, 29, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 30, 31, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithLong:withOrgJodaTimeChronology:withJavaUtilLocale:);
  methods[1].selector = @selector(initWithLong:withOrgJodaTimeChronology:withJavaUtilLocale:withJavaLangInteger:);
  methods[2].selector = @selector(initWithLong:withOrgJodaTimeChronology:withJavaUtilLocale:withJavaLangInteger:withInt:);
  methods[3].selector = @selector(reset);
  methods[4].selector = @selector(parseMillisWithOrgJodaTimeFormatDateTimeParser:withJavaLangCharSequence:);
  methods[5].selector = @selector(doParseMillisWithOrgJodaTimeFormatInternalParser:withJavaLangCharSequence:);
  methods[6].selector = @selector(getChronology);
  methods[7].selector = @selector(getLocale);
  methods[8].selector = @selector(getZone);
  methods[9].selector = @selector(setZoneWithOrgJodaTimeDateTimeZone:);
  methods[10].selector = @selector(getOffset);
  methods[11].selector = @selector(getOffsetInteger);
  methods[12].selector = @selector(setOffsetWithInt:);
  methods[13].selector = @selector(setOffsetWithJavaLangInteger:);
  methods[14].selector = @selector(getPivotYear);
  methods[15].selector = @selector(setPivotYearWithJavaLangInteger:);
  methods[16].selector = @selector(saveFieldWithOrgJodaTimeDateTimeField:withInt:);
  methods[17].selector = @selector(saveFieldWithOrgJodaTimeDateTimeFieldType:withInt:);
  methods[18].selector = @selector(saveFieldWithOrgJodaTimeDateTimeFieldType:withNSString:withJavaUtilLocale:);
  methods[19].selector = @selector(obtainSaveField);
  methods[20].selector = @selector(saveState);
  methods[21].selector = @selector(restoreStateWithId:);
  methods[22].selector = @selector(computeMillis);
  methods[23].selector = @selector(computeMillisWithBoolean:);
  methods[24].selector = @selector(computeMillisWithBoolean:withNSString:);
  methods[25].selector = @selector(computeMillisWithBoolean:withJavaLangCharSequence:);
  methods[26].selector = @selector(sortWithOrgJodaTimeFormatDateTimeParserBucket_SavedFieldArray:withInt:);
  methods[27].selector = @selector(compareReverseWithOrgJodaTimeDurationField:withOrgJodaTimeDurationField:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iChrono_", "LOrgJodaTimeChronology;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iMillis_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iLocale_", "LJavaUtilLocale;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iDefaultYear_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iDefaultZone_", "LOrgJodaTimeDateTimeZone;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iDefaultPivotYear_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iZone_", "LOrgJodaTimeDateTimeZone;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "iOffset_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "iPivotYear_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "iSavedFields_", "[LOrgJodaTimeFormatDateTimeParserBucket_SavedField;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "iSavedFieldsCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "iSavedFieldsShared_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "iSavedState_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JLOrgJodaTimeChronology;LJavaUtilLocale;", (void *)&OrgJodaTimeFormatDateTimeParserBucket__Annotations$0, "JLOrgJodaTimeChronology;LJavaUtilLocale;LJavaLangInteger;", (void *)&OrgJodaTimeFormatDateTimeParserBucket__Annotations$1, "JLOrgJodaTimeChronology;LJavaUtilLocale;LJavaLangInteger;I", "parseMillis", "LOrgJodaTimeFormatDateTimeParser;LJavaLangCharSequence;", "doParseMillis", "LOrgJodaTimeFormatInternalParser;LJavaLangCharSequence;", "setZone", "LOrgJodaTimeDateTimeZone;", (void *)&OrgJodaTimeFormatDateTimeParserBucket__Annotations$2, "setOffset", "I", (void *)&OrgJodaTimeFormatDateTimeParserBucket__Annotations$3, "LJavaLangInteger;", "setPivotYear", (void *)&OrgJodaTimeFormatDateTimeParserBucket__Annotations$4, "saveField", "LOrgJodaTimeDateTimeField;I", "LOrgJodaTimeDateTimeFieldType;I", "LOrgJodaTimeDateTimeFieldType;LNSString;LJavaUtilLocale;", "restoreState", "LNSObject;", "computeMillis", "Z", "ZLNSString;", "ZLJavaLangCharSequence;", "sort", "[LOrgJodaTimeFormatDateTimeParserBucket_SavedField;I", "compareReverse", "LOrgJodaTimeDurationField;LOrgJodaTimeDurationField;", "LOrgJodaTimeFormatDateTimeParserBucket_SavedState;LOrgJodaTimeFormatDateTimeParserBucket_SavedField;" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatDateTimeParserBucket = { "DateTimeParserBucket", "org.joda.time.format", ptrTable, methods, fields, 7, 0x1, 28, 13, -1, 32, -1, -1, -1 };
  return &_OrgJodaTimeFormatDateTimeParserBucket;
}

@end

void OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_(OrgJodaTimeFormatDateTimeParserBucket *self, jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale) {
  OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(self, instantLocal, chrono, locale, nil, 2000);
}

OrgJodaTimeFormatDateTimeParserBucket *new_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFormatDateTimeParserBucket, initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_, instantLocal, chrono, locale)
}

OrgJodaTimeFormatDateTimeParserBucket *create_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFormatDateTimeParserBucket, initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_, instantLocal, chrono, locale)
}

void OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_(OrgJodaTimeFormatDateTimeParserBucket *self, jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear) {
  OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(self, instantLocal, chrono, locale, pivotYear, 2000);
}

OrgJodaTimeFormatDateTimeParserBucket *new_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFormatDateTimeParserBucket, initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_, instantLocal, chrono, locale, pivotYear)
}

OrgJodaTimeFormatDateTimeParserBucket *create_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFormatDateTimeParserBucket, initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_, instantLocal, chrono, locale, pivotYear)
}

void OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(OrgJodaTimeFormatDateTimeParserBucket *self, jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear, jint defaultYear) {
  NSObject_init(self);
  chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chrono);
  self->iMillis_ = instantLocal;
  JreStrongAssign(&self->iDefaultZone_, [((OrgJodaTimeChronology *) nil_chk(chrono)) getZone]);
  JreStrongAssign(&self->iChrono_, [chrono withUTC]);
  JreStrongAssign(&self->iLocale_, (locale == nil ? JavaUtilLocale_getDefault() : locale));
  self->iDefaultYear_ = defaultYear;
  JreStrongAssign(&self->iDefaultPivotYear_, pivotYear);
  JreStrongAssign(&self->iZone_, self->iDefaultZone_);
  JreStrongAssign(&self->iPivotYear_, self->iDefaultPivotYear_);
  JreStrongAssignAndConsume(&self->iSavedFields_, [IOSObjectArray newArrayWithLength:8 type:OrgJodaTimeFormatDateTimeParserBucket_SavedField_class_()]);
}

OrgJodaTimeFormatDateTimeParserBucket *new_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear, jint defaultYear) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFormatDateTimeParserBucket, initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_, instantLocal, chrono, locale, pivotYear, defaultYear)
}

OrgJodaTimeFormatDateTimeParserBucket *create_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear, jint defaultYear) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFormatDateTimeParserBucket, initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_, instantLocal, chrono, locale, pivotYear, defaultYear)
}

OrgJodaTimeFormatDateTimeParserBucket_SavedField *OrgJodaTimeFormatDateTimeParserBucket_obtainSaveField(OrgJodaTimeFormatDateTimeParserBucket *self) {
  IOSObjectArray *savedFields = self->iSavedFields_;
  jint savedFieldsCount = self->iSavedFieldsCount_;
  if (savedFieldsCount == ((IOSObjectArray *) nil_chk(savedFields))->size_ || self->iSavedFieldsShared_) {
    IOSObjectArray *newArray = [IOSObjectArray arrayWithLength:savedFieldsCount == savedFields->size_ ? savedFieldsCount * 2 : savedFields->size_ type:OrgJodaTimeFormatDateTimeParserBucket_SavedField_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(savedFields, 0, newArray, 0, savedFieldsCount);
    JreStrongAssign(&self->iSavedFields_, savedFields = newArray);
    self->iSavedFieldsShared_ = false;
  }
  JreStrongAssign(&self->iSavedState_, nil);
  OrgJodaTimeFormatDateTimeParserBucket_SavedField *saved = IOSObjectArray_Get(savedFields, savedFieldsCount);
  if (saved == nil) {
    saved = IOSObjectArray_SetAndConsume(savedFields, savedFieldsCount, new_OrgJodaTimeFormatDateTimeParserBucket_SavedField_init());
  }
  self->iSavedFieldsCount_ = savedFieldsCount + 1;
  return saved;
}

void OrgJodaTimeFormatDateTimeParserBucket_sortWithOrgJodaTimeFormatDateTimeParserBucket_SavedFieldArray_withInt_(IOSObjectArray *array, jint high) {
  OrgJodaTimeFormatDateTimeParserBucket_initialize();
  if (high > 10) {
    JavaUtilArrays_sortWithNSObjectArray_withInt_withInt_(array, 0, high);
  }
  else {
    for (jint i = 0; i < high; i++) {
      for (jint j = i; j > 0 && [((OrgJodaTimeFormatDateTimeParserBucket_SavedField *) nil_chk((IOSObjectArray_Get(nil_chk(array), j - 1)))) compareToWithId:IOSObjectArray_Get(array, j)] > 0; j--) {
        OrgJodaTimeFormatDateTimeParserBucket_SavedField *t = IOSObjectArray_Get(nil_chk(array), j);
        IOSObjectArray_Set(array, j, IOSObjectArray_Get(array, j - 1));
        IOSObjectArray_Set(array, j - 1, t);
      }
    }
  }
}

jint OrgJodaTimeFormatDateTimeParserBucket_compareReverseWithOrgJodaTimeDurationField_withOrgJodaTimeDurationField_(OrgJodaTimeDurationField *a, OrgJodaTimeDurationField *b) {
  OrgJodaTimeFormatDateTimeParserBucket_initialize();
  if (a == nil || ![a isSupported]) {
    if (b == nil || ![b isSupported]) {
      return 0;
    }
    return -1;
  }
  if (b == nil || ![b isSupported]) {
    return 1;
  }
  return -[a compareToWithId:b];
}

IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeFormatDateTimeParserBucket__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatDateTimeParserBucket)

@implementation OrgJodaTimeFormatDateTimeParserBucket_SavedState

- (instancetype)initWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)outer$ {
  OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(self, outer$);
  return self;
}

- (jboolean)restoreStateWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)enclosing {
  if (enclosing != this$0_) {
    return false;
  }
  JreStrongAssign(&((OrgJodaTimeFormatDateTimeParserBucket *) nil_chk(enclosing))->iZone_, self->iZone_);
  JreStrongAssign(&enclosing->iOffset_, self->iOffset_);
  JreStrongAssign(&enclosing->iSavedFields_, self->iSavedFields_);
  if (self->iSavedFieldsCount_ < enclosing->iSavedFieldsCount_) {
    enclosing->iSavedFieldsShared_ = true;
  }
  enclosing->iSavedFieldsCount_ = self->iSavedFieldsCount_;
  return true;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(iZone_);
  RELEASE_(iOffset_);
  RELEASE_(iSavedFields_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeFormatDateTimeParserBucket:);
  methods[1].selector = @selector(restoreStateWithOrgJodaTimeFormatDateTimeParserBucket:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgJodaTimeFormatDateTimeParserBucket;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "iZone_", "LOrgJodaTimeDateTimeZone;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "iOffset_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "iSavedFields_", "[LOrgJodaTimeFormatDateTimeParserBucket_SavedField;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "iSavedFieldsCount_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeFormatDateTimeParserBucket;", "restoreState" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatDateTimeParserBucket_SavedState = { "SavedState", "org.joda.time.format", ptrTable, methods, fields, 7, 0x0, 2, 5, 0, -1, -1, -1, -1 };
  return &_OrgJodaTimeFormatDateTimeParserBucket_SavedState;
}

@end

void OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(OrgJodaTimeFormatDateTimeParserBucket_SavedState *self, OrgJodaTimeFormatDateTimeParserBucket *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  JreStrongAssign(&self->iZone_, outer$->iZone_);
  JreStrongAssign(&self->iOffset_, outer$->iOffset_);
  JreStrongAssign(&self->iSavedFields_, outer$->iSavedFields_);
  self->iSavedFieldsCount_ = outer$->iSavedFieldsCount_;
}

OrgJodaTimeFormatDateTimeParserBucket_SavedState *new_OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(OrgJodaTimeFormatDateTimeParserBucket *outer$) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFormatDateTimeParserBucket_SavedState, initWithOrgJodaTimeFormatDateTimeParserBucket_, outer$)
}

OrgJodaTimeFormatDateTimeParserBucket_SavedState *create_OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(OrgJodaTimeFormatDateTimeParserBucket *outer$) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFormatDateTimeParserBucket_SavedState, initWithOrgJodaTimeFormatDateTimeParserBucket_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatDateTimeParserBucket_SavedState)

@implementation OrgJodaTimeFormatDateTimeParserBucket_SavedField

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeFormatDateTimeParserBucket_SavedField_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)init__WithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                   withInt:(jint)value {
  JreStrongAssign(&iField_, field);
  iValue_ = value;
  JreStrongAssign(&iText_, nil);
  JreStrongAssign(&iLocale_, nil);
}

- (void)init__WithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                              withNSString:(NSString *)text
                        withJavaUtilLocale:(JavaUtilLocale *)locale {
  JreStrongAssign(&iField_, field);
  iValue_ = 0;
  JreStrongAssign(&iText_, text);
  JreStrongAssign(&iLocale_, locale);
}

- (jlong)setWithLong:(jlong)millis
         withBoolean:(jboolean)reset {
  if (iText_ == nil) {
    millis = [((OrgJodaTimeDateTimeField *) nil_chk(iField_)) setWithLong:millis withInt:iValue_];
  }
  else {
    millis = [((OrgJodaTimeDateTimeField *) nil_chk(iField_)) setWithLong:millis withNSString:iText_ withJavaUtilLocale:iLocale_];
  }
  if (reset) {
    millis = [((OrgJodaTimeDateTimeField *) nil_chk(iField_)) roundFloorWithLong:millis];
  }
  return millis;
}

- (jint)compareToWithId:(OrgJodaTimeFormatDateTimeParserBucket_SavedField *)obj {
  cast_chk(obj, [OrgJodaTimeFormatDateTimeParserBucket_SavedField class]);
  OrgJodaTimeDateTimeField *other = ((OrgJodaTimeFormatDateTimeParserBucket_SavedField *) nil_chk(obj))->iField_;
  jint result = OrgJodaTimeFormatDateTimeParserBucket_compareReverseWithOrgJodaTimeDurationField_withOrgJodaTimeDurationField_([((OrgJodaTimeDateTimeField *) nil_chk(iField_)) getRangeDurationField], [((OrgJodaTimeDateTimeField *) nil_chk(other)) getRangeDurationField]);
  if (result != 0) {
    return result;
  }
  return OrgJodaTimeFormatDateTimeParserBucket_compareReverseWithOrgJodaTimeDurationField_withOrgJodaTimeDurationField_([((OrgJodaTimeDateTimeField *) nil_chk(iField_)) getDurationField], [other getDurationField]);
}

- (void)dealloc {
  RELEASE_(iField_);
  RELEASE_(iText_);
  RELEASE_(iLocale_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(init__WithOrgJodaTimeDateTimeField:withInt:);
  methods[2].selector = @selector(init__WithOrgJodaTimeDateTimeField:withNSString:withJavaUtilLocale:);
  methods[3].selector = @selector(setWithLong:withBoolean:);
  methods[4].selector = @selector(compareToWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iField_", "LOrgJodaTimeDateTimeField;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "iValue_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "iText_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "iLocale_", "LJavaUtilLocale;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "init", "LOrgJodaTimeDateTimeField;I", "LOrgJodaTimeDateTimeField;LNSString;LJavaUtilLocale;", "set", "JZ", "compareTo", "LOrgJodaTimeFormatDateTimeParserBucket_SavedField;", "LOrgJodaTimeFormatDateTimeParserBucket;", "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/joda/time/format/DateTimeParserBucket$SavedField;>;" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatDateTimeParserBucket_SavedField = { "SavedField", "org.joda.time.format", ptrTable, methods, fields, 7, 0x8, 5, 4, 7, -1, -1, 8, -1 };
  return &_OrgJodaTimeFormatDateTimeParserBucket_SavedField;
}

@end

void OrgJodaTimeFormatDateTimeParserBucket_SavedField_init(OrgJodaTimeFormatDateTimeParserBucket_SavedField *self) {
  NSObject_init(self);
}

OrgJodaTimeFormatDateTimeParserBucket_SavedField *new_OrgJodaTimeFormatDateTimeParserBucket_SavedField_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeFormatDateTimeParserBucket_SavedField, init)
}

OrgJodaTimeFormatDateTimeParserBucket_SavedField *create_OrgJodaTimeFormatDateTimeParserBucket_SavedField_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFormatDateTimeParserBucket_SavedField, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatDateTimeParserBucket_SavedField)
