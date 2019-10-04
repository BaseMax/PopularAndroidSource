package c.e.a.b.h.b;

import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: c.e.a.b.h.b.ia  reason: case insensitive filesystem */
public final class C0926ia implements Callable<List<bc>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f10923a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f10924b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f10925c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0905ba f10926d;

    public C0926ia(C0905ba baVar, String str, String str2, String str3) {
        this.f10926d = baVar;
        this.f10923a = str;
        this.f10924b = str2;
        this.f10925c = str3;
    }

    public final /* synthetic */ Object call() {
        this.f10926d.f10827a.y();
        return this.f10926d.f10827a.l().a(this.f10923a, this.f10924b, this.f10925c);
    }
}
