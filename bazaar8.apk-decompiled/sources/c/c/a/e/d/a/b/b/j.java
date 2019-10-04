package c.c.a.e.d.a.b.b;

import c.e.d.a.c;

/* compiled from: RegisterDeviceAndGetInfoResponseDto.kt */
public final class j {
    @c("appHome")
    public final i appHomePreferences;
    @c("categories")
    public final i categoriesPreferences;
    @c("gameHome")
    public final i gameHomePreferences;
    @c("home")
    public final i homePreferences;
    @c("myBazaar")
    public final i myBazaarPreferences;
    @c("search")
    public final i searchPreferences;
    @c("videoHome")
    public final i videoHomePreferences;

    public final i a() {
        return this.appHomePreferences;
    }

    public final i b() {
        return this.categoriesPreferences;
    }

    public final i c() {
        return this.gameHomePreferences;
    }

    public final i d() {
        return this.homePreferences;
    }

    public final i e() {
        return this.myBazaarPreferences;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.videoHomePreferences, (java.lang.Object) r3.videoHomePreferences) != false) goto L_0x0051;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0051
            boolean r0 = r3 instanceof c.c.a.e.d.a.b.b.j
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.a.b.b.j r3 = (c.c.a.e.d.a.b.b.j) r3
            c.c.a.e.d.a.b.b.i r0 = r2.appHomePreferences
            c.c.a.e.d.a.b.b.i r1 = r3.appHomePreferences
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.a.b.b.i r0 = r2.categoriesPreferences
            c.c.a.e.d.a.b.b.i r1 = r3.categoriesPreferences
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.a.b.b.i r0 = r2.gameHomePreferences
            c.c.a.e.d.a.b.b.i r1 = r3.gameHomePreferences
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.a.b.b.i r0 = r2.homePreferences
            c.c.a.e.d.a.b.b.i r1 = r3.homePreferences
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.a.b.b.i r0 = r2.myBazaarPreferences
            c.c.a.e.d.a.b.b.i r1 = r3.myBazaarPreferences
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.a.b.b.i r0 = r2.searchPreferences
            c.c.a.e.d.a.b.b.i r1 = r3.searchPreferences
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x004f
            c.c.a.e.d.a.b.b.i r0 = r2.videoHomePreferences
            c.c.a.e.d.a.b.b.i r3 = r3.videoHomePreferences
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x004f
            goto L_0x0051
        L_0x004f:
            r3 = 0
            return r3
        L_0x0051:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.a.b.b.j.equals(java.lang.Object):boolean");
    }

    public final i f() {
        return this.searchPreferences;
    }

    public final i g() {
        return this.videoHomePreferences;
    }

    public int hashCode() {
        i iVar = this.appHomePreferences;
        int i2 = 0;
        int hashCode = (iVar != null ? iVar.hashCode() : 0) * 31;
        i iVar2 = this.categoriesPreferences;
        int hashCode2 = (hashCode + (iVar2 != null ? iVar2.hashCode() : 0)) * 31;
        i iVar3 = this.gameHomePreferences;
        int hashCode3 = (hashCode2 + (iVar3 != null ? iVar3.hashCode() : 0)) * 31;
        i iVar4 = this.homePreferences;
        int hashCode4 = (hashCode3 + (iVar4 != null ? iVar4.hashCode() : 0)) * 31;
        i iVar5 = this.myBazaarPreferences;
        int hashCode5 = (hashCode4 + (iVar5 != null ? iVar5.hashCode() : 0)) * 31;
        i iVar6 = this.searchPreferences;
        int hashCode6 = (hashCode5 + (iVar6 != null ? iVar6.hashCode() : 0)) * 31;
        i iVar7 = this.videoHomePreferences;
        if (iVar7 != null) {
            i2 = iVar7.hashCode();
        }
        return hashCode6 + i2;
    }

    public String toString() {
        return "NavigationItemsPreferencesDto(appHomePreferences=" + this.appHomePreferences + ", categoriesPreferences=" + this.categoriesPreferences + ", gameHomePreferences=" + this.gameHomePreferences + ", homePreferences=" + this.homePreferences + ", myBazaarPreferences=" + this.myBazaarPreferences + ", searchPreferences=" + this.searchPreferences + ", videoHomePreferences=" + this.videoHomePreferences + ")";
    }
}
