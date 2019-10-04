package c.c.a.e.d.a.b.b;

import c.c.a.e.g.f;
import c.e.d.a.c;
import h.f.b.j;

/* compiled from: RegisterDeviceAndGetInfoResponseDto.kt */
public final class l {
    @c("bazaarLatestVersionCode")
    public final int bazaarLatestVersionCode;
    @c("bazaarLogo")
    public final b bazaarLogo;
    @c("deviceID")
    public final int deviceID;
    @c("forceUpdate")
    public final c forceUpdate;
    @c("isTopChartsVisible")
    public final boolean isTopChartsVisible;
    @c("isUpdateAllEnabled")
    public final boolean isUpdateAllEnabled;
    @c("isVideoPrimaryButtonInListVisible")
    public final boolean isVideoPrimaryButtonInListVisible;
    @c("kidsPreference")
    public final g kidsPreferences;
    @c("tabBarsPreference")
    public final j navigationItemsPreferences;

    public final f a() {
        int i2 = this.deviceID;
        Integer valueOf = Integer.valueOf(this.bazaarLatestVersionCode);
        String a2 = this.bazaarLogo.a();
        String c2 = this.bazaarLogo.c();
        String b2 = this.bazaarLogo.b();
        Boolean valueOf2 = Boolean.valueOf(this.forceUpdate.b());
        Boolean valueOf3 = Boolean.valueOf(this.forceUpdate.c());
        String a3 = this.forceUpdate.a();
        f fVar = new f(i2, Boolean.valueOf(this.isUpdateAllEnabled), valueOf, valueOf2, valueOf3, a3, a2, c2, b2, Boolean.valueOf(this.isVideoPrimaryButtonInListVisible), Boolean.valueOf(this.navigationItemsPreferences.a().a()), Boolean.valueOf(this.navigationItemsPreferences.d().a()), Boolean.valueOf(this.navigationItemsPreferences.b().a()), Boolean.valueOf(this.navigationItemsPreferences.c().a()), Boolean.valueOf(this.navigationItemsPreferences.g().a()), Boolean.valueOf(this.navigationItemsPreferences.e().a()), Boolean.valueOf(this.navigationItemsPreferences.f().a()), Boolean.valueOf(this.isTopChartsVisible), Boolean.valueOf(this.kidsPreferences.a()));
        return fVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof l) {
                l lVar = (l) obj;
                if (this.deviceID == lVar.deviceID) {
                    if ((this.bazaarLatestVersionCode == lVar.bazaarLatestVersionCode) && j.a((Object) this.bazaarLogo, (Object) lVar.bazaarLogo) && j.a((Object) this.forceUpdate, (Object) lVar.forceUpdate) && j.a((Object) this.navigationItemsPreferences, (Object) lVar.navigationItemsPreferences) && j.a((Object) this.kidsPreferences, (Object) lVar.kidsPreferences)) {
                        if (this.isVideoPrimaryButtonInListVisible == lVar.isVideoPrimaryButtonInListVisible) {
                            if (this.isTopChartsVisible == lVar.isTopChartsVisible) {
                                if (this.isUpdateAllEnabled == lVar.isUpdateAllEnabled) {
                                    return true;
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

    public int hashCode() {
        int i2 = ((this.deviceID * 31) + this.bazaarLatestVersionCode) * 31;
        b bVar = this.bazaarLogo;
        int i3 = 0;
        int hashCode = (i2 + (bVar != null ? bVar.hashCode() : 0)) * 31;
        c cVar = this.forceUpdate;
        int hashCode2 = (hashCode + (cVar != null ? cVar.hashCode() : 0)) * 31;
        j jVar = this.navigationItemsPreferences;
        int hashCode3 = (hashCode2 + (jVar != null ? jVar.hashCode() : 0)) * 31;
        g gVar = this.kidsPreferences;
        if (gVar != null) {
            i3 = gVar.hashCode();
        }
        int i4 = (hashCode3 + i3) * 31;
        boolean z = this.isVideoPrimaryButtonInListVisible;
        if (z) {
            z = true;
        }
        int i5 = (i4 + (z ? 1 : 0)) * 31;
        boolean z2 = this.isTopChartsVisible;
        if (z2) {
            z2 = true;
        }
        int i6 = (i5 + (z2 ? 1 : 0)) * 31;
        boolean z3 = this.isUpdateAllEnabled;
        if (z3) {
            z3 = true;
        }
        return i6 + (z3 ? 1 : 0);
    }

    public String toString() {
        return "RegisterDeviceAndGetInfoResponseDto(deviceID=" + this.deviceID + ", bazaarLatestVersionCode=" + this.bazaarLatestVersionCode + ", bazaarLogo=" + this.bazaarLogo + ", forceUpdate=" + this.forceUpdate + ", navigationItemsPreferences=" + this.navigationItemsPreferences + ", kidsPreferences=" + this.kidsPreferences + ", isVideoPrimaryButtonInListVisible=" + this.isVideoPrimaryButtonInListVisible + ", isTopChartsVisible=" + this.isTopChartsVisible + ", isUpdateAllEnabled=" + this.isUpdateAllEnabled + ")";
    }
}
