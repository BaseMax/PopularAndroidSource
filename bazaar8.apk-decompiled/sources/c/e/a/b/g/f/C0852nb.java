package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;
import c.e.a.b.g.f.C0852nb.a;
import com.google.android.gms.internal.measurement.zzeg;
import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzhp;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: c.e.a.b.g.f.nb  reason: case insensitive filesystem */
public abstract class C0852nb<MessageType extends C0852nb<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends Ca<MessageType, BuilderType> {
    public static Map<Object, C0852nb<?, ?>> zzagp = new ConcurrentHashMap();
    public Ac zzagn = Ac.c();
    public int zzago = -1;

    /* renamed from: c.e.a.b.g.f.nb$a */
    public static abstract class a<MessageType extends C0852nb<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends Da<MessageType, BuilderType> {

        /* renamed from: a  reason: collision with root package name */
        public final MessageType f10468a;

        /* renamed from: b  reason: collision with root package name */
        public MessageType f10469b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f10470c = false;

        public a(MessageType messagetype) {
            this.f10468a = messagetype;
            this.f10469b = (C0852nb) messagetype.a(e.f10475d, (Object) null, (Object) null);
        }

        public final BuilderType a(MessageType messagetype) {
            g();
            a(this.f10469b, messagetype);
            return this;
        }

        public /* synthetic */ Object clone() {
            a aVar = (a) this.f10468a.a(e.f10476e, (Object) null, (Object) null);
            aVar.a((C0852nb) n());
            return aVar;
        }

        public final void g() {
            if (this.f10470c) {
                MessageType messagetype = (C0852nb) this.f10469b.a(e.f10475d, (Object) null, (Object) null);
                a(messagetype, this.f10469b);
                this.f10469b = messagetype;
                this.f10470c = false;
            }
        }

        /* renamed from: h */
        public MessageType n() {
            if (this.f10470c) {
                return this.f10469b;
            }
            this.f10469b.i();
            this.f10470c = true;
            return this.f10469b;
        }

        /* renamed from: i */
        public final MessageType o() {
            MessageType messagetype = (C0852nb) n();
            if (messagetype.b()) {
                return messagetype;
            }
            throw new zzhp(messagetype);
        }

        public static void a(MessageType messagetype, MessageType messagetype2) {
            C0813dc.a().a(messagetype).a(messagetype, messagetype2);
        }

        public final /* synthetic */ Da a(Ca ca) {
            a((C0852nb) ca);
            return this;
        }

        public final /* synthetic */ Sb a() {
            return this.f10468a;
        }
    }

    /* renamed from: c.e.a.b.g.f.nb$b */
    public static class b<T extends C0852nb<T, ?>> extends Ea<T> {

        /* renamed from: b  reason: collision with root package name */
        public final T f10471b;

        public b(T t) {
            this.f10471b = t;
        }

        public final /* synthetic */ Object a(Ua ua, C0808cb cbVar) {
            return C0852nb.a(this.f10471b, ua, cbVar);
        }
    }

    /* renamed from: c.e.a.b.g.f.nb$c */
    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends C0852nb<MessageType, BuilderType> implements Ub {
        public C0824gb<Object> zzagt = C0824gb.g();

        public final C0824gb<Object> q() {
            if (this.zzagt.c()) {
                this.zzagt = (C0824gb) this.zzagt.clone();
            }
            return this.zzagt;
        }
    }

    /* renamed from: c.e.a.b.g.f.nb$d */
    public static class d<ContainingType extends Sb, Type> extends C0800ab<ContainingType, Type> {
    }

    /* 'enum' modifier removed */
    /* renamed from: c.e.a.b.g.f.nb$e */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public static final int f10472a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f10473b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f10474c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f10475d = 4;

        /* renamed from: e  reason: collision with root package name */
        public static final int f10476e = 5;

        /* renamed from: f  reason: collision with root package name */
        public static final int f10477f = 6;

        /* renamed from: g  reason: collision with root package name */
        public static final int f10478g = 7;

        /* renamed from: h  reason: collision with root package name */
        public static final /* synthetic */ int[] f10479h = {f10472a, f10473b, f10474c, f10475d, f10476e, f10477f, f10478g};

        /* renamed from: i  reason: collision with root package name */
        public static final int f10480i = 1;

        /* renamed from: j  reason: collision with root package name */
        public static final int f10481j = 2;

        /* renamed from: k  reason: collision with root package name */
        public static final /* synthetic */ int[] f10482k = {f10480i, f10481j};

        /* renamed from: l  reason: collision with root package name */
        public static final int f10483l = 1;
        public static final int m = 2;
        public static final /* synthetic */ int[] n = {f10483l, m};

