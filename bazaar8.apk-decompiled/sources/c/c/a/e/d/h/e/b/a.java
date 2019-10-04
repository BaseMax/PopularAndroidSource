package c.c.a.e.d.h.e.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.cinema.CrewItem;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResponseDto.kt */
public final class a {
    @c("persons")
    public final List<e> persons;
    @c("title")
    public final String title;
    @c("type")
    public final Integer type;

    public final CrewItem a(String str) {
        ArrayList arrayList;
        j.b(str, "referrer");
        String str2 = this.title;
        List<e> list = this.persons;
        if (list != null) {
            arrayList = new ArrayList(m.a(list, 10));
            for (e a2 : list) {
                arrayList.add(a2.a(str));
            }
        } else {
            arrayList = null;
        }
        return new CrewItem(str2, arrayList);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.persons, (java.lang.Object) r3.persons) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.e.d.h.e.b.a
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.h.e.b.a r3 = (c.c.a.e.d.h.e.b.a) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.Integer r0 = r2.type
            java.lang.Integer r1 = r3.type
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.util.List<c.c.a.e.d.h.e.b.e> r0 = r2.persons
            java.util.List<c.c.a.e.d.h.e.b.e> r3 = r3.persons
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.b.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Integer num = this.type;
        int hashCode2 = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        List<e> list = this.persons;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "CastDto(title=" + this.title + ", type=" + this.type + ", persons=" + this.persons + ")";
    }
}
