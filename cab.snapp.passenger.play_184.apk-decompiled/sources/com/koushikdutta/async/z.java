package com.koushikdutta.async;

import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedList;

public final class z implements com.koushikdutta.async.a.d {
    static Hashtable<Class, Method> d = new Hashtable<>();

    /* renamed from: a  reason: collision with root package name */
    n f4857a;

    /* renamed from: b  reason: collision with root package name */
    ByteOrder f4858b = ByteOrder.BIG_ENDIAN;
    l c = new l();
    private i e = new i() {
        public final i onDataAvailable(n nVar, l lVar) {
            z.this.n.add(null);
            return null;
        }
    };
    private i f = new i() {
        public final i onDataAvailable(n nVar, l lVar) {
            z.this.n.add(Byte.valueOf(lVar.get()));
            return null;
        }
    };
    private i g = new i() {
        public final i onDataAvailable(n nVar, l lVar) {
            z.this.n.add(Short.valueOf(lVar.getShort()));
            return null;
        }
    };
    private i h = new i() {
        public final i onDataAvailable(n nVar, l lVar) {
            z.this.n.add(Integer.valueOf(lVar.getInt()));
            return null;
        }
    };
    private i i = new i() {
        public final i onDataAvailable(n nVar, l lVar) {
            z.this.n.add(Long.valueOf(lVar.getLong()));
            return null;
        }
    };
    private f<byte[]> j = new f<byte[]>() {
        public final void parsed(byte[] bArr) {
            z.this.n.add(bArr);
        }
    };
    private f<l> k = new f<l>() {
        public final void parsed(l lVar) {
            z.this.n.add(lVar);
        }
    };
    private f<byte[]> l = new f<byte[]>() {
        public final void parsed(byte[] bArr) {
            z.this.n.add(new String(bArr));
        }
    };
    private LinkedList<i> m = new LinkedList<>();
    /* access modifiers changed from: private */
    public ArrayList<Object> n = new ArrayList<>();

    static class a extends i {

        /* renamed from: a  reason: collision with root package name */
        f<byte[]> f4867a;

        public a(int i, f<byte[]> fVar) {
            super(i);
            if (i > 0) {
                this.f4867a = fVar;
                return;
            }
            throw new IllegalArgumentException("length should be > 0");
        }

        public final i onDataAvailable(n nVar, l lVar) {
            byte[] bArr = new byte[this.c];
            lVar.get(bArr);
            this.f4867a.parsed(bArr);
            return null;
        }
    }

    static class b extends i {

        /* renamed from: a  reason: collision with root package name */
        f<l> f4868a;

        public b(int i, f<l> fVar) {
            super(i);
            if (i > 0) {
                this.f4868a = fVar;
                return;
            }
            throw new IllegalArgumentException("length should be > 0");
        }

        public final i onDataAvailable(n nVar, l lVar) {
            this.f4868a.parsed(lVar.get(this.c));
            return null;
        }
    }

    static class c extends i {

        /* renamed from: a  reason: collision with root package name */
        f<Integer> f4869a;

        public c(f<Integer> fVar) {
            super(4);
            this.f4869a = fVar;
        }

        public final i onDataAvailable(n nVar, l lVar) {
            this.f4869a.parsed(Integer.valueOf(lVar.getInt()));
            return null;
        }
    }

    static class d extends i {

        /* renamed from: a  reason: collision with root package name */
        private final f<byte[]> f4870a;

        public d(f<byte[]> fVar) {
            super(4);
            this.f4870a = fVar;
        }

        public final i onDataAvailable(n nVar, l lVar) {
            int i = lVar.getInt();
            if (i != 0) {
                return new a(i, this.f4870a);
            }
            this.f4870a.parsed(new byte[0]);
            return null;
        }
    }

    static class e extends i {

        /* renamed from: a  reason: collision with root package name */
        private final f<l> f4871a;

        public e(f<l> fVar) {
            super(4);
            this.f4871a = fVar;
        }

        public final i onDataAvailable(n nVar, l lVar) {
            return new b(lVar.getInt(), this.f4871a);
        }
    }

    public interface f<T> {
        void parsed(T t);
    }

    class g extends i {

        /* renamed from: b  reason: collision with root package name */
        private final ad f4873b;

        public g(ad adVar) {
            super(0);
            this.f4873b = adVar;
        }

