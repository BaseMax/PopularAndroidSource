package j;

import j.a.e;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import okhttp3.TlsVersion;

/* renamed from: j.q  reason: case insensitive filesystem */
/* compiled from: ConnectionSpec */
public final class C1150q {

    /* renamed from: a  reason: collision with root package name */
    public static final C1146m[] f15683a = {C1146m.lb, C1146m.mb, C1146m.nb, C1146m.ob, C1146m.pb, C1146m.Ya, C1146m.bb, C1146m.Za, C1146m.cb, C1146m.ib, C1146m.hb};

    /* renamed from: b  reason: collision with root package name */
    public static final C1146m[] f15684b = {C1146m.lb, C1146m.mb, C1146m.nb, C1146m.ob, C1146m.pb, C1146m.Ya, C1146m.bb, C1146m.Za, C1146m.cb, C1146m.ib, C1146m.hb, C1146m.Ja, C1146m.Ka, C1146m.ha, C1146m.ia, C1146m.F, C1146m.J, C1146m.f15672j};

    /* renamed from: c  reason: collision with root package name */
    public static final C1150q f15685c;

    /* renamed from: d  reason: collision with root package name */
    public static final C1150q f15686d;

    /* renamed from: e  reason: collision with root package name */
    public static final C1150q f15687e;

    /* renamed from: f  reason: collision with root package name */
    public static final C1150q f15688f = new a(false).a();

    /* renamed from: g  reason: collision with root package name */
    public final boolean f15689g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f15690h;

    /* renamed from: i  reason: collision with root package name */
    public final String[] f15691i;

    /* renamed from: j  reason: collision with root package name */
    public final String[] f15692j;

    /* renamed from: j.q$a */
    /* compiled from: ConnectionSpec */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f15693a;

        /* renamed from: b  reason: collision with root package name */
        public String[] f15694b;

        /* renamed from: c  reason: collision with root package name */
        public String[] f15695c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f15696d;

        public a(boolean z) {
            this.f15693a = z;
        }

        public a a(C1146m... mVarArr) {
            if (this.f15693a) {
                String[] strArr = new String[mVarArr.length];
                for (int i2 = 0; i2 < mVarArr.length; i2++) {
                    strArr[i2] = mVarArr[i2].qb;
                }
                a(strArr);
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a b(String... strArr) {
            if (!this.f15693a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            } else if (strArr.length != 0) {
                this.f15695c = (String[]) strArr.clone();
                return this;
            } else {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
        }

        public a(C1150q qVar) {
            this.f15693a = qVar.f15689g;
            this.f15694b = qVar.f15691i;
            this.f15695c = qVar.f15692j;
            this.f15696d = qVar.f15690h;
        }

        public a a(String... strArr) {
            if (!this.f15693a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            } else if (strArr.length != 0) {
                this.f15694b = (String[]) strArr.clone();
                return this;
            } else {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
        }

        public a a(TlsVersion... tlsVersionArr) {
            if (this.f15693a) {
                String[] strArr = new String[tlsVersionArr.length];
                for (int i2 = 0; i2 < tlsVersionArr.length; i2++) {
                    strArr[i2] = tlsVersionArr[i2].javaName;
                }
                b(strArr);
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a a(boolean z) {
            if (this.f15693a) {
                this.f15696d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public C1150q a() {
            return new C1150q(this);
        }
    }

    static {
        a aVar = new a(true);
        aVar.a(f15683a);
        aVar.a(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2);
        aVar.a(true);
        f15685c = aVar.a();
        a aVar2 = new a(true);
        aVar2.a(f15684b);
        aVar2.a(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0);
        aVar2.a(true);
        f15686d = aVar2.a();
        a aVar3 = new a(true);
        aVar3.a(f15684b);
        aVar3.a(TlsVersion.TLS_1_0);
        aVar3.a(true);
        f15687e = aVar3.a();
    }

    public C1150q(a aVar) {
        this.f15689g = aVar.f15693a;
        this.f15691i = aVar.f15694b;
        this.f15692j = aVar.f15695c;
        this.f15690h = aVar.f15696d;
    }

    public List<C1146m> a() {
        String[] strArr = this.f15691i;
        if (strArr != null) {
            return C1146m.a(strArr);
        }
        return null;
    }

    public boolean b() {
        return this.f15689g;
    }

    public boolean c() {
        return this.f15690h;
    }

    public List<TlsVersion> d() {
        String[] strArr = this.f15692j;
        if (strArr != null) {
            return TlsVersion.a(strArr);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1150q)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C1150q qVar = (C1150q) obj;
        boolean z = this.f15689g;
        if (z != qVar.f15689g) {
            return false;
        }
        return !z || (Arrays.equals(this.f15691i, qVar.f15691i) && Arrays.equals(this.f15692j, qVar.f15692j) && this.f15690h == qVar.f15690h);
    }

    public int hashCode() {
        if (this.f15689g) {
            return ((((527 + Arrays.hashCode(this.f15691i)) * 31) + Arrays.hashCode(this.f15692j)) * 31) + (this.f15690h ^ true ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.f15689g) {
            return "ConnectionSpec()";
        }
        String str = "[all enabled]";
        String obj = this.f15691i != null ? a().toString() : str;
        if (this.f15692j != null) {
            str = d().toString();
        }
        return "ConnectionSpec(cipherSuites=" + obj + ", tlsVersions=" + str + ", supportsTlsExtensions=" + this.f15690h + ")";
    }

    public void a(SSLSocket sSLSocket, boolean z) {
        C1150q b2 = b(sSLSocket, z);
        String[] strArr = b2.f15692j;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = b2.f15691i;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public final C1150q b(SSLSocket sSLSocket, boolean z) {
        String[] strArr;
        String[] strArr2;
        if (this.f15691i != null) {
            strArr = e.a((Comparator<? super String>) C1146m.f15663a, sSLSocket.getEnabledCipherSuites(), this.f15691i);
        } else {
            strArr = sSLSocket.getEnabledCipherSuites();
        }
        if (this.f15692j != null) {
            strArr2 = e.a((Comparator<? super String>) e.q, sSLSocket.getEnabledProtocols(), this.f15692j);
        } else {
            strArr2 = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int a2 = e.a(C1146m.f15663a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && a2 != -1) {
            strArr = e.a(strArr, supportedCipherSuites[a2]);
        }
        a aVar = new a(this);
        aVar.a(strArr);
        aVar.b(strArr2);
        return aVar.a();
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.f15689g) {
            return false;
        }
        String[] strArr = this.f15692j;
        if (strArr != null && !e.b(e.q, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f15691i;
        if (strArr2 == null || e.b(C1146m.f15663a, strArr2, sSLSocket.getEnabledCipherSuites())) {
            return true;
        }
        return false;
    }
}
