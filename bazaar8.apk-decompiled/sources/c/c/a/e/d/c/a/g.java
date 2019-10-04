package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.AppDetailsInline;
import h.f.b.j;

/* compiled from: AppDetailResponseDto.kt */
public final class g {
    @c("inlineDemo")
    public final l inlineDemo;
    @c("kashanID")
    public final String kashanID;
    @c("minInlinePlatformVersion")
    public final int minInlinePlatformVersion;

    public final AppDetailsInline a() {
        String str = this.kashanID;
        int i2 = this.minInlinePlatformVersion;
        l lVar = this.inlineDemo;
        return new AppDetailsInline(str, i2, lVar != null ? lVar.a() : null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                if (j.a((Object) this.kashanID, (Object) gVar.kashanID)) {
                    if (!(this.minInlinePlatformVersion == gVar.minInlinePlatformVersion) || !j.a((Object) this.inlineDemo, (Object) gVar.inlineDemo)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.kashanID;
        int i2 = 0;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + this.minInlinePlatformVersion) * 31;
        l lVar = this.inlineDemo;
        if (lVar != null) {
            i2 = lVar.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "AppDetailsInlineDto(kashanID=" + this.kashanID + ", minInlinePlatformVersion=" + this.minInlinePlatformVersion + ", inlineDemo=" + this.inlineDemo + ")";
    }
}