        public final i onDataAvailable(n nVar, l lVar) {
            Method a2 = z.a(this.f4873b);
            a2.setAccessible(true);
            try {
                a2.invoke(this.f4873b, z.this.n.toArray());
            } catch (Exception unused) {
            }
            z.this.n.clear();
            return null;
        }
    }

    static class h extends i {

        /* renamed from: a  reason: collision with root package name */
        byte f4874a;

        /* renamed from: b  reason: collision with root package name */
        com.koushikdutta.async.a.d f4875b;

        public h(byte b2, com.koushikdutta.async.a.d dVar) {
            super(1);
            this.f4874a = b2;
            this.f4875b = dVar;
        }

        public final i onDataAvailable(n nVar, l lVar) {
            l lVar2 = new l();
            boolean z = true;
            while (true) {
                if (lVar.size() <= 0) {
                    break;
                }
                ByteBuffer remove = lVar.remove();
                remove.mark();
                int i = 0;
                while (remove.remaining() > 0) {
                    z = remove.get() == this.f4874a;
                    if (z) {
                        break;
                    }
                    i++;
                }
                remove.reset();
                if (z) {
                    lVar.addFirst(remove);
                    lVar.get(lVar2, i);
                    lVar.get();
                    break;
                }
                lVar2.add(remove);
            }
            this.f4875b.onDataAvailable(nVar, lVar2);
            if (z) {
                return null;
            }
            return this;
        }
    }

    static abstract class i {
        int c;

        public abstract i onDataAvailable(n nVar, l lVar);

        public i(int i) {
            this.c = i;
        }
    }

    public final z setOrder(ByteOrder byteOrder) {
        this.f4858b = byteOrder;
        return this;
    }

    public z(n nVar) {
        this.f4857a = nVar;
        this.f4857a.setDataCallback(this);
    }

    public final z readInt(f<Integer> fVar) {
        this.m.add(new c(fVar));
        return this;
    }

    public final z readByteArray(int i2, f<byte[]> fVar) {
        this.m.add(new a(i2, fVar));
        return this;
    }

    public final z readByteBufferList(int i2, f<l> fVar) {
        this.m.add(new b(i2, fVar));
        return this;
    }

    public final z until(byte b2, com.koushikdutta.async.a.d dVar) {
        this.m.add(new h(b2, dVar));
        return this;
    }

    public final z readByte() {
        this.m.add(this.f);
        return this;
    }

    public final z readShort() {
        this.m.add(this.g);
        return this;
    }

    public final z readInt() {
        this.m.add(this.h);
        return this;
    }

    public final z readLong() {
        this.m.add(this.i);
        return this;
    }

    public final z readByteArray(int i2) {
        return i2 == -1 ? readLenByteArray() : readByteArray(i2, this.j);
    }

    public final z readLenByteArray() {
        this.m.add(new d(this.j));
        return this;
    }

    public final z readByteBufferList(int i2) {
        return i2 == -1 ? readLenByteBufferList() : readByteBufferList(i2, this.k);
    }

    public final z readLenByteBufferList() {
        return readLenByteBufferList(this.k);
    }

    public final z readLenByteBufferList(f<l> fVar) {
        this.m.add(new e(fVar));
        return this;
    }

    public final z readString() {
        this.m.add(new d(this.l));
        return this;
    }

    public final z noop() {
        this.m.add(this.e);
        return this;
    }

    public final void onDataAvailable(n nVar, l lVar) {
        lVar.get(this.c);
        while (this.m.size() > 0 && this.c.remaining() >= this.m.peek().c) {
            this.c.order(this.f4858b);
            i onDataAvailable = this.m.poll().onDataAvailable(nVar, this.c);
            if (onDataAvailable != null) {
                this.m.addFirst(onDataAvailable);
            }
        }
        if (this.m.size() == 0) {
            this.c.get(lVar);
        }
    }

    public final void tap(ad adVar) {
        this.m.add(new g(adVar));
    }

    static Method a(ad adVar) {
        Method method = d.get(adVar.getClass());
        if (method != null) {
            return method;
        }
        for (Method method2 : adVar.getClass().getMethods()) {
            if ("tap".equals(method2.getName())) {
                d.put(adVar.getClass(), method2);
                return method2;
            }
        }
        Method[] declaredMethods = adVar.getClass().getDeclaredMethods();
        if (declaredMethods.length == 1) {
            return declaredMethods[0];
        }
        throw new AssertionError("-keep class * extends com.koushikdutta.async.TapCallback {\n    *;\n}\n");
    }
}
