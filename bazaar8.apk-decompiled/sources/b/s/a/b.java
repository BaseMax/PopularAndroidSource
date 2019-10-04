package b.s.a;

import android.os.Bundle;
import android.util.Log;
import b.f.j;
import b.r.E;
import b.r.F;
import b.r.H;
import b.r.k;
import b.r.t;
import b.r.u;
import b.s.b.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: LoaderManagerImpl */
public class b extends a {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f3197a = false;

    /* renamed from: b  reason: collision with root package name */
    public final k f3198b;

    /* renamed from: c  reason: collision with root package name */
    public final c f3199c;

    /* compiled from: LoaderManagerImpl */
    public static class a<D> extends t<D> implements a.C0041a<D> {

        /* renamed from: k  reason: collision with root package name */
        public final int f3200k;

        /* renamed from: l  reason: collision with root package name */
        public final Bundle f3201l;
        public final b.s.b.a<D> m;
        public k n;
        public C0040b<D> o;
        public b.s.b.a<D> p;

        public b.s.b.a<D> a(boolean z) {
            if (b.f3197a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.m.a();
            throw null;
        }

        public void b(u<? super D> uVar) {
            super.b(uVar);
            this.n = null;
            this.o = null;
        }

        public void d() {
            if (b.f3197a) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.m.c();
            throw null;
        }

        public void e() {
            if (b.f3197a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.m.d();
            throw null;
        }

        public void f() {
            k kVar = this.n;
            C0040b<D> bVar = this.o;
            if (kVar != null && bVar != null) {
                super.b(bVar);
                a(kVar, bVar);
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f3200k);
            sb.append(" : ");
            b.i.j.a.a(this.m, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f3200k);
            printWriter.print(" mArgs=");
            printWriter.println(this.f3201l);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.m);
            b.s.b.a<D> aVar = this.m;
            aVar.a(str + "  ", fileDescriptor, printWriter, strArr);
            throw null;
        }

        public void b(D d2) {
            super.b(d2);
            b.s.b.a<D> aVar = this.p;
            if (aVar != null) {
                aVar.b();
                throw null;
            }
        }
    }

    /* renamed from: b.s.a.b$b  reason: collision with other inner class name */
    /* compiled from: LoaderManagerImpl */
    static class C0040b<D> implements u<D> {
    }

    /* compiled from: LoaderManagerImpl */
    static class c extends E {

        /* renamed from: c  reason: collision with root package name */
        public static final F.b f3202c = new c();

        /* renamed from: d  reason: collision with root package name */
        public j<a> f3203d = new j<>();

        /* renamed from: e  reason: collision with root package name */
        public boolean f3204e = false;

        public static c a(H h2) {
            return (c) new F(h2, f3202c).a(c.class);
        }

        public void d() {
            super.d();
            if (this.f3203d.c() <= 0) {
                this.f3203d.a();
            } else {
                this.f3203d.f(0).a(true);
                throw null;
            }
        }

        public void e() {
            int c2 = this.f3203d.c();
            for (int i2 = 0; i2 < c2; i2++) {
                this.f3203d.f(i2).f();
            }
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f3203d.c() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                if (this.f3203d.c() > 0) {
                    a f2 = this.f3203d.f(0);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f3203d.c(0));
                    printWriter.print(": ");
                    printWriter.println(f2.toString());
                    f2.a(str2, fileDescriptor, printWriter, strArr);
                    throw null;
                }
            }
        }
    }

    public b(k kVar, H h2) {
        this.f3198b = kVar;
        this.f3199c = c.a(h2);
    }

    public void a() {
        this.f3199c.e();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        b.i.j.a.a(this.f3198b, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f3199c.a(str, fileDescriptor, printWriter, strArr);
    }
}
