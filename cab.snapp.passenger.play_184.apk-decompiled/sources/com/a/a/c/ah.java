package com.a.a.c;

import android.app.ActivityManager;
import android.os.Build;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.List;
import java.util.Map;

final class ah {

    /* renamed from: a  reason: collision with root package name */
    private static final b f1737a = b.copyFromUtf8("0");

    /* renamed from: b  reason: collision with root package name */
    private static final b f1738b = b.copyFromUtf8("Unity");

    private ah() {
    }

    public static void writeBeginSession(e eVar, String str, String str2, long j) throws Exception {
        eVar.writeBytes(1, b.copyFromUtf8(str2));
        eVar.writeBytes(2, b.copyFromUtf8(str));
        eVar.writeUInt64(3, j);
    }

    public static void writeSessionApp(e eVar, String str, String str2, String str3, String str4, String str5, int i, String str6) throws Exception {
        e eVar2 = eVar;
        int i2 = i;
        b copyFromUtf8 = b.copyFromUtf8(str);
        b copyFromUtf82 = b.copyFromUtf8(str2);
        b copyFromUtf83 = b.copyFromUtf8(str3);
        b copyFromUtf84 = b.copyFromUtf8(str4);
        b copyFromUtf85 = b.copyFromUtf8(str5);
        b copyFromUtf86 = str6 != null ? b.copyFromUtf8(str6) : null;
        eVar2.writeTag(7, 2);
        int computeBytesSize = e.computeBytesSize(1, copyFromUtf8) + 0 + e.computeBytesSize(2, copyFromUtf83) + e.computeBytesSize(3, copyFromUtf84);
        int computeBytesSize2 = e.computeBytesSize(1, copyFromUtf82) + 0;
        int computeTagSize = computeBytesSize + e.computeTagSize(5) + e.computeRawVarint32Size(computeBytesSize2) + computeBytesSize2 + e.computeBytesSize(6, copyFromUtf85);
        if (copyFromUtf86 != null) {
            computeTagSize = computeTagSize + e.computeBytesSize(8, f1738b) + e.computeBytesSize(9, copyFromUtf86);
        }
        eVar2.writeRawVarint32(computeTagSize + e.computeEnumSize(10, i2));
        eVar2.writeBytes(1, copyFromUtf8);
        eVar2.writeBytes(2, copyFromUtf83);
        eVar2.writeBytes(3, copyFromUtf84);
        eVar2.writeTag(5, 2);
        eVar2.writeRawVarint32(e.computeBytesSize(1, copyFromUtf82) + 0);
        eVar2.writeBytes(1, copyFromUtf82);
        eVar2.writeBytes(6, copyFromUtf85);
        if (copyFromUtf86 != null) {
            eVar2.writeBytes(8, f1738b);
            eVar2.writeBytes(9, copyFromUtf86);
        }
        eVar2.writeEnum(10, i2);
    }

    public static void writeSessionOS(e eVar, boolean z) throws Exception {
        b copyFromUtf8 = b.copyFromUtf8(Build.VERSION.RELEASE);
        b copyFromUtf82 = b.copyFromUtf8(Build.VERSION.CODENAME);
        eVar.writeTag(8, 2);
        eVar.writeRawVarint32(e.computeEnumSize(1, 3) + 0 + e.computeBytesSize(2, copyFromUtf8) + e.computeBytesSize(3, copyFromUtf82) + e.computeBoolSize(4, z));
        eVar.writeEnum(1, 3);
        eVar.writeBytes(2, copyFromUtf8);
        eVar.writeBytes(3, copyFromUtf82);
        eVar.writeBool(4, z);
    }

