package c.c.a.n.w;

import android.content.Context;
import c.c.a.e.d.s.h;
import c.c.a.n.c.c.t;
import c.c.a.n.c.c.u;
import com.farsitel.bazaar.data.entity.SearchItems;
import h.a.l;
import h.f.b.j;
import h.k.m;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;

/* compiled from: SearchViewModel.kt */
public final class q extends t<l> {
    public CharSequence A;
    public final h B;
    public final boolean x;
    public String y;
    public CharSequence z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public q(Context context, h hVar, u uVar) {
        super(context, uVar);
        j.b(context, "context");
        j.b(hVar, "searchRepository");
        j.b(uVar, "env");
        this.B = hVar;
    }

    public final boolean f(String str) {
        j.b(str, "s");
        char[] charArray = str.toCharArray();
        j.a((Object) charArray, "(this as java.lang.String).toCharArray()");
        ArrayList arrayList = new ArrayList();
        int length = charArray.length;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= length) {
                break;
            }
            char c2 = charArray[i2];
            if (!Character.isLetter(c2) && !Character.isDigit(c2)) {
                z2 = false;
            }
            if (z2) {
                arrayList.add(Character.valueOf(c2));
            }
            i2++;
        }
        if (arrayList.size() >= 2) {
            return true;
        }
        return false;
    }

    public boolean o() {
        return this.x;
    }

    public final CharSequence q() {
        return this.z;
    }

    public final boolean r() {
        return j.a((Object) String.valueOf(this.z), (Object) String.valueOf(this.A));
    }

    public final void b(CharSequence charSequence) {
        this.A = charSequence;
    }

    public final void a(CharSequence charSequence) {
        this.z = charSequence;
    }

    /* renamed from: a */
    public void d(l lVar) {
        j.b(lVar, "params");
        String a2 = lVar.a();
        if (a2 == null || m.a(a2)) {
            a(l.a());
        } else {
            C1125ra unused = C1103g.b(this, null, null, new SearchViewModel$makeData$1(this, lVar, null), 3, null);
        }
    }

    public final void a(SearchItems searchItems) {
        a(searchItems.getPage());
        this.y = searchItems.getSearchToken();
    }
}
