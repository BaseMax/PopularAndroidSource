package kotlin.jvm.internal;

import h.i.b;
import h.i.e;
import java.io.Serializable;
import kotlin.jvm.KotlinReflectionNotSupportedError;

public abstract class CallableReference implements b, Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f15788a = NoReceiver.f15790a;

    /* renamed from: b  reason: collision with root package name */
    public transient b f15789b;
    public final Object receiver;

    private static class NoReceiver implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        public static final NoReceiver f15790a = new NoReceiver();

        private Object readResolve() {
            return f15790a;
        }
    }

    public CallableReference() {
        this(f15788a);
    }

    public b b() {
        b bVar = this.f15789b;
        if (bVar != null) {
            return bVar;
        }
        b c2 = c();
        this.f15789b = c2;
        return c2;
    }

    public abstract b c();

    public Object d() {
        return this.receiver;
    }

    public e e() {
        throw new AbstractMethodError();
    }

    public b f() {
        b b2 = b();
        if (b2 != this) {
            return b2;
        }
        throw new KotlinReflectionNotSupportedError();
    }

    public String g() {
        throw new AbstractMethodError();
    }

    public String getName() {
        throw new AbstractMethodError();
    }

    public CallableReference(Object obj) {
        this.receiver = obj;
    }
}
