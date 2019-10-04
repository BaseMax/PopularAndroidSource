package c.e.a.a.e.h;

import android.util.SparseArray;
import c.e.a.a.e.i;
import c.e.a.a.o.F;
import c.e.a.a.o.v;
import java.util.Collections;
import java.util.List;

/* compiled from: TsPayloadReader */
public interface J {

    /* compiled from: TsPayloadReader */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f8063a;

        /* renamed from: b  reason: collision with root package name */
        public final int f8064b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f8065c;

        public a(String str, int i2, byte[] bArr) {
            this.f8063a = str;
            this.f8064b = i2;
            this.f8065c = bArr;
        }
    }

    /* compiled from: TsPayloadReader */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f8066a;

        /* renamed from: b  reason: collision with root package name */
        public final String f8067b;

        /* renamed from: c  reason: collision with root package name */
        public final List<a> f8068c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f8069d;

        public b(int i2, String str, List<a> list, byte[] bArr) {
            List<a> list2;
            this.f8066a = i2;
            this.f8067b = str;
            if (list == null) {
                list2 = Collections.emptyList();
            } else {
                list2 = Collections.unmodifiableList(list);
            }
            this.f8068c = list2;
            this.f8069d = bArr;
        }
    }

    /* compiled from: TsPayloadReader */
    public interface c {
        SparseArray<J> a();

        J a(int i2, b bVar);
    }

    /* compiled from: TsPayloadReader */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final String f8070a;

        /* renamed from: b  reason: collision with root package name */
        public final int f8071b;

        /* renamed from: c  reason: collision with root package name */
        public final int f8072c;

        /* renamed from: d  reason: collision with root package name */
        public int f8073d;

        /* renamed from: e  reason: collision with root package name */
        public String f8074e;

        public d(int i2, int i3) {
            this(Integer.MIN_VALUE, i2, i3);
        }

        public void a() {
            int i2 = this.f8073d;
            this.f8073d = i2 == Integer.MIN_VALUE ? this.f8071b : i2 + this.f8072c;
            this.f8074e = this.f8070a + this.f8073d;
        }

        public String b() {
            d();
            return this.f8074e;
        }

        public int c() {
            d();
            return this.f8073d;
        }

        public final void d() {
            if (this.f8073d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public d(int i2, int i3, int i4) {
            String str;
            if (i2 != Integer.MIN_VALUE) {
                str = i2 + "/";
            } else {
                str = "";
            }
            this.f8070a = str;
            this.f8071b = i3;
            this.f8072c = i4;
            this.f8073d = Integer.MIN_VALUE;
        }
    }

    void a();

    void a(F f2, i iVar, d dVar);

    void a(v vVar, int i2);
}
