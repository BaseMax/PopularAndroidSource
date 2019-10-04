package b.i.h;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: SelfDestructiveThread */
class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f2694a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Callable f2695b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ReentrantLock f2696c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f2697d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Condition f2698e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ k f2699f;

    public j(k kVar, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
        this.f2699f = kVar;
        this.f2694a = atomicReference;
        this.f2695b = callable;
        this.f2696c = reentrantLock;
        this.f2697d = atomicBoolean;
        this.f2698e = condition;
    }

    public void run() {
        try {
            this.f2694a.set(this.f2695b.call());
        } catch (Exception unused) {
        }
        this.f2696c.lock();
        try {
            this.f2697d.set(false);
            this.f2698e.signal();
        } finally {
            this.f2696c.unlock();
        }
    }
}
