package com.farsitel.bazaar.common.model.inline;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.j;

/* compiled from: InlineAppInfo.kt */
public final class InlineAppInfo {
    public final boolean accessible;
    public final String icon;
    public final String name;
    public final String packageName;
    public final int version;

    public InlineAppInfo(String str, String str2, String str3, boolean z, int i2) {
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str2, "packageName");
        j.b(str3, "icon");
        this.name = str;
        this.packageName = str2;
        this.icon = str3;
        this.accessible = z;
        this.version = i2;
    }

    public static /* synthetic */ InlineAppInfo copy$default(InlineAppInfo inlineAppInfo, String str, String str2, String str3, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = inlineAppInfo.name;
        }
        if ((i3 & 2) != 0) {
            str2 = inlineAppInfo.packageName;
        }
        String str4 = str2;
        if ((i3 & 4) != 0) {
            str3 = inlineAppInfo.icon;
        }
        String str5 = str3;
        if ((i3 & 8) != 0) {
            z = inlineAppInfo.accessible;
        }
        boolean z2 = z;
        if ((i3 & 16) != 0) {
            i2 = inlineAppInfo.version;
        }
        return inlineAppInfo.copy(str, str4, str5, z2, i2);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.packageName;
    }

    public final String component3() {
        return this.icon;
    }

    public final boolean component4() {
        return this.accessible;
    }

    public final int component5() {
        return this.version;
    }

    public final InlineAppInfo copy(String str, String str2, String str3, boolean z, int i2) {
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str2, "packageName");
        j.b(str3, "icon");
        InlineAppInfo inlineAppInfo = new InlineAppInfo(str, str2, str3, z, i2);
        return inlineAppInfo;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof InlineAppInfo) {
                InlineAppInfo inlineAppInfo = (InlineAppInfo) obj;
                if (j.a((Object) this.name, (Object) inlineAppInfo.name) && j.a((Object) this.packageName, (Object) inlineAppInfo.packageName) && j.a((Object) this.icon, (Object) inlineAppInfo.icon)) {
                    if (this.accessible == inlineAppInfo.accessible) {
                        if (this.version == inlineAppInfo.version) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final boolean getAccessible() {
        return this.accessible;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.name;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.packageName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.icon;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        int i3 = (hashCode2 + i2) * 31;
        boolean z = this.accessible;
        if (z) {
            z = true;
        }
        return ((i3 + (z ? 1 : 0)) * 31) + this.version;
    }

    public String toString() {
        return "InlineAppInfo(name=" + this.name + ", packageName=" + this.packageName + ", icon=" + this.icon + ", accessible=" + this.accessible + ", version=" + this.version + ")";
    }
}
