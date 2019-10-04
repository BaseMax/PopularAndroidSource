package c.c.a.n.l;

import android.content.Context;
import c.c.a.e.d.a.a;
import c.c.a.e.d.j.c;
import c.c.a.n.c.c.t;
import c.c.a.n.c.c.u;
import com.farsitel.bazaar.data.entity.FehrestTabPage;
import com.farsitel.bazaar.ui.fehrest.FehrestParams;
import h.f.b.j;

/* compiled from: FehrestViewModel.kt */
public class i extends t<FehrestParams> {
    public final boolean x;
    public final c y;
    public final a z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public i(Context context, u uVar, c cVar, a aVar) {
        super(context, uVar);
        j.b(context, "context");
        j.b(uVar, "env");
        j.b(cVar, "fehrestRepository");
        j.b(aVar, "accountRepository");
        this.y = cVar;
        this.z = aVar;
    }

    public boolean o() {
        return this.x;
    }

    public final String q() {
        return this.z.c();
    }

    public final String r() {
        return this.z.l();
    }

    public final boolean s() {
        return this.z.b() > 800307;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (r0.isEmpty() == true) goto L_0x002b;
     */
    /* renamed from: a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void d(com.farsitel.bazaar.ui.fehrest.FehrestParams r7) {
        /*
            r6 = this;
            java.lang.String r0 = "params"
            h.f.b.j.b(r7, r0)
            com.farsitel.bazaar.core.model.Resource r0 = r6.e()
            r1 = 0
            if (r0 == 0) goto L_0x0013
            java.lang.Object r0 = r0.a()
            java.util.List r0 = (java.util.List) r0
            goto L_0x0014
        L_0x0013:
            r0 = r1
        L_0x0014:
            r2 = 1
            if (r0 == 0) goto L_0x002b
            com.farsitel.bazaar.core.model.Resource r0 = r6.e()
            if (r0 == 0) goto L_0x003e
            java.lang.Object r0 = r0.a()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x003e
            boolean r0 = r0.isEmpty()
            if (r0 != r2) goto L_0x003e
        L_0x002b:
            java.util.List r0 = r7.a()
            boolean r0 = r0.isEmpty()
            r0 = r0 ^ r2
            if (r0 == 0) goto L_0x003e
            java.util.List r7 = r7.a()
            r6.a(r7)
            goto L_0x004f
        L_0x003e:
            r2 = 0
            r3 = 0
            com.farsitel.bazaar.ui.fehrest.FehrestViewModel$makeData$1 r4 = new com.farsitel.bazaar.ui.fehrest.FehrestViewModel$makeData$1
            r4.<init>(r6, r7, r1)
            r7 = 3
            r5 = 0
            r0 = r6
            r1 = r2
            r2 = r3
            r3 = r4
            r4 = r7
            i.a.C1125ra unused = i.a.C1103g.b(r0, r1, r2, r3, r4, r5)
        L_0x004f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.l.i.d(com.farsitel.bazaar.ui.fehrest.FehrestParams):void");
    }

    public void a(FehrestTabPage fehrestTabPage) {
        j.b(fehrestTabPage, "page");
        a(fehrestTabPage.getPages().get(0));
    }
}
