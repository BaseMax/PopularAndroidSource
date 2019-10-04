package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.br;
import com.yandex.metrica.impl.bv;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

public class ls {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final nu<String, lx> f6403a = new nu<>();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final HashMap<String, mb> f6404b = new HashMap<>();
    private final lz c = new lz() {
        public void a(String str, ma maVar) {
            for (lx a2 : a(str)) {
                a2.a(maVar);
            }
        }

        public void a(String str, lu luVar) {
            for (lx a2 : a(str)) {
                a2.a(luVar);
            }
        }

        public List<lx> a(String str) {
            synchronized (ls.this.f6404b) {
                Collection a2 = ls.this.f6403a.a(str);
                if (a2 == null) {
                    ArrayList arrayList = new ArrayList();
                    return arrayList;
                }
                ArrayList arrayList2 = new ArrayList(a2);
                return arrayList2;
            }
        }
    };

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final ls f6406a = new ls();
    }

    public static final ls a() {
        return a.f6406a;
    }

    public br a(ah ahVar, t tVar) {
        return b(ahVar, tVar).a();
    }

    /* access modifiers changed from: package-private */
    public mb b(ah ahVar, t tVar) {
        mb mbVar = this.f6404b.get(ahVar.b().b());
        boolean z = true;
        if (mbVar == null) {
            synchronized (this.f6404b) {
                mbVar = this.f6404b.get(ahVar.b().b());
                if (mbVar == null) {
                    mb c2 = c(ahVar, tVar);
                    this.f6404b.put(ahVar.b().b(), c2);
                    mbVar = c2;
                    z = false;
                }
            }
        }
        if (z) {
            mbVar.a(tVar);
        }
        return mbVar;
    }

    /* access modifiers changed from: package-private */
    public mb c(ah ahVar, t tVar) {
        return ahVar.b().c().a(ahVar.c(), ahVar.b().b(), tVar, this.c);
    }

    public mb d(ah<? extends bb> ahVar, t tVar) {
        mb b2;
        synchronized (this.f6404b) {
            this.f6403a.a(ahVar.b().b(), ahVar.e());
            b2 = b(ahVar, tVar);
        }
        return b2;
    }

    public void a(ah<? extends bb> ahVar) {
        Collection<lx> b2;
        synchronized (this.f6404b) {
            b2 = this.f6403a.b(ahVar.b().b(), ahVar.e());
        }
        if (bv.a((Collection) b2)) {
            this.f6404b.remove(ahVar.b().b());
        }
    }
}
