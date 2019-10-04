package j;

import j.a.e;
import j.a.i.c;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.ByteString;

/* renamed from: j.k  reason: case insensitive filesystem */
/* compiled from: CertificatePinner */
public final class C1144k {

    /* renamed from: a  reason: collision with root package name */
    public static final C1144k f15655a = new a().a();

    /* renamed from: b  reason: collision with root package name */
    public final Set<b> f15656b;

    /* renamed from: c  reason: collision with root package name */
    public final c f15657c;

    /* renamed from: j.k$a */
    /* compiled from: CertificatePinner */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<b> f15658a = new ArrayList();

        public C1144k a() {
            return new C1144k(new LinkedHashSet(this.f15658a), null);
        }
    }

    /* renamed from: j.k$b */
    /* compiled from: CertificatePinner */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f15659a;

        /* renamed from: b  reason: collision with root package name */
        public final String f15660b;

        /* renamed from: c  reason: collision with root package name */
        public final String f15661c;

        /* renamed from: d  reason: collision with root package name */
        public final ByteString f15662d;

        /* JADX WARNING: Code restructure failed: missing block: B:5:0x002e, code lost:
            if (r11.regionMatches(false, r0 + 1, r7, 0, r7.length()) != false) goto L_0x0032;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(java.lang.String r11) {
            /*
                r10 = this;
                java.lang.String r0 = r10.f15659a
                java.lang.String r1 = "*."
                boolean r0 = r0.startsWith(r1)
                if (r0 == 0) goto L_0x0033
                r0 = 46
                int r0 = r11.indexOf(r0)
                int r1 = r11.length()
                int r1 = r1 - r0
                r2 = 1
                int r1 = r1 - r2
                java.lang.String r3 = r10.f15660b
                int r3 = r3.length()
                if (r1 != r3) goto L_0x0031
                r5 = 0
                int r6 = r0 + 1
                java.lang.String r7 = r10.f15660b
                r8 = 0
                int r9 = r7.length()
                r4 = r11
                boolean r11 = r4.regionMatches(r5, r6, r7, r8, r9)
                if (r11 == 0) goto L_0x0031
                goto L_0x0032
            L_0x0031:
                r2 = 0
            L_0x0032:
                return r2
            L_0x0033:
                java.lang.String r0 = r10.f15660b
                boolean r11 = r11.equals(r0)
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: j.C1144k.b.a(java.lang.String):boolean");
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f15659a.equals(bVar.f15659a) && this.f15661c.equals(bVar.f15661c) && this.f15662d.equals(bVar.f15662d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.f15659a.hashCode()) * 31) + this.f15661c.hashCode()) * 31) + this.f15662d.hashCode();
        }

        public String toString() {
            return this.f15661c + this.f15662d.f();
        }
    }

    public C1144k(Set<b> set, c cVar) {
        this.f15656b = set;
        this.f15657c = cVar;
    }

    public static ByteString b(X509Certificate x509Certificate) {
        return ByteString.a(x509Certificate.getPublicKey().getEncoded()).j();
    }

    public void a(String str, List<Certificate> list) {
        List<b> a2 = a(str);
        if (!a2.isEmpty()) {
            c cVar = this.f15657c;
            if (cVar != null) {
                list = cVar.a(list, str);
            }
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                X509Certificate x509Certificate = (X509Certificate) list.get(i2);
                int size2 = a2.size();
                ByteString byteString = null;
                ByteString byteString2 = null;
                for (int i3 = 0; i3 < size2; i3++) {
                    b bVar = a2.get(i3);
                    if (bVar.f15661c.equals("sha256/")) {
                        if (byteString == null) {
                            byteString = b(x509Certificate);
                        }
                        if (bVar.f15662d.equals(byteString)) {
                            return;
                        }
                    } else if (bVar.f15661c.equals("sha1/")) {
                        if (byteString2 == null) {
                            byteString2 = a(x509Certificate);
                        }
                        if (bVar.f15662d.equals(byteString2)) {
                            return;
                        }
                    } else {
                        throw new AssertionError("unsupported hashAlgorithm: " + bVar.f15661c);
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Certificate pinning failure!");
            sb.append("\n  Peer certificate chain:");
            int size3 = list.size();
            for (int i4 = 0; i4 < size3; i4++) {
                X509Certificate x509Certificate2 = (X509Certificate) list.get(i4);
                sb.append("\n    ");
                sb.append(a((Certificate) x509Certificate2));
                sb.append(": ");
                sb.append(x509Certificate2.getSubjectDN().getName());
            }
            sb.append("\n  Pinned certificates for ");
            sb.append(str);
            sb.append(":");
            int size4 = a2.size();
            for (int i5 = 0; i5 < size4; i5++) {
                sb.append("\n    ");
                sb.append(a2.get(i5));
            }
            throw new SSLPeerUnverifiedException(sb.toString());
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001c, code lost:
        if (r3.f15656b.equals(r4.f15656b) != false) goto L_0x0020;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            if (r4 != r3) goto L_0x0004
            return r0
        L_0x0004:
            boolean r1 = r4 instanceof j.C1144k
            if (r1 == 0) goto L_0x001f
            j.a.i.c r1 = r3.f15657c
            j.k r4 = (j.C1144k) r4
            j.a.i.c r2 = r4.f15657c
            boolean r1 = j.a.e.a((java.lang.Object) r1, (java.lang.Object) r2)
            if (r1 == 0) goto L_0x001f
            java.util.Set<j.k$b> r1 = r3.f15656b
            java.util.Set<j.k$b> r4 = r4.f15656b
            boolean r4 = r1.equals(r4)
            if (r4 == 0) goto L_0x001f
            goto L_0x0020
        L_0x001f:
            r0 = 0
        L_0x0020:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.C1144k.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        c cVar = this.f15657c;
        return ((cVar != null ? cVar.hashCode() : 0) * 31) + this.f15656b.hashCode();
    }

    public List<b> a(String str) {
        List<b> emptyList = Collections.emptyList();
        for (b next : this.f15656b) {
            if (next.a(str)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                emptyList.add(next);
            }
        }
        return emptyList;
    }

    public C1144k a(c cVar) {
        if (e.a((Object) this.f15657c, (Object) cVar)) {
            return this;
        }
        return new C1144k(this.f15656b, cVar);
    }

    public static String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + b((X509Certificate) certificate).f();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    public static ByteString a(X509Certificate x509Certificate) {
        return ByteString.a(x509Certificate.getPublicKey().getEncoded()).i();
    }
}
