package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.AppDetailsComment;
import h.a.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AppDetailResponseDto.kt */
public final class f {
    @c("defaultSortTypeChoice")
    public final String defaultSortTypeChoice;
    @c("sortTypeChoices")
    public final List<r> sortTypeChoices;

    public final AppDetailsComment a() {
        ArrayList arrayList;
        List<r> list = this.sortTypeChoices;
        if (list != null) {
            arrayList = new ArrayList(m.a(list, 10));
            for (r a2 : list) {
                arrayList.add(a2.a());
            }
        } else {
            arrayList = null;
        }
        return new AppDetailsComment(arrayList, this.defaultSortTypeChoice);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.defaultSortTypeChoice, (java.lang.Object) r3.defaultSortTypeChoice) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.c.a.f
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.c.a.f r3 = (c.c.a.e.d.c.a.f) r3
            java.util.List<c.c.a.e.d.c.a.r> r0 = r2.sortTypeChoices
            java.util.List<c.c.a.e.d.c.a.r> r1 = r3.sortTypeChoices
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.defaultSortTypeChoice
            java.lang.String r3 = r3.defaultSortTypeChoice
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.c.a.f.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        List<r> list = this.sortTypeChoices;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        String str = this.defaultSortTypeChoice;
        if (str != null) {
            i2 = str.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "AppDetailsCommentDto(sortTypeChoices=" + this.sortTypeChoices + ", defaultSortTypeChoice=" + this.defaultSortTypeChoice + ")";
    }
}
