package i.a.a;

import android.os.Handler;
import android.os.Looper;
import h.c.e;
import h.f.b.j;
import i.a.P;

/* compiled from: HandlerDispatcher.kt */
public final class a extends b implements P {
    public volatile a _immediate;

    /* renamed from: a  reason: collision with root package name */
    public final a f14670a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f14671b;

    /* renamed from: c  reason: collision with root package name */
    public final String f14672c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f14673d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(Handler handler, String str, boolean z) {
        super(null);
        a aVar = null;
        this.f14671b = handler;
        this.f14672c = str;
        this.f14673d = z;
        this._immediate = this.f14673d ? this : aVar;
        a aVar2 = this._immediate;
        if (aVar2 == null) {
            aVar2 = new a(this.f14671b, this.f14672c, true);
            this._immediate = aVar2;
        }
        this.f14670a = aVar2;
    }

    public void a(e eVar, Runnable runnable) {
        j.b(eVar, "context");
        j.b(runnable, "block");
        this.f14671b.post(runnable);
    }

    public boolean b(e eVar) {
        j.b(eVar, "context");
        return !this.f14673d || (j.a((Object) Looper.myLooper(), (Object) this.f14671b.getLooper()) ^ true);
    }

    public boolean equals(Object obj) {
        return (obj instanceof a) && ((a) obj).f14671b == this.f14671b;
    }

    public int hashCode() {
        return System.identityHashCode(this.f14671b);
    }

    public String toString() {
        String str = this.f14672c;
        if (str == null) {
            String handler = this.f14671b.toString();
            j.a((Object) handler, "handler.toString()");
            return handler;
        } else if (!this.f14673d) {
            return str;
        } else {
            return this.f14672c + " [immediate]";
        }
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public a(Handler handler, String str) {
        this(handler, str, false);
        j.b(handler, "handler");
    }
}
