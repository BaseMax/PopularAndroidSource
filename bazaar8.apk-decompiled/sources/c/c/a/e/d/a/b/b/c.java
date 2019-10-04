package c.c.a.e.d.a.b.b;

import h.f.b.j;

/* compiled from: RegisterDeviceAndGetInfoResponseDto.kt */
public final class c {
    @c.e.d.a.c("link")
    public final String apkLink;
    @c.e.d.a.c("isActive")
    public final boolean isActive;
    @c.e.d.a.c("isDirectLink")
    public final boolean isDirectLink;

    public final String a() {
        return this.apkLink;
    }

    public final boolean b() {
        return this.isActive;
    }

    public final boolean c() {
        return this.isDirectLink;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (this.isActive == cVar.isActive) {
                    if (!(this.isDirectLink == cVar.isDirectLink) || !j.a((Object) this.apkLink, (Object) cVar.apkLink)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.isActive;
        boolean z2 = true;
        if (z) {
            z = true;
        }
        int i2 = (z ? 1 : 0) * true;
        boolean z3 = this.isDirectLink;
        if (!z3) {
            z2 = z3;
        }
        int i3 = (i2 + (z2 ? 1 : 0)) * 31;
        String str = this.apkLink;
        return i3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "ForceUpdateDto(isActive=" + this.isActive + ", isDirectLink=" + this.isDirectLink + ", apkLink=" + this.apkLink + ")";
    }
}
