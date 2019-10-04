package c.e.a.b.g.f;

import android.database.ContentObserver;
import android.os.Handler;

/* renamed from: c.e.a.b.g.f.ja  reason: case insensitive filesystem */
public final class C0835ja extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0827ha f10433a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0835ja(C0827ha haVar, Handler handler) {
        super(null);
        this.f10433a = haVar;
    }

    public final void onChange(boolean z) {
        this.f10433a.b();
    }
}
