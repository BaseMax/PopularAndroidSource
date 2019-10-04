package com.farsitel.bazaar.data.dto.requestdto;

import c.e.d.a.c;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.farsitel.bazaar.common.model.inline.InlineAppInfo;
import h.f.b.j;

/* compiled from: GetInlineAppInfoRequestDto.kt */
public final class GetInlineAppInfoReplyDto {
    @c("accessible")
    public final boolean accessible;
    @c("icon")
    public final String icon;
    @c("name")
    public final String name;
    @c("package_name")
    public final String packageName;
    @c("version")
    public final int version;

    public GetInlineAppInfoReplyDto(String str, String str2, String str3, boolean z, int i2) {
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str2, "packageName");
        j.b(str3, "icon");
        this.name = str;
        this.packageName = str2;
        this.icon = str3;
        this.accessible = z;
        this.version = i2;
    }

    public static /* synthetic */ GetInlineAppInfoReplyDto copy$default(GetInlineAppInfoReplyDto getInlineAppInfoReplyDto, String str, String str2, String str3, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = getInlineAppInfoReplyDto.name;
        }
        if ((i3 & 2) != 0) {
            str2 = getInlineAppInfoReplyDto.packageName;
        }
        String str4 = str2;
        if ((i3 & 4) != 0) {
            str3 = getInlineAppInfoReplyDto.icon;
        }
        String str5 = str3;
        if ((i3 & 8) != 0) {
            z = getInlineAppInfoReplyDto.accessible;
        }
        boolean z2 = z;
        if ((i3 & 16) != 0) {
            i2 = getInlineAppInfoReplyDto.version;
        }
        return getInlineAppInfoReplyDto.copy(str, str4, str5, z2, i2);
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

    public final GetInlineAppInfoReplyDto copy(String str, String str2, String str3, boolean z, int i2) {
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str2, "packageName");
        j.b(str3, "icon");
        GetInlineAppInfoReplyDto getInlineAppInfoReplyDto = new GetInlineAppInfoReplyDto(str, str2, str3, z, i2);
        return getInlineAppInfoReplyDto;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof GetInlineAppInfoReplyDto) {
                GetInlineAppInfoReplyDto getInlineAppInfoReplyDto = (GetInlineAppInfoReplyDto) obj;
                if (j.a((Object) this.name, (Object) getInlineAppInfoReplyDto.name) && j.a((Object) this.packageName, (Object) getInlineAppInfoReplyDto.packageName) && j.a((Object) this.icon, (Object) getInlineAppInfoReplyDto.icon)) {
                    if (this.accessible == getInlineAppInfoReplyDto.accessible) {
                        if (this.version == getInlineAppInfoReplyDto.version) {
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

    public final InlineAppInfo toInlineAppInfo() {
        InlineAppInfo inlineAppInfo = new InlineAppInfo(this.name, this.packageName, this.icon, this.accessible, this.version);
        return inlineAppInfo;
    }

    public String toString() {
        return "GetInlineAppInfoReplyDto(name=" + this.name + ", packageName=" + this.packageName + ", icon=" + this.icon + ", accessible=" + this.accessible + ", version=" + this.version + ")";
    }
}
