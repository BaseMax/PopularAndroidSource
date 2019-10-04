package com.farsitel.bazaar.common.model.cinema;

import h.f.b.j;
import java.io.Serializable;

/* compiled from: VideoDetail.kt */
public final class PersonModel implements Serializable {
    public final boolean isLinkable;
    public final String name;
    public final String referrer;
    public final String slug;

    public PersonModel(String str, String str2, String str3) {
        j.b(str3, "referrer");
        this.name = str;
        this.slug = str2;
        this.referrer = str3;
        String str4 = this.slug;
        this.isLinkable = !(str4 == null || str4.length() == 0);
    }

    public static /* synthetic */ PersonModel copy$default(PersonModel personModel, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = personModel.name;
        }
        if ((i2 & 2) != 0) {
            str2 = personModel.slug;
        }
        if ((i2 & 4) != 0) {
            str3 = personModel.referrer;
        }
        return personModel.copy(str, str2, str3);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.slug;
    }

    public final String component3() {
        return this.referrer;
    }

    public final PersonModel copy(String str, String str2, String str3) {
        j.b(str3, "referrer");
        return new PersonModel(str, str2, str3);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.PersonModel
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.common.model.cinema.PersonModel r3 = (com.farsitel.bazaar.common.model.cinema.PersonModel) r3
            java.lang.String r0 = r2.name
            java.lang.String r1 = r3.name
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.slug
            java.lang.String r1 = r3.slug
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.PersonModel.equals(java.lang.Object):boolean");
    }

    public final String getName() {
        return this.name;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getSlug() {
        return this.slug;
    }

    public int hashCode() {
        String str = this.name;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.slug;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.referrer;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public final boolean isLinkable() {
        return this.isLinkable;
    }

    public String toString() {
        return "PersonModel(name=" + this.name + ", slug=" + this.slug + ", referrer=" + this.referrer + ")";
    }
}
