package b.D;

import android.view.ViewGroup;
import b.D.E;

/* renamed from: b.D.l  reason: case insensitive filesystem */
/* compiled from: ChangeBounds */
class C0166l extends F {

    /* renamed from: a  reason: collision with root package name */
    public boolean f1178a = false;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1179b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0167m f1180c;

    public C0166l(C0167m mVar, ViewGroup viewGroup) {
        this.f1180c = mVar;
        this.f1179b = viewGroup;
    }

    public void b(E e2) {
        S.a(this.f1179b, false);
    }

    public void c(E e2) {
        if (!this.f1178a) {
            S.a(this.f1179b, false);
        }
        e2.b((E.c) this);
    }

    public void d(E e2) {
        S.a(this.f1179b, true);
    }
}
