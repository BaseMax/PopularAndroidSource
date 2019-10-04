package j;

import j.a.e;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import k.g;
import k.h;

/* compiled from: FormBody */
public final class A extends O {

    /* renamed from: a  reason: collision with root package name */
    public static final F f15106a = F.a("application/x-www-form-urlencoded");

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f15107b;

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f15108c;

    /* compiled from: FormBody */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<String> f15109a;

        /* renamed from: b  reason: collision with root package name */
        public final List<String> f15110b;

        /* renamed from: c  reason: collision with root package name */
        public final Charset f15111c;

        public a() {
            this(null);
        }

        public a a(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            } else if (str2 != null) {
                this.f15109a.add(D.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f15111c));
                this.f15110b.add(D.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f15111c));
                return this;
            } else {
                throw new NullPointerException("value == null");
            }
        }

        public a b(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            } else if (str2 != null) {
                this.f15109a.add(D.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f15111c));
                this.f15110b.add(D.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f15111c));
                return this;
            } else {
                throw new NullPointerException("value == null");
            }
        }

        public a(Charset charset) {
            this.f15109a = new ArrayList();
            this.f15110b = new ArrayList();
            this.f15111c = charset;
        }

        public A a() {
            return new A(this.f15109a, this.f15110b);
        }
    }

    public A(List<String> list, List<String> list2) {
        this.f15107b = e.a(list);
        this.f15108c = e.a(list2);
    }

    public long a() {
        return a(null, true);
    }

    public F b() {
        return f15106a;
    }

    public void a(h hVar) {
        a(hVar, false);
    }

    public final long a(h hVar, boolean z) {
        g gVar;
        if (z) {
            gVar = new g();
        } else {
            gVar = hVar.a();
        }
        int size = this.f15107b.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                gVar.writeByte(38);
            }
            gVar.a(this.f15107b.get(i2));
            gVar.writeByte(61);
            gVar.a(this.f15108c.get(i2));
        }
        if (!z) {
            return 0;
        }
        long size2 = gVar.size();
        gVar.p();
        return size2;
    }
}
