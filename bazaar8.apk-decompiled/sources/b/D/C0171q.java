package b.D;

import android.view.View;
import b.D.E;
import java.util.ArrayList;

/* renamed from: b.D.q  reason: case insensitive filesystem */
/* compiled from: FragmentTransitionSupport */
class C0171q implements E.c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f1194a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f1195b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0173t f1196c;

    public C0171q(C0173t tVar, View view, ArrayList arrayList) {
        this.f1196c = tVar;
        this.f1194a = view;
        this.f1195b = arrayList;
    }

    public void a(E e2) {
    }

    public void b(E e2) {
    }

    public void c(E e2) {
        e2.b((E.c) this);
        this.f1194a.setVisibility(8);
        int size = this.f1195b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((View) this.f1195b.get(i2)).setVisibility(0);
        }
    }

    public void d(E e2) {
    }
}
