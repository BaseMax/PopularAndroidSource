package ir.cafebazaar.inline.ux.flow.pull;

import android.os.Handler;
import android.os.Looper;
import e.a.a.a.a.b.C1046a;
import f.a.a.e.g;
import f.a.a.g.d.a.b;

public class Puller implements f.a.a.d.a {

    /* renamed from: a  reason: collision with root package name */
    public final int f15068a = 3;

    /* renamed from: b  reason: collision with root package name */
    public int f15069b;

    /* renamed from: c  reason: collision with root package name */
    public String f15070c = null;

    /* renamed from: d  reason: collision with root package name */
    public Frequency f15071d = Frequency.medium;

    /* renamed from: e  reason: collision with root package name */
    public a f15072e = ContextAgnosticPolicy.once.f();

    /* renamed from: f  reason: collision with root package name */
    public boolean f15073f = false;

    public enum ContextAgnosticPolicy {
        continuous(new d()),
        once(new e());
        
        public a corePolicy;

        /* access modifiers changed from: public */
        ContextAgnosticPolicy(a aVar) {
            this.corePolicy = aVar;
        }

        public a f() {
            return this.corePolicy;
        }
    }

    public enum Frequency {
        rapid(2000),
        medium(C1046a.DEFAULT_TIMEOUT),
        slow(30000);
        
        public int milliseconds;

        /* access modifiers changed from: public */
        Frequency(int i2) {
            this.milliseconds = i2;
        }

        public int f() {
            return this.milliseconds;
        }
    }

    public interface a {
        boolean a(b bVar);
    }

    public void a(String str) {
        this.f15070c = str;
    }

    public void a(Frequency frequency) {
        this.f15071d = frequency;
    }

    public void a(a aVar) {
        this.f15072e = aVar;
    }

    public void a(ContextAgnosticPolicy contextAgnosticPolicy) {
        a(contextAgnosticPolicy.f());
    }

    public void a(g gVar) {
        this.f15073f = true;
        a(new Handler(Looper.getMainLooper()), gVar);
    }

    public void a() {
        this.f15073f = false;
    }

    public final void a(Handler handler, g gVar) {
        a(handler, gVar, null);
    }

    public final void a(Handler handler, g gVar, String str) {
        if (this.f15073f) {
            handler.postDelayed(new c(this, str, gVar, handler), (long) this.f15071d.f());
        }
    }
}