    public static void writeSessionDevice(e eVar, String str, int i, String str2, int i2, long j, long j2, boolean z, Map<IdManager.DeviceIdentifierType, String> map, int i3, String str3, String str4) throws Exception {
        int i4;
        int i5;
        e eVar2 = eVar;
        int i6 = i;
        int i7 = i2;
        long j3 = j;
        long j4 = j2;
        boolean z2 = z;
        int i8 = i3;
        b copyFromUtf8 = b.copyFromUtf8(str);
        b a2 = a(str2);
        b a3 = a(str4);
        b a4 = a(str3);
        eVar2.writeTag(9, 2);
        int i9 = 0;
        int computeBytesSize = e.computeBytesSize(1, copyFromUtf8) + 0 + e.computeEnumSize(3, i6);
        if (a2 == null) {
            i4 = 0;
        } else {
            i4 = e.computeBytesSize(4, a2);
        }
        int computeUInt32Size = computeBytesSize + i4 + e.computeUInt32Size(5, i7) + e.computeUInt64Size(6, j3) + e.computeUInt64Size(7, j4) + e.computeBoolSize(10, z2);
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                int a5 = a((IdManager.DeviceIdentifierType) next.getKey(), (String) next.getValue());
                computeUInt32Size += e.computeTagSize(11) + e.computeRawVarint32Size(a5) + a5;
                boolean z3 = z;
            }
        }
        int computeUInt32Size2 = computeUInt32Size + e.computeUInt32Size(12, i8);
        if (a4 == null) {
            i5 = 0;
        } else {
            i5 = e.computeBytesSize(13, a4);
        }
        int i10 = computeUInt32Size2 + i5;
        if (a3 != null) {
            i9 = e.computeBytesSize(14, a3);
        }
        eVar2.writeRawVarint32(i10 + i9);
        eVar2.writeBytes(1, copyFromUtf8);
        eVar2.writeEnum(3, i6);
        eVar2.writeBytes(4, a2);
        eVar2.writeUInt32(5, i7);
        eVar2.writeUInt64(6, j3);
        eVar2.writeUInt64(7, j4);
        eVar2.writeBool(10, z);
        for (Map.Entry next2 : map.entrySet()) {
            eVar2.writeTag(11, 2);
            eVar2.writeRawVarint32(a((IdManager.DeviceIdentifierType) next2.getKey(), (String) next2.getValue()));
            eVar2.writeEnum(1, ((IdManager.DeviceIdentifierType) next2.getKey()).protobufIndex);
            eVar2.writeBytes(2, b.copyFromUtf8((String) next2.getValue()));
        }
        eVar2.writeUInt32(12, i8);
        if (a4 != null) {
            eVar2.writeBytes(13, a4);
        }
        if (a3 != null) {
            eVar2.writeBytes(14, a3);
        }
    }

    public static void writeSessionUser(e eVar, String str, String str2, String str3) throws Exception {
        if (str == null) {
            str = "";
        }
        b copyFromUtf8 = b.copyFromUtf8(str);
        b a2 = a(str2);
        b a3 = a(str3);
        int computeBytesSize = e.computeBytesSize(1, copyFromUtf8) + 0;
        if (str2 != null) {
            computeBytesSize += e.computeBytesSize(2, a2);
        }
        if (str3 != null) {
            computeBytesSize += e.computeBytesSize(3, a3);
        }
        eVar.writeTag(6, 2);
        eVar.writeRawVarint32(computeBytesSize);
        eVar.writeBytes(1, copyFromUtf8);
        if (str2 != null) {
            eVar.writeBytes(2, a2);
        }
        if (str3 != null) {
            eVar.writeBytes(3, a3);
        }
    }

    public static void writeSessionEvent(e eVar, long j, String str, ak akVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, Map<String, String> map, v vVar, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i, String str2, String str3, Float f, int i2, boolean z, long j2, long j3) throws Exception {
        b bVar;
        int i3;
        e eVar2 = eVar;
        long j4 = j;
        Thread[] threadArr2 = threadArr;
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo2 = runningAppProcessInfo;
        int i4 = i;
        String str4 = str3;
        b copyFromUtf8 = b.copyFromUtf8(str2);
        if (str4 == null) {
            bVar = null;
        } else {
            bVar = b.copyFromUtf8(str4.replace("-", ""));
        }
        b bVar2 = bVar;
        b a2 = vVar.a();
        if (a2 == null) {
            c.getLogger().d(j.TAG, "No log data to include with this event.");
        }
        vVar.b();
        eVar2.writeTag(10, 2);
        int computeUInt64Size = e.computeUInt64Size(1, j4) + 0 + e.computeBytesSize(2, b.copyFromUtf8(str));
        b bVar3 = a2;
        b bVar4 = bVar2;
        String str5 = "";
        b bVar5 = copyFromUtf8;
        int a3 = a(akVar, thread, stackTraceElementArr, threadArr, list, copyFromUtf8, bVar2, map, runningAppProcessInfo, i);
        int computeTagSize = computeUInt64Size + e.computeTagSize(3) + e.computeRawVarint32Size(a3) + a3;
        int a4 = a(f, i2, z, i, j2, j3);
        int computeTagSize2 = computeTagSize + e.computeTagSize(5) + e.computeRawVarint32Size(a4) + a4;
        if (bVar3 != null) {
            int computeBytesSize = e.computeBytesSize(1, bVar3);
            computeTagSize2 += e.computeTagSize(6) + e.computeRawVarint32Size(computeBytesSize) + computeBytesSize;
        }
        eVar2.writeRawVarint32(computeTagSize2);
        eVar2.writeUInt64(1, j4);
        eVar2.writeBytes(2, b.copyFromUtf8(str));
        eVar2.writeTag(3, 2);
        Thread thread2 = thread;
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        Thread[] threadArr3 = threadArr;
        List<StackTraceElement[]> list2 = list;
        b bVar6 = bVar5;
        b bVar7 = bVar4;
        eVar2.writeRawVarint32(a(akVar, thread2, stackTraceElementArr2, threadArr3, list2, bVar6, bVar7, map, runningAppProcessInfo, i));
        eVar2.writeTag(1, 2);
        eVar2.writeRawVarint32(a(akVar, thread2, stackTraceElementArr2, threadArr3, list2, bVar6, bVar7));
        a(eVar2, thread2, stackTraceElementArr2, 4, true);
        int length = threadArr2.length;
        for (int i5 = 0; i5 < length; i5++) {
            a(eVar2, threadArr2[i5], list.get(i5), 0, false);
        }
        boolean z2 = false;
        ak akVar2 = akVar;
        int i6 = 2;
        int i7 = 1;
        while (true) {
            eVar2.writeTag(i6, 2);
            eVar2.writeRawVarint32(a(akVar2, 1, 8));
            eVar2.writeBytes(1, b.copyFromUtf8(akVar2.className));
            String str6 = akVar2.localizedMessage;
            if (str6 != null) {
                eVar2.writeBytes(3, b.copyFromUtf8(str6));
            }
            for (StackTraceElement a5 : akVar2.stacktrace) {
                a(eVar2, 4, a5, true);
            }
            akVar2 = akVar2.cause;
            if (akVar2 == null) {
                break;
            } else if (i7 < 8) {
                i7++;
                i6 = 6;
            } else {
                int i8 = 0;
                while (akVar2 != null) {
                    akVar2 = akVar2.cause;
                    i8++;
                }
                eVar2.writeUInt32(7, i8);
            }
        }
        eVar2.writeTag(3, 2);
        eVar2.writeRawVarint32(a());
        eVar2.writeBytes(1, f1737a);
        eVar2.writeBytes(2, f1737a);
        eVar2.writeUInt64(3, 0);
        eVar2.writeTag(4, 2);
        b bVar8 = bVar4;
        b bVar9 = bVar5;
        eVar2.writeRawVarint32(a(bVar9, bVar8));
        eVar2.writeUInt64(1, 0);
        eVar2.writeUInt64(2, 0);
        eVar2.writeBytes(3, bVar9);
        if (bVar8 != null) {
            eVar2.writeBytes(4, bVar8);
        }
        if (map != null && !map.isEmpty()) {
            for (Map.Entry next : map.entrySet()) {
                eVar2.writeTag(2, 2);
                eVar2.writeRawVarint32(a((String) next.getKey(), (String) next.getValue()));
                eVar2.writeBytes(1, b.copyFromUtf8((String) next.getKey()));
                String str7 = (String) next.getValue();
                if (str7 == null) {
                    str7 = str5;
                }
                eVar2.writeBytes(2, b.copyFromUtf8(str7));
            }
        }
        if (runningAppProcessInfo2 != null) {
            if (runningAppProcessInfo2.importance != 100) {
                z2 = true;
            }
            eVar2.writeBool(3, z2);
        }
        int i9 = i;
        eVar2.writeUInt32(4, i9);
        eVar2.writeTag(5, 2);
        eVar2.writeRawVarint32(a(f, i2, z, i, j2, j3));
        if (f != null) {
            i3 = 1;
            eVar2.writeFloat(1, f.floatValue());
        } else {
            i3 = 1;
        }
        eVar2.writeSInt32(2, i2);
        eVar2.writeBool(3, z);
        eVar2.writeUInt32(4, i9);
        eVar2.writeUInt64(5, j2);
        eVar2.writeUInt64(6, j3);
        if (bVar3 != null) {
            eVar2.writeTag(6, 2);
            eVar2.writeRawVarint32(e.computeBytesSize(i3, bVar3));
            eVar2.writeBytes(i3, bVar3);
        }
    }

    private static void a(e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) throws Exception {
        eVar.writeTag(1, 2);
        eVar.writeRawVarint32(a(thread, stackTraceElementArr, i, z));
        eVar.writeBytes(1, b.copyFromUtf8(thread.getName()));
        eVar.writeUInt32(2, i);
        for (StackTraceElement a2 : stackTraceElementArr) {
            a(eVar, 3, a2, z);
        }
    }

    private static void a(e eVar, int i, StackTraceElement stackTraceElement, boolean z) throws Exception {
        eVar.writeTag(i, 2);
        eVar.writeRawVarint32(a(stackTraceElement, z));
        if (stackTraceElement.isNativeMethod()) {
            eVar.writeUInt64(1, (long) Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            eVar.writeUInt64(1, 0);
        }
        eVar.writeBytes(2, b.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            eVar.writeBytes(3, b.copyFromUtf8(stackTraceElement.getFileName()));
        }
        int i2 = 4;
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            eVar.writeUInt64(4, (long) stackTraceElement.getLineNumber());
        }
        if (!z) {
            i2 = 0;
        }
        eVar.writeUInt32(5, i2);
    }

    private static int a(IdManager.DeviceIdentifierType deviceIdentifierType, String str) {
        return e.computeEnumSize(1, deviceIdentifierType.protobufIndex) + e.computeBytesSize(2, b.copyFromUtf8(str));
    }

    private static int a(b bVar, b bVar2) {
        int computeUInt64Size = e.computeUInt64Size(1, 0) + 0 + e.computeUInt64Size(2, 0) + e.computeBytesSize(3, bVar);
        return bVar2 != null ? computeUInt64Size + e.computeBytesSize(4, bVar2) : computeUInt64Size;
    }

    private static int a(ak akVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, b bVar, b bVar2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i) {
        int a2 = a(akVar, thread, stackTraceElementArr, threadArr, list, bVar, bVar2);
        int computeTagSize = e.computeTagSize(1) + e.computeRawVarint32Size(a2) + a2;
        boolean z = false;
        int i2 = computeTagSize + 0;
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                int a3 = a((String) next.getKey(), (String) next.getValue());
                i2 += e.computeTagSize(2) + e.computeRawVarint32Size(a3) + a3;
            }
        }
        if (runningAppProcessInfo != null) {
            if (runningAppProcessInfo.importance != 100) {
                z = true;
            }
            i2 += e.computeBoolSize(3, z);
        }
        return i2 + e.computeUInt32Size(4, i);
    }

    private static int a(ak akVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, b bVar, b bVar2) {
        int a2 = a(thread, stackTraceElementArr, 4, true);
        int length = threadArr.length;
        int computeTagSize = e.computeTagSize(1) + e.computeRawVarint32Size(a2) + a2 + 0;
        for (int i = 0; i < length; i++) {
            int a3 = a(threadArr[i], list.get(i), 0, false);
            computeTagSize += e.computeTagSize(1) + e.computeRawVarint32Size(a3) + a3;
        }
        int a4 = a(akVar, 1, 8);
        int a5 = a();
        int a6 = a(bVar, bVar2);
        return computeTagSize + e.computeTagSize(2) + e.computeRawVarint32Size(a4) + a4 + e.computeTagSize(3) + e.computeRawVarint32Size(a5) + a5 + e.computeTagSize(3) + e.computeRawVarint32Size(a6) + a6;
    }

    private static int a(String str, String str2) {
        int computeBytesSize = e.computeBytesSize(1, b.copyFromUtf8(str));
        if (str2 == null) {
            str2 = "";
        }
        return computeBytesSize + e.computeBytesSize(2, b.copyFromUtf8(str2));
    }

    private static int a(Float f, int i, boolean z, int i2, long j, long j2) {
        int i3 = 0;
        if (f != null) {
            i3 = 0 + e.computeFloatSize(1, f.floatValue());
        }
        return i3 + e.computeSInt32Size(2, i) + e.computeBoolSize(3, z) + e.computeUInt32Size(4, i2) + e.computeUInt64Size(5, j) + e.computeUInt64Size(6, j2);
    }

    private static int a(ak akVar, int i, int i2) {
        int i3 = 0;
        int computeBytesSize = e.computeBytesSize(1, b.copyFromUtf8(akVar.className)) + 0;
        String str = akVar.localizedMessage;
        if (str != null) {
            computeBytesSize += e.computeBytesSize(3, b.copyFromUtf8(str));
        }
        int i4 = computeBytesSize;
        for (StackTraceElement a2 : akVar.stacktrace) {
            int a3 = a(a2, true);
            i4 += e.computeTagSize(4) + e.computeRawVarint32Size(a3) + a3;
        }
        ak akVar2 = akVar.cause;
        if (akVar2 == null) {
            return i4;
        }
        if (i < i2) {
            int a4 = a(akVar2, i + 1, i2);
            return i4 + e.computeTagSize(6) + e.computeRawVarint32Size(a4) + a4;
        }
        while (akVar2 != null) {
            akVar2 = akVar2.cause;
            i3++;
        }
        return i4 + e.computeUInt32Size(7, i3);
    }

    private static int a() {
        return e.computeBytesSize(1, f1737a) + 0 + e.computeBytesSize(2, f1737a) + e.computeUInt64Size(3, 0);
    }

    private static int a(StackTraceElement stackTraceElement, boolean z) {
        int i;
        int i2 = 0;
        if (stackTraceElement.isNativeMethod()) {
            i = e.computeUInt64Size(1, (long) Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            i = e.computeUInt64Size(1, 0);
        }
        int computeBytesSize = i + 0 + e.computeBytesSize(2, b.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            computeBytesSize += e.computeBytesSize(3, b.copyFromUtf8(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            computeBytesSize += e.computeUInt64Size(4, (long) stackTraceElement.getLineNumber());
        }
        if (z) {
            i2 = 2;
        }
        return computeBytesSize + e.computeUInt32Size(5, i2);
    }

    private static int a(Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) {
        int computeBytesSize = e.computeBytesSize(1, b.copyFromUtf8(thread.getName())) + e.computeUInt32Size(2, i);
        for (StackTraceElement a2 : stackTraceElementArr) {
            int a3 = a(a2, z);
            computeBytesSize += e.computeTagSize(3) + e.computeRawVarint32Size(a3) + a3;
        }
        return computeBytesSize;
    }

    private static b a(String str) {
        if (str == null) {
            return null;
        }
        return b.copyFromUtf8(str);
    }
}