        public static int[] a() {
            return (int[]) f10479h.clone();
        }
    }

    public static C0879ub m() {
        return Hb.b();
    }

    public static <E> C0883vb<E> p() {
        return C0817ec.b();
    }

    public abstract Object a(int i2, Object obj, Object obj2);

    public final void a(int i2) {
        this.zzago = i2;
    }

    public final boolean b() {
        return a(this, Boolean.TRUE.booleanValue());
    }

    public final /* synthetic */ Tb c() {
        return (a) a(e.f10476e, (Object) null, (Object) null);
    }

    public final int d() {
        if (this.zzago == -1) {
            this.zzago = C0813dc.a().a(this).b(this);
        }
        return this.zzago;
    }

    public final /* synthetic */ Tb e() {
        a aVar = (a) a(e.f10476e, (Object) null, (Object) null);
        aVar.a(this);
        return aVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((C0852nb) a(e.f10477f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        return C0813dc.a().a(this).b(this, (C0852nb) obj);
    }

    public final int h() {
        return this.zzago;
    }

    public int hashCode() {
        int i2 = this.zzabm;
        if (i2 != 0) {
            return i2;
        }
        this.zzabm = C0813dc.a().a(this).d(this);
        return this.zzabm;
    }

    public final void i() {
        C0813dc.a().a(this).c(this);
    }

    public final <MessageType extends C0852nb<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType j() {
        return (a) a(e.f10476e, (Object) null, (Object) null);
    }

    public final BuilderType k() {
        BuilderType buildertype = (a) a(e.f10476e, (Object) null, (Object) null);
        buildertype.a(this);
        return buildertype;
    }

    public String toString() {
        return Vb.a(this, super.toString());
    }

    public final void a(zzeg zzeg) {
        C0813dc.a().a(getClass()).a(this, (Oc) Za.a(zzeg));
    }

    public static <T extends C0852nb<?, ?>> T a(Class<T> cls) {
        T t = (C0852nb) zzagp.get(cls);
        if (t == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (C0852nb) zzagp.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (t == null) {
            t = (C0852nb) ((C0852nb) Fc.a(cls)).a(e.f10477f, (Object) null, (Object) null);
            if (t != null) {
                zzagp.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    public static <T extends C0852nb<?, ?>> void a(Class<T> cls, T t) {
        zzagp.put(cls, t);
    }

    public static Object a(Sb sb, String str, Object[] objArr) {
        return new C0821fc(sb, str, objArr);
    }

    public static Object a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    public static final <T extends C0852nb<T, ?>> boolean a(T t, boolean z) {
        byte byteValue = ((Byte) t.a(e.f10472a, (Object) null, (Object) null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean a2 = C0813dc.a().a(t).a(t);
        if (z) {
            t.a(e.f10473b, (Object) a2 ? t : null, (Object) null);
        }
        return a2;
    }

    public static C0879ub a(C0879ub ubVar) {
        int size = ubVar.size();
        return ubVar.b(size == 0 ? 10 : size << 1);
    }

    public static <E> C0883vb<E> a(C0883vb<E> vbVar) {
        int size = vbVar.size();
        return vbVar.c(size == 0 ? 10 : size << 1);
    }

    public static <T extends C0852nb<T, ?>> T a(T t, Ua ua, C0808cb cbVar) {
        T t2 = (C0852nb) t.a(e.f10475d, (Object) null, (Object) null);
        try {
            C0813dc.a().a(t2).a(t2, Xa.a(ua), cbVar);
            t2.i();
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzfh) {
                throw ((zzfh) e2.getCause());
            }
            throw new zzfh(e2.getMessage()).a(t2);
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof zzfh) {
                throw ((zzfh) e3.getCause());
            }
            throw e3;
        }
    }

    public static <T extends C0852nb<T, ?>> T a(T t, byte[] bArr, int i2, int i3, C0808cb cbVar) {
        T t2 = (C0852nb) t.a(e.f10475d, (Object) null, (Object) null);
        try {
            C0813dc.a().a(t2).a(t2, bArr, 0, i3, new Ia(cbVar));
            t2.i();
            if (t2.zzabm == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzfh) {
                throw ((zzfh) e2.getCause());
            }
            throw new zzfh(e2.getMessage()).a(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzfh.a().a(t2);
        }
    }

    public static <T extends C0852nb<T, ?>> T a(T t, byte[] bArr, C0808cb cbVar) {
        T a2 = a(t, bArr, 0, bArr.length, cbVar);
        if (a2 == null || a2.b()) {
            return a2;
        }
        throw new zzfh(new zzhp(a2).getMessage()).a(a2);
    }

    public final /* synthetic */ Sb a() {
        return (C0852nb) a(e.f10477f, (Object) null, (Object) null);
    }
}
