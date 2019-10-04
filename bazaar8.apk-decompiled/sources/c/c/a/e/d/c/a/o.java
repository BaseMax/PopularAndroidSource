package c.c.a.e.d.c.a;

import c.e.d.a.c;
import c.e.d.p;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import com.farsitel.bazaar.data.dto.responsedto.PageRowDto;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AppDetailResponseDto.kt */
public final class o {
    @c("jsonReference")
    public final p jsonReference;
    @c("commonRows")
    public final List<PageRowDto> pageRow;
    @c("reference")
    public final String reference;
    @c("type")
    public final String type;

    public final List<PageTypeItem> a() {
        ArrayList arrayList = new ArrayList();
        List<PageRowDto> list = this.pageRow;
        if (list != null) {
            for (PageRowDto pageRowDto : list) {
                if (pageRowDto.notEmptyAtLeastOneField()) {
                    arrayList.addAll(pageRowDto.toPageTypeItem());
                }
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.pageRow, (java.lang.Object) r3.pageRow) != false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0033
            boolean r0 = r3 instanceof c.c.a.e.d.c.a.o
            if (r0 == 0) goto L_0x0031
            c.c.a.e.d.c.a.o r3 = (c.c.a.e.d.c.a.o) r3
            java.lang.String r0 = r2.reference
            java.lang.String r1 = r3.reference
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            c.e.d.p r0 = r2.jsonReference
            c.e.d.p r1 = r3.jsonReference
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.type
            java.lang.String r1 = r3.type
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.PageRowDto> r0 = r2.pageRow
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.PageRowDto> r3 = r3.pageRow
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0031
            goto L_0x0033
        L_0x0031:
            r3 = 0
            return r3
        L_0x0033:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.c.a.o.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.reference;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        p pVar = this.jsonReference;
        int hashCode2 = (hashCode + (pVar != null ? pVar.hashCode() : 0)) * 31;
        String str2 = this.type;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        List<PageRowDto> list = this.pageRow;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode3 + i2;
    }

    public String toString() {
        return "RelatedPageDto(reference=" + this.reference + ", jsonReference=" + this.jsonReference + ", type=" + this.type + ", pageRow=" + this.pageRow + ")";
    }
}
