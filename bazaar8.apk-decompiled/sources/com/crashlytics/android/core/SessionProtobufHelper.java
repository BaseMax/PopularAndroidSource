package com.crashlytics.android.core;

import android.app.ActivityManager;
import e.a.a.a.f;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.List;
import java.util.Map;

public class SessionProtobufHelper {
    public static final String SIGNAL_DEFAULT = "0";
    public static final ByteString SIGNAL_DEFAULT_BYTE_STRING = ByteString.copyFromUtf8(SIGNAL_DEFAULT);
    public static final ByteString UNITY_PLATFORM_BYTE_STRING = ByteString.copyFromUtf8("Unity");

    public static int getBinaryImageSize(ByteString byteString, ByteString byteString2) {
        int computeUInt64Size = CodedOutputStream.computeUInt64Size(1, 0) + 0 + CodedOutputStream.computeUInt64Size(2, 0) + CodedOutputStream.computeBytesSize(3, byteString);
        return byteString2 != null ? computeUInt64Size + CodedOutputStream.computeBytesSize(4, byteString2) : computeUInt64Size;
    }

    public static int getDeviceIdentifierSize(IdManager.DeviceIdentifierType deviceIdentifierType, String str) {
        return CodedOutputStream.computeEnumSize(1, deviceIdentifierType.protobufIndex) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str));
    }

    public static int getEventAppCustomAttributeSize(String str, String str2) {
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(str));
        if (str2 == null) {
            str2 = "";
        }
        return computeBytesSize + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str2));
    }

    public static int getEventAppExecutionExceptionSize(TrimmedThrowableData trimmedThrowableData, int i2, int i3) {
        int i4 = 0;
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(trimmedThrowableData.className)) + 0;
        String str = trimmedThrowableData.localizedMessage;
        if (str != null) {
            computeBytesSize += CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(str));
        }
        int i5 = computeBytesSize;
        for (StackTraceElement frameSize : trimmedThrowableData.stacktrace) {
            int frameSize2 = getFrameSize(frameSize, true);
            i5 += CodedOutputStream.computeTagSize(4) + CodedOutputStream.computeRawVarint32Size(frameSize2) + frameSize2;
        }
        TrimmedThrowableData trimmedThrowableData2 = trimmedThrowableData.cause;
        if (trimmedThrowableData2 == null) {
            return i5;
        }
        if (i2 < i3) {
            int eventAppExecutionExceptionSize = getEventAppExecutionExceptionSize(trimmedThrowableData2, i2 + 1, i3);
            return i5 + CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionExceptionSize) + eventAppExecutionExceptionSize;
        }
        while (trimmedThrowableData2 != null) {
            trimmedThrowableData2 = trimmedThrowableData2.cause;
            i4++;
        }
        return i5 + CodedOutputStream.computeUInt32Size(7, i4);
    }

    public static int getEventAppExecutionSignalSize() {
        return CodedOutputStream.computeBytesSize(1, SIGNAL_DEFAULT_BYTE_STRING) + 0 + CodedOutputStream.computeBytesSize(2, SIGNAL_DEFAULT_BYTE_STRING) + CodedOutputStream.computeUInt64Size(3, 0);
    }

    public static int getEventAppExecutionSize(TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, ByteString byteString, ByteString byteString2) {
        int threadSize = getThreadSize(thread, stackTraceElementArr, 4, true);
        int length = threadArr.length;
        int computeTagSize = CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(threadSize) + threadSize + 0;
        for (int i3 = 0; i3 < length; i3++) {
            int threadSize2 = getThreadSize(threadArr[i3], list.get(i3), 0, false);
            computeTagSize += CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(threadSize2) + threadSize2;
        }
        int eventAppExecutionExceptionSize = getEventAppExecutionExceptionSize(trimmedThrowableData, 1, i2);
        int eventAppExecutionSignalSize = getEventAppExecutionSignalSize();
        int binaryImageSize = getBinaryImageSize(byteString, byteString2);
        return computeTagSize + CodedOutputStream.computeTagSize(2) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionExceptionSize) + eventAppExecutionExceptionSize + CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionSignalSize) + eventAppExecutionSignalSize + CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(binaryImageSize) + binaryImageSize;
    }

    public static int getEventAppSize(TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, ByteString byteString, ByteString byteString2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i3) {
        int eventAppExecutionSize = getEventAppExecutionSize(trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i2, byteString, byteString2);
        int computeTagSize = CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionSize) + eventAppExecutionSize;
        boolean z = false;
        int i4 = computeTagSize + 0;
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                int eventAppCustomAttributeSize = getEventAppCustomAttributeSize((String) next.getKey(), (String) next.getValue());
                i4 += CodedOutputStream.computeTagSize(2) + CodedOutputStream.computeRawVarint32Size(eventAppCustomAttributeSize) + eventAppCustomAttributeSize;
            }
        }
        if (runningAppProcessInfo != null) {
            if (runningAppProcessInfo.importance != 100) {
                z = true;
            }
            i4 += CodedOutputStream.computeBoolSize(3, z);
        }
        return i4 + CodedOutputStream.computeUInt32Size(4, i3);
    }

    public static int getEventDeviceSize(Float f2, int i2, boolean z, int i3, long j2, long j3) {
        int i4 = 0;
        if (f2 != null) {
            i4 = 0 + CodedOutputStream.computeFloatSize(1, f2.floatValue());
        }
        return i4 + CodedOutputStream.computeSInt32Size(2, i2) + CodedOutputStream.computeBoolSize(3, z) + CodedOutputStream.computeUInt32Size(4, i3) + CodedOutputStream.computeUInt64Size(5, j2) + CodedOutputStream.computeUInt64Size(6, j3);
    }

    public static int getEventLogSize(ByteString byteString) {
        return CodedOutputStream.computeBytesSize(1, byteString);
    }

    public static int getFrameSize(StackTraceElement stackTraceElement, boolean z) {
        int i2;
        int i3 = 0;
        if (stackTraceElement.isNativeMethod()) {
            i2 = CodedOutputStream.computeUInt64Size(1, (long) Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            i2 = CodedOutputStream.computeUInt64Size(1, 0);
        }
        int computeBytesSize = i2 + 0 + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            computeBytesSize += CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            computeBytesSize += CodedOutputStream.computeUInt64Size(4, (long) stackTraceElement.getLineNumber());
        }
        if (z) {
            i3 = 2;
        }
        return computeBytesSize + CodedOutputStream.computeUInt32Size(5, i3);
    }

    public static int getSessionAppOrgSize(ByteString byteString) {
        return CodedOutputStream.computeBytesSize(1, byteString) + 0;
    }

    public static int getSessionAppSize(ByteString byteString, ByteString byteString2, ByteString byteString3, ByteString byteString4, ByteString byteString5, int i2, ByteString byteString6) {
        int sessionAppOrgSize = getSessionAppOrgSize(byteString2);
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, byteString) + 0 + CodedOutputStream.computeBytesSize(2, byteString3) + CodedOutputStream.computeBytesSize(3, byteString4) + CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(sessionAppOrgSize) + sessionAppOrgSize + CodedOutputStream.computeBytesSize(6, byteString5);
        if (byteString6 != null) {
            computeBytesSize = computeBytesSize + CodedOutputStream.computeBytesSize(8, UNITY_PLATFORM_BYTE_STRING) + CodedOutputStream.computeBytesSize(9, byteString6);
        }
        return computeBytesSize + CodedOutputStream.computeEnumSize(10, i2);
    }

    public static int getSessionDeviceSize(int i2, ByteString byteString, int i3, long j2, long j3, boolean z, Map<IdManager.DeviceIdentifierType, String> map, int i4, ByteString byteString2, ByteString byteString3) {
        int i5;
        int i6;
        int i7 = 0;
        int computeEnumSize = CodedOutputStream.computeEnumSize(3, i2) + 0;
        if (byteString == null) {
            i5 = 0;
        } else {
            i5 = CodedOutputStream.computeBytesSize(4, byteString);
        }
        int computeUInt32Size = computeEnumSize + i5 + CodedOutputStream.computeUInt32Size(5, i3) + CodedOutputStream.computeUInt64Size(6, j2) + CodedOutputStream.computeUInt64Size(7, j3) + CodedOutputStream.computeBoolSize(10, z);
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                int deviceIdentifierSize = getDeviceIdentifierSize((IdManager.DeviceIdentifierType) next.getKey(), (String) next.getValue());
                computeUInt32Size += CodedOutputStream.computeTagSize(11) + CodedOutputStream.computeRawVarint32Size(deviceIdentifierSize) + deviceIdentifierSize;
            }
        }
        int computeUInt32Size2 = computeUInt32Size + CodedOutputStream.computeUInt32Size(12, i4);
        if (byteString2 == null) {
            i6 = 0;
        } else {
            i6 = CodedOutputStream.computeBytesSize(13, byteString2);
        }
        int i8 = computeUInt32Size2 + i6;
        if (byteString3 != null) {
            i7 = CodedOutputStream.computeBytesSize(14, byteString3);
        }
        return i8 + i7;
    }

    public static int getSessionEventSize(long j2, String str, TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i3, ByteString byteString, ByteString byteString2, Float f2, int i4, boolean z, long j3, long j4, ByteString byteString3) {
        long j5 = j2;
        int computeUInt64Size = CodedOutputStream.computeUInt64Size(1, j2) + 0 + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str));
        int eventAppSize = getEventAppSize(trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i2, byteString, byteString2, map, runningAppProcessInfo, i3);
        int eventDeviceSize = getEventDeviceSize(f2, i4, z, i3, j3, j4);
        int computeTagSize = computeUInt64Size + CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(eventAppSize) + eventAppSize + CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(eventDeviceSize) + eventDeviceSize;
        if (byteString3 == null) {
            return computeTagSize;
        }
        int eventLogSize = getEventLogSize(byteString3);
        return computeTagSize + CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(eventLogSize) + eventLogSize;
    }

    public static int getSessionOSSize(ByteString byteString, ByteString byteString2, boolean z) {
        return CodedOutputStream.computeEnumSize(1, 3) + 0 + CodedOutputStream.computeBytesSize(2, byteString) + CodedOutputStream.computeBytesSize(3, byteString2) + CodedOutputStream.computeBoolSize(4, z);
    }

    public static int getThreadSize(Thread thread, StackTraceElement[] stackTraceElementArr, int i2, boolean z) {
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(thread.getName())) + CodedOutputStream.computeUInt32Size(2, i2);
        for (StackTraceElement frameSize : stackTraceElementArr) {
            int frameSize2 = getFrameSize(frameSize, z);
            computeBytesSize += CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(frameSize2) + frameSize2;
        }
        return computeBytesSize;
    }

    public static ByteString stringToByteString(String str) {
        if (str == null) {
            return null;
        }
        return ByteString.copyFromUtf8(str);
    }

    public static void writeBeginSession(CodedOutputStream codedOutputStream, String str, String str2, long j2) {
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(str2));
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(str));
        codedOutputStream.writeUInt64(3, j2);
    }

    public static void writeFrame(CodedOutputStream codedOutputStream, int i2, StackTraceElement stackTraceElement, boolean z) {
        codedOutputStream.writeTag(i2, 2);
        codedOutputStream.writeRawVarint32(getFrameSize(stackTraceElement, z));
        if (stackTraceElement.isNativeMethod()) {
            codedOutputStream.writeUInt64(1, (long) Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            codedOutputStream.writeUInt64(1, 0);
        }
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        int i3 = 4;
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            codedOutputStream.writeUInt64(4, (long) stackTraceElement.getLineNumber());
        }
        if (!z) {
            i3 = 0;
        }
        codedOutputStream.writeUInt32(5, i3);
    }

    public static void writeSessionApp(CodedOutputStream codedOutputStream, String str, String str2, String str3, String str4, String str5, int i2, String str6) {
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str);
        ByteString copyFromUtf82 = ByteString.copyFromUtf8(str2);
        ByteString copyFromUtf83 = ByteString.copyFromUtf8(str3);
        ByteString copyFromUtf84 = ByteString.copyFromUtf8(str4);
        ByteString copyFromUtf85 = ByteString.copyFromUtf8(str5);
        ByteString copyFromUtf86 = str6 != null ? ByteString.copyFromUtf8(str6) : null;
        codedOutputStream.writeTag(7, 2);
        codedOutputStream.writeRawVarint32(getSessionAppSize(copyFromUtf8, copyFromUtf82, copyFromUtf83, copyFromUtf84, copyFromUtf85, i2, copyFromUtf86));
        codedOutputStream.writeBytes(1, copyFromUtf8);
        codedOutputStream.writeBytes(2, copyFromUtf83);
        codedOutputStream.writeBytes(3, copyFromUtf84);
        codedOutputStream.writeTag(5, 2);
        codedOutputStream.writeRawVarint32(getSessionAppOrgSize(copyFromUtf82));
        codedOutputStream.writeBytes(1, copyFromUtf82);
        codedOutputStream.writeBytes(6, copyFromUtf85);
        if (copyFromUtf86 != null) {
            codedOutputStream.writeBytes(8, UNITY_PLATFORM_BYTE_STRING);
            codedOutputStream.writeBytes(9, copyFromUtf86);
        }
        codedOutputStream.writeEnum(10, i2);
    }

    public static void writeSessionDevice(CodedOutputStream codedOutputStream, int i2, String str, int i3, long j2, long j3, boolean z, Map<IdManager.DeviceIdentifierType, String> map, int i4, String str2, String str3) {
        CodedOutputStream codedOutputStream2 = codedOutputStream;
        ByteString stringToByteString = stringToByteString(str);
        ByteString stringToByteString2 = stringToByteString(str3);
        ByteString stringToByteString3 = stringToByteString(str2);
        codedOutputStream2.writeTag(9, 2);
        ByteString byteString = stringToByteString3;
        codedOutputStream2.writeRawVarint32(getSessionDeviceSize(i2, stringToByteString, i3, j2, j3, z, map, i4, stringToByteString3, stringToByteString2));
        codedOutputStream2.writeEnum(3, i2);
        codedOutputStream2.writeBytes(4, stringToByteString);
        codedOutputStream2.writeUInt32(5, i3);
        codedOutputStream2.writeUInt64(6, j2);
        codedOutputStream2.writeUInt64(7, j3);
        codedOutputStream2.writeBool(10, z);
        for (Map.Entry next : map.entrySet()) {
            codedOutputStream2.writeTag(11, 2);
            codedOutputStream2.writeRawVarint32(getDeviceIdentifierSize((IdManager.DeviceIdentifierType) next.getKey(), (String) next.getValue()));
            codedOutputStream2.writeEnum(1, ((IdManager.DeviceIdentifierType) next.getKey()).protobufIndex);
            codedOutputStream2.writeBytes(2, ByteString.copyFromUtf8((String) next.getValue()));
        }
        codedOutputStream2.writeUInt32(12, i4);
        if (byteString != null) {
            codedOutputStream2.writeBytes(13, byteString);
        }
        if (stringToByteString2 != null) {
            codedOutputStream2.writeBytes(14, stringToByteString2);
        }
    }

    public static void writeSessionEvent(CodedOutputStream codedOutputStream, long j2, String str, TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, Map<String, String> map, LogFileManager logFileManager, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2, String str2, String str3, Float f2, int i3, boolean z, long j3, long j4) {
        ByteString byteString;
        CodedOutputStream codedOutputStream2 = codedOutputStream;
        String str4 = str3;
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str2);
        if (str4 == null) {
            byteString = null;
        } else {
            byteString = ByteString.copyFromUtf8(str4.replace("-", ""));
        }
        ByteString byteString2 = byteString;
        ByteString byteStringForLog = logFileManager.getByteStringForLog();
        if (byteStringForLog == null) {
            f.e().d(CrashlyticsCore.TAG, "No log data to include with this event.");
        }
        logFileManager.clearLog();
        codedOutputStream2.writeTag(10, 2);
        codedOutputStream2.writeRawVarint32(getSessionEventSize(j2, str, trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, 8, map, runningAppProcessInfo, i2, copyFromUtf8, byteString2, f2, i3, z, j3, j4, byteStringForLog));
        codedOutputStream2.writeUInt64(1, j2);
        codedOutputStream2.writeBytes(2, ByteString.copyFromUtf8(str));
        writeSessionEventApp(codedOutputStream, trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, 8, copyFromUtf8, byteString2, map, runningAppProcessInfo, i2);
        writeSessionEventDevice(codedOutputStream, f2, i3, z, i2, j3, j4);
        writeSessionEventLog(codedOutputStream2, byteStringForLog);
    }

    public static void writeSessionEventApp(CodedOutputStream codedOutputStream, TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, ByteString byteString, ByteString byteString2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i3) {
        codedOutputStream.writeTag(3, 2);
        codedOutputStream.writeRawVarint32(getEventAppSize(trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i2, byteString, byteString2, map, runningAppProcessInfo, i3));
        writeSessionEventAppExecution(codedOutputStream, trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i2, byteString, byteString2);
        if (map != null && !map.isEmpty()) {
            writeSessionEventAppCustomAttributes(codedOutputStream, map);
        }
        if (runningAppProcessInfo != null) {
            codedOutputStream.writeBool(3, runningAppProcessInfo.importance != 100);
        }
        codedOutputStream.writeUInt32(4, i3);
    }

    public static void writeSessionEventAppCustomAttributes(CodedOutputStream codedOutputStream, Map<String, String> map) {
        for (Map.Entry next : map.entrySet()) {
            codedOutputStream.writeTag(2, 2);
            codedOutputStream.writeRawVarint32(getEventAppCustomAttributeSize((String) next.getKey(), (String) next.getValue()));
            codedOutputStream.writeBytes(1, ByteString.copyFromUtf8((String) next.getKey()));
            String str = (String) next.getValue();
            if (str == null) {
                str = "";
            }
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(str));
        }
    }

    public static void writeSessionEventAppExecution(CodedOutputStream codedOutputStream, TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, ByteString byteString, ByteString byteString2) {
        codedOutputStream.writeTag(1, 2);
        codedOutputStream.writeRawVarint32(getEventAppExecutionSize(trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i2, byteString, byteString2));
        writeThread(codedOutputStream, thread, stackTraceElementArr, 4, true);
        int length = threadArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            writeThread(codedOutputStream, threadArr[i3], list.get(i3), 0, false);
        }
        writeSessionEventAppExecutionException(codedOutputStream, trimmedThrowableData, 1, i2, 2);
        codedOutputStream.writeTag(3, 2);
        codedOutputStream.writeRawVarint32(getEventAppExecutionSignalSize());
        codedOutputStream.writeBytes(1, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream.writeBytes(2, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream.writeUInt64(3, 0);
        codedOutputStream.writeTag(4, 2);
        codedOutputStream.writeRawVarint32(getBinaryImageSize(byteString, byteString2));
        codedOutputStream.writeUInt64(1, 0);
        codedOutputStream.writeUInt64(2, 0);
        codedOutputStream.writeBytes(3, byteString);
        if (byteString2 != null) {
            codedOutputStream.writeBytes(4, byteString2);
        }
    }

    public static void writeSessionEventAppExecutionException(CodedOutputStream codedOutputStream, TrimmedThrowableData trimmedThrowableData, int i2, int i3, int i4) {
        codedOutputStream.writeTag(i4, 2);
        codedOutputStream.writeRawVarint32(getEventAppExecutionExceptionSize(trimmedThrowableData, 1, i3));
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(trimmedThrowableData.className));
        String str = trimmedThrowableData.localizedMessage;
        if (str != null) {
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8(str));
        }
        int i5 = 0;
        for (StackTraceElement writeFrame : trimmedThrowableData.stacktrace) {
            writeFrame(codedOutputStream, 4, writeFrame, true);
        }
        TrimmedThrowableData trimmedThrowableData2 = trimmedThrowableData.cause;
        if (trimmedThrowableData2 == null) {
            return;
        }
        if (i2 < i3) {
            writeSessionEventAppExecutionException(codedOutputStream, trimmedThrowableData2, i2 + 1, i3, 6);
            return;
        }
        while (trimmedThrowableData2 != null) {
            trimmedThrowableData2 = trimmedThrowableData2.cause;
            i5++;
        }
        codedOutputStream.writeUInt32(7, i5);
    }

    public static void writeSessionEventDevice(CodedOutputStream codedOutputStream, Float f2, int i2, boolean z, int i3, long j2, long j3) {
        codedOutputStream.writeTag(5, 2);
        codedOutputStream.writeRawVarint32(getEventDeviceSize(f2, i2, z, i3, j2, j3));
        if (f2 != null) {
            codedOutputStream.writeFloat(1, f2.floatValue());
        }
        codedOutputStream.writeSInt32(2, i2);
        codedOutputStream.writeBool(3, z);
        codedOutputStream.writeUInt32(4, i3);
        codedOutputStream.writeUInt64(5, j2);
        codedOutputStream.writeUInt64(6, j3);
    }

    public static void writeSessionEventLog(CodedOutputStream codedOutputStream, ByteString byteString) {
        if (byteString != null) {
            codedOutputStream.writeTag(6, 2);
            codedOutputStream.writeRawVarint32(getEventLogSize(byteString));
            codedOutputStream.writeBytes(1, byteString);
        }
    }

    public static void writeSessionOS(CodedOutputStream codedOutputStream, String str, String str2, boolean z) {
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str);
        ByteString copyFromUtf82 = ByteString.copyFromUtf8(str2);
        codedOutputStream.writeTag(8, 2);
        codedOutputStream.writeRawVarint32(getSessionOSSize(copyFromUtf8, copyFromUtf82, z));
        codedOutputStream.writeEnum(1, 3);
        codedOutputStream.writeBytes(2, copyFromUtf8);
        codedOutputStream.writeBytes(3, copyFromUtf82);
        codedOutputStream.writeBool(4, z);
    }

    public static void writeSessionUser(CodedOutputStream codedOutputStream, String str, String str2, String str3) {
        if (str == null) {
            str = "";
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str);
        ByteString stringToByteString = stringToByteString(str2);
        ByteString stringToByteString2 = stringToByteString(str3);
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, copyFromUtf8) + 0;
        if (str2 != null) {
            computeBytesSize += CodedOutputStream.computeBytesSize(2, stringToByteString);
        }
        if (str3 != null) {
            computeBytesSize += CodedOutputStream.computeBytesSize(3, stringToByteString2);
        }
        codedOutputStream.writeTag(6, 2);
        codedOutputStream.writeRawVarint32(computeBytesSize);
        codedOutputStream.writeBytes(1, copyFromUtf8);
        if (str2 != null) {
            codedOutputStream.writeBytes(2, stringToByteString);
        }
        if (str3 != null) {
            codedOutputStream.writeBytes(3, stringToByteString2);
        }
    }

    public static void writeThread(CodedOutputStream codedOutputStream, Thread thread, StackTraceElement[] stackTraceElementArr, int i2, boolean z) {
        codedOutputStream.writeTag(1, 2);
        codedOutputStream.writeRawVarint32(getThreadSize(thread, stackTraceElementArr, i2, z));
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(thread.getName()));
        codedOutputStream.writeUInt32(2, i2);
        for (StackTraceElement writeFrame : stackTraceElementArr) {
            writeFrame(codedOutputStream, 3, writeFrame, z);
        }
    }
}
