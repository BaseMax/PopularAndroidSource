package com.farsitel.bazaar.data.device;

import android.os.Build;
import h.a.i;
import h.f.a.a;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: DeviceInfoDataSource.kt */
final class DeviceInfoDataSource$cpu$2 extends Lambda implements a<String> {

    /* renamed from: a  reason: collision with root package name */
    public static final DeviceInfoDataSource$cpu$2 f12199a = new DeviceInfoDataSource$cpu$2();

    public DeviceInfoDataSource$cpu$2() {
        super(0);
    }

    public final String invoke() {
        if (Build.VERSION.SDK_INT < 21) {
            return Build.CPU_ABI;
        }
        String[] strArr = Build.SUPPORTED_ABIS;
        j.a((Object) strArr, "Build.SUPPORTED_ABIS");
        return i.a(strArr, ",", null, null, 0, null, null, 62, null);
    }
}
