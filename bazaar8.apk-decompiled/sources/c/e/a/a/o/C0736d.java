package c.e.a.a.o;

import java.util.concurrent.ThreadFactory;

/* renamed from: c.e.a.a.o.d  reason: case insensitive filesystem */
/* compiled from: lambda */
public final /* synthetic */ class C0736d implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f9581a;

    public /* synthetic */ C0736d(String str) {
        this.f9581a = str;
    }

    public final Thread newThread(Runnable runnable) {
        return I.a(this.f9581a, runnable);
    }
}
