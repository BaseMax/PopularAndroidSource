package com.farsitel.bazaar.data.entity;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.j;
import java.util.List;

/* compiled from: Application.kt */
public final class InstalledApp extends Application {
    public final long installDelta;
    public final boolean isFree;
    public final boolean isPreInstall;
    public final String name;
    public final String packageName;
    public final List<String> sign;
    public final long updateDelta;
    public final long versionCode;
    public final String versionName;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ InstalledApp(java.lang.String r16, java.lang.String r17, long r18, java.lang.String r20, long r21, long r23, boolean r25, boolean r26, java.util.List r27, int r28, h.f.b.f r29) {
        /*
            r15 = this;
            r0 = r28
            r1 = r0 & 2
            if (r1 == 0) goto L_0x0009
            r4 = r16
            goto L_0x000b
        L_0x0009:
            r4 = r17
        L_0x000b:
            r0 = r0 & 128(0x80, float:1.794E-43)
            if (r0 == 0) goto L_0x0012
            r0 = 1
            r13 = 1
            goto L_0x0014
        L_0x0012:
            r13 = r26
        L_0x0014:
            r2 = r15
            r3 = r16
            r5 = r18
            r7 = r20
            r8 = r21
            r10 = r23
            r12 = r25
            r14 = r27
            r2.<init>(r3, r4, r5, r7, r8, r10, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.InstalledApp.<init>(java.lang.String, java.lang.String, long, java.lang.String, long, long, boolean, boolean, java.util.List, int, h.f.b.f):void");
    }

    public static /* synthetic */ InstalledApp copy$default(InstalledApp installedApp, String str, String str2, long j2, String str3, long j3, long j4, boolean z, boolean z2, List list, int i2, Object obj) {
        InstalledApp installedApp2 = installedApp;
        int i3 = i2;
        return installedApp.copy((i3 & 1) != 0 ? installedApp.getPackageName() : str, (i3 & 2) != 0 ? installedApp.getName() : str2, (i3 & 4) != 0 ? installedApp2.versionCode : j2, (i3 & 8) != 0 ? installedApp2.versionName : str3, (i3 & 16) != 0 ? installedApp2.installDelta : j3, (i3 & 32) != 0 ? installedApp2.updateDelta : j4, (i3 & 64) != 0 ? installedApp2.isPreInstall : z, (i3 & 128) != 0 ? installedApp.isFree() : z2, (i3 & 256) != 0 ? installedApp2.sign : list);
    }

    public final String component1() {
        return getPackageName();
    }

    public final String component2() {
        return getName();
    }

    public final long component3() {
        return this.versionCode;
    }

    public final String component4() {
        return this.versionName;
    }

    public final long component5() {
        return this.installDelta;
    }

    public final long component6() {
        return this.updateDelta;
    }

    public final boolean component7() {
        return this.isPreInstall;
    }

    public final boolean component8() {
        return isFree();
    }

    public final List<String> component9() {
        return this.sign;
    }

    public final InstalledApp copy(String str, String str2, long j2, String str3, long j3, long j4, boolean z, boolean z2, List<String> list) {
        j.b(str, "packageName");
        String str4 = str2;
        j.b(str4, DefaultAppMeasurementEventListenerRegistrar.NAME);
        String str5 = str3;
        j.b(str5, "versionName");
        List<String> list2 = list;
        j.b(list2, "sign");
        InstalledApp installedApp = new InstalledApp(str, str4, j2, str5, j3, j4, z, z2, list2);
        return installedApp;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof InstalledApp) {
                InstalledApp installedApp = (InstalledApp) obj;
                if (j.a((Object) getPackageName(), (Object) installedApp.getPackageName()) && j.a((Object) getName(), (Object) installedApp.getName())) {
                    if ((this.versionCode == installedApp.versionCode) && j.a((Object) this.versionName, (Object) installedApp.versionName)) {
                        if (this.installDelta == installedApp.installDelta) {
                            if (this.updateDelta == installedApp.updateDelta) {
                                if (this.isPreInstall == installedApp.isPreInstall) {
                                    if (!(isFree() == installedApp.isFree()) || !j.a((Object) this.sign, (Object) installedApp.sign)) {
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final long getInstallDelta() {
        return this.installDelta;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public final List<String> getSign() {
        return this.sign;
    }

    public final long getUpdateDelta() {
        return this.updateDelta;
    }

    public final long getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        String packageName2 = getPackageName();
        int i2 = 0;
        int hashCode = (packageName2 != null ? packageName2.hashCode() : 0) * 31;
        String name2 = getName();
        int hashCode2 = name2 != null ? name2.hashCode() : 0;
        long j2 = this.versionCode;
        int i3 = (((hashCode + hashCode2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str = this.versionName;
        int hashCode3 = str != null ? str.hashCode() : 0;
        long j3 = this.installDelta;
        long j4 = this.updateDelta;
        int i4 = (((((i3 + hashCode3) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        boolean z = this.isPreInstall;
        if (z) {
            z = true;
        }
        int i5 = (i4 + (z ? 1 : 0)) * 31;
        boolean isFree2 = isFree();
        if (isFree2) {
            isFree2 = true;
        }
        int i6 = (i5 + (isFree2 ? 1 : 0)) * 31;
        List<String> list = this.sign;
        if (list != null) {
            i2 = list.hashCode();
        }
        return i6 + i2;
    }

    public boolean isFree() {
        return this.isFree;
    }

    public final boolean isPreInstall() {
        return this.isPreInstall;
    }

    public String toString() {
        return "InstalledApp(packageName=" + getPackageName() + ", name=" + getName() + ", versionCode=" + this.versionCode + ", versionName=" + this.versionName + ", installDelta=" + this.installDelta + ", updateDelta=" + this.updateDelta + ", isPreInstall=" + this.isPreInstall + ", isFree=" + isFree() + ", sign=" + this.sign + ")";
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public InstalledApp(String str, String str2, long j2, String str3, long j3, long j4, boolean z, boolean z2, List<String> list) {
        super(null);
        j.b(str, "packageName");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str3, "versionName");
        j.b(list, "sign");
        this.packageName = str;
        this.name = str2;
        this.versionCode = j2;
        this.versionName = str3;
        this.installDelta = j3;
        this.updateDelta = j4;
        this.isPreInstall = z;
        this.isFree = z2;
        this.sign = list;
    }
}
