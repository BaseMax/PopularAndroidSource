package androidx.activity;

import androidx.lifecycle.Lifecycle;
import b.a.C0186a;
import b.a.d;
import b.r.C0303i;
import b.r.k;
import java.util.ArrayDeque;
import java.util.Iterator;

public final class OnBackPressedDispatcher {

    /* renamed from: a  reason: collision with root package name */
    public final Runnable f220a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayDeque<d> f221b = new ArrayDeque<>();

    private class LifecycleOnBackPressedCancellable implements C0303i, C0186a {

        /* renamed from: a  reason: collision with root package name */
        public final Lifecycle f222a;

        /* renamed from: b  reason: collision with root package name */
        public final d f223b;

        /* renamed from: c  reason: collision with root package name */
        public C0186a f224c;

        public LifecycleOnBackPressedCancellable(Lifecycle lifecycle, d dVar) {
            this.f222a = lifecycle;
            this.f223b = dVar;
            lifecycle.a(this);
        }

        public void a(k kVar, Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_START) {
                this.f224c = OnBackPressedDispatcher.this.b(this.f223b);
            } else if (event == Lifecycle.Event.ON_STOP) {
                C0186a aVar = this.f224c;
                if (aVar != null) {
                    aVar.cancel();
                }
            } else if (event == Lifecycle.Event.ON_DESTROY) {
                cancel();
            }
        }

        public void cancel() {
            this.f222a.b(this);
            this.f223b.b(this);
            C0186a aVar = this.f224c;
            if (aVar != null) {
                aVar.cancel();
                this.f224c = null;
            }
        }
    }

    private class a implements C0186a {

        /* renamed from: a  reason: collision with root package name */
        public final d f226a;

        public a(d dVar) {
            this.f226a = dVar;
        }

        public void cancel() {
            OnBackPressedDispatcher.this.f221b.remove(this.f226a);
            this.f226a.b(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f220a = runnable;
    }

    public void a(d dVar) {
        b(dVar);
    }

    public C0186a b(d dVar) {
        this.f221b.add(dVar);
        a aVar = new a(dVar);
        dVar.a((C0186a) aVar);
        return aVar;
    }

    public void a(k kVar, d dVar) {
        Lifecycle b2 = kVar.b();
        if (b2.a() != Lifecycle.State.DESTROYED) {
            dVar.a((C0186a) new LifecycleOnBackPressedCancellable(b2, dVar));
        }
    }

    public void a() {
        Iterator<d> descendingIterator = this.f221b.descendingIterator();
        while (descendingIterator.hasNext()) {
            d next = descendingIterator.next();
            if (next.b()) {
                next.a();
                return;
            }
        }
        Runnable runnable = this.f220a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
