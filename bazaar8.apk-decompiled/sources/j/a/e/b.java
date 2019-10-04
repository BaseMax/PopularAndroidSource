package j.a.e;

import com.crashlytics.android.core.CodedOutputStream;
import j.a.e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import k.g;
import k.i;
import k.s;
import k.z;
import okio.ByteString;

/* compiled from: Hpack */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final a[] f15430a = {new a(a.f15426f, ""), new a(a.f15423c, "GET"), new a(a.f15423c, "POST"), new a(a.f15424d, "/"), new a(a.f15424d, "/index.html"), new a(a.f15425e, "http"), new a(a.f15425e, "https"), new a(a.f15422b, "200"), new a(a.f15422b, "204"), new a(a.f15422b, "206"), new a(a.f15422b, "304"), new a(a.f15422b, "400"), new a(a.f15422b, "404"), new a(a.f15422b, "500"), new a("accept-charset", ""), new a("accept-encoding", "gzip, deflate"), new a("accept-language", ""), new a("accept-ranges", ""), new a("accept", ""), new a("access-control-allow-origin", ""), new a("age", ""), new a("allow", ""), new a("authorization", ""), new a("cache-control", ""), new a("content-disposition", ""), new a("content-encoding", ""), new a("content-language", ""), new a("content-length", ""), new a("content-location", ""), new a("content-range", ""), new a("content-type", ""), new a("cookie", ""), new a("date", ""), new a("etag", ""), new a("expect", ""), new a("expires", ""), new a("from", ""), new a("host", ""), new a("if-match", ""), new a("if-modified-since", ""), new a("if-none-match", ""), new a("if-range", ""), new a("if-unmodified-since", ""), new a("last-modified", ""), new a("link", ""), new a("location", ""), new a("max-forwards", ""), new a("proxy-authenticate", ""), new a("proxy-authorization", ""), new a("range", ""), new a("referer", ""), new a("refresh", ""), new a("retry-after", ""), new a("server", ""), new a("set-cookie", ""), new a("strict-transport-security", ""), new a("transfer-encoding", ""), new a("user-agent", ""), new a("vary", ""), new a("via", ""), new a("www-authenticate", "")};

    /* renamed from: b  reason: collision with root package name */
    public static final Map<ByteString, Integer> f15431b = a();

    /* compiled from: Hpack */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<a> f15432a;

        /* renamed from: b  reason: collision with root package name */
        public final i f15433b;

        /* renamed from: c  reason: collision with root package name */
        public final int f15434c;

        /* renamed from: d  reason: collision with root package name */
        public int f15435d;

        /* renamed from: e  reason: collision with root package name */
        public a[] f15436e;

        /* renamed from: f  reason: collision with root package name */
        public int f15437f;

        /* renamed from: g  reason: collision with root package name */
        public int f15438g;

        /* renamed from: h  reason: collision with root package name */
        public int f15439h;

        public a(int i2, z zVar) {
            this(i2, i2, zVar);
        }

        public final void a() {
            int i2 = this.f15435d;
            int i3 = this.f15439h;
            if (i2 >= i3) {
                return;
            }
            if (i2 == 0) {
                b();
            } else {
                b(i3 - i2);
            }
        }

        public final void b() {
            Arrays.fill(this.f15436e, null);
            this.f15437f = this.f15436e.length - 1;
            this.f15438g = 0;
            this.f15439h = 0;
        }

        public List<a> c() {
            ArrayList arrayList = new ArrayList(this.f15432a);
            this.f15432a.clear();
            return arrayList;
        }

        public final boolean d(int i2) {
            return i2 >= 0 && i2 <= b.f15430a.length - 1;
        }

        public final void e(int i2) {
            if (d(i2)) {
                this.f15432a.add(b.f15430a[i2]);
                return;
            }
            int a2 = a(i2 - b.f15430a.length);
            if (a2 >= 0) {
                a[] aVarArr = this.f15436e;
                if (a2 < aVarArr.length) {
                    this.f15432a.add(aVarArr[a2]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        public void f() {
            while (!this.f15433b.d()) {
                byte readByte = this.f15433b.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                } else if ((readByte & 128) == 128) {
                    e(a((int) readByte, 127) - 1);
                } else if (readByte == 64) {
                    g();
                } else if ((readByte & 64) == 64) {
                    f(a((int) readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    this.f15435d = a((int) readByte, 31);
                    int i2 = this.f15435d;
                    if (i2 < 0 || i2 > this.f15434c) {
                        throw new IOException("Invalid dynamic table size update " + this.f15435d);
                    }
                    a();
                } else if (readByte == 16 || readByte == 0) {
                    h();
                } else {
                    g(a((int) readByte, 15) - 1);
                }
            }
        }

        public final void g(int i2) {
            this.f15432a.add(new a(c(i2), e()));
        }

        public final void h() {
            ByteString e2 = e();
            b.a(e2);
            this.f15432a.add(new a(e2, e()));
        }

        public a(int i2, int i3, z zVar) {
            this.f15432a = new ArrayList();
            this.f15436e = new a[8];
            this.f15437f = this.f15436e.length - 1;
            this.f15438g = 0;
            this.f15439h = 0;
            this.f15434c = i2;
            this.f15435d = i3;
            this.f15433b = s.a(zVar);
        }

        public final int d() {
            return this.f15433b.readByte() & 255;
        }

        public final ByteString c(int i2) {
            if (d(i2)) {
                return b.f15430a[i2].f15427g;
            }
            int a2 = a(i2 - b.f15430a.length);
            if (a2 >= 0) {
                a[] aVarArr = this.f15436e;
                if (a2 < aVarArr.length) {
                    return aVarArr[a2].f15427g;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        public final int a(int i2) {
            return this.f15437f + 1 + i2;
        }

        public final void g() {
            ByteString e2 = e();
            b.a(e2);
            a(-1, new a(e2, e()));
        }

        public final void a(int i2, a aVar) {
            int i3;
            this.f15432a.add(aVar);
            int i4 = aVar.f15429i;
            if (i2 != -1) {
                i4 -= this.f15436e[a(i2)].f15429i;
            }
            int i5 = this.f15435d;
            if (i4 > i5) {
                b();
                return;
            }
            int b2 = b((this.f15439h + i4) - i5);
            if (i2 == -1) {
                int i6 = this.f15438g + 1;
                a[] aVarArr = this.f15436e;
                if (i6 > aVarArr.length) {
                    a[] aVarArr2 = new a[(aVarArr.length * 2)];
                    System.arraycopy(aVarArr, 0, aVarArr2, aVarArr.length, aVarArr.length);
                    this.f15437f = this.f15436e.length - 1;
                    this.f15436e = aVarArr2;
                }
                this.f15437f = this.f15437f - 1;
                this.f15436e[i3] = aVar;
                this.f15438g++;
            } else {
                this.f15436e[i2 + a(i2) + b2] = aVar;
            }
            this.f15439h += i4;
        }

        public final int b(int i2) {
            int i3 = 0;
            if (i2 > 0) {
                int length = this.f15436e.length;
                while (true) {
                    length--;
                    if (length < this.f15437f || i2 <= 0) {
                        a[] aVarArr = this.f15436e;
                        int i4 = this.f15437f;
                        System.arraycopy(aVarArr, i4 + 1, aVarArr, i4 + 1 + i3, this.f15438g);
                        this.f15437f += i3;
                    } else {
                        a[] aVarArr2 = this.f15436e;
                        i2 -= aVarArr2[length].f15429i;
                        this.f15439h -= aVarArr2[length].f15429i;
                        this.f15438g--;
                        i3++;
                    }
                }
                a[] aVarArr3 = this.f15436e;
                int i42 = this.f15437f;
                System.arraycopy(aVarArr3, i42 + 1, aVarArr3, i42 + 1 + i3, this.f15438g);
                this.f15437f += i3;
            }
            return i3;
        }

        public ByteString e() {
            int d2 = d();
            boolean z = (d2 & 128) == 128;
            int a2 = a(d2, 127);
            if (z) {
                return ByteString.a(s.b().a(this.f15433b.e((long) a2)));
            }
            return this.f15433b.a((long) a2);
        }

        public final void f(int i2) {
            a(-1, new a(c(i2), e()));
        }

        public int a(int i2, int i3) {
            int i4 = i2 & i3;
            if (i4 < i3) {
                return i4;
            }
            int i5 = 0;
            while (true) {
                int d2 = d();
                if ((d2 & 128) == 0) {
                    return i3 + (d2 << i5);
                }
                i3 += (d2 & 127) << i5;
                i5 += 7;
            }
        }
    }

    /* renamed from: j.a.e.b$b  reason: collision with other inner class name */
    /* compiled from: Hpack */
    static final class C0151b {

        /* renamed from: a  reason: collision with root package name */
        public final g f15440a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f15441b;

        /* renamed from: c  reason: collision with root package name */
        public int f15442c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f15443d;

        /* renamed from: e  reason: collision with root package name */
        public int f15444e;

        /* renamed from: f  reason: collision with root package name */
        public int f15445f;

        /* renamed from: g  reason: collision with root package name */
        public a[] f15446g;

        /* renamed from: h  reason: collision with root package name */
        public int f15447h;

        /* renamed from: i  reason: collision with root package name */
        public int f15448i;

        /* renamed from: j  reason: collision with root package name */
        public int f15449j;

        public C0151b(g gVar) {
            this(CodedOutputStream.DEFAULT_BUFFER_SIZE, true, gVar);
        }

        public final int a(int i2) {
            int i3 = 0;
            if (i2 > 0) {
                int length = this.f15446g.length;
                while (true) {
                    length--;
                    if (length < this.f15447h || i2 <= 0) {
                        a[] aVarArr = this.f15446g;
                        int i4 = this.f15447h;
                        System.arraycopy(aVarArr, i4 + 1, aVarArr, i4 + 1 + i3, this.f15448i);
                        a[] aVarArr2 = this.f15446g;
                        int i5 = this.f15447h;
                        Arrays.fill(aVarArr2, i5 + 1, i5 + 1 + i3, null);
                        this.f15447h += i3;
                    } else {
                        a[] aVarArr3 = this.f15446g;
                        i2 -= aVarArr3[length].f15429i;
                        this.f15449j -= aVarArr3[length].f15429i;
                        this.f15448i--;
                        i3++;
                    }
                }
                a[] aVarArr4 = this.f15446g;
                int i42 = this.f15447h;
                System.arraycopy(aVarArr4, i42 + 1, aVarArr4, i42 + 1 + i3, this.f15448i);
                a[] aVarArr22 = this.f15446g;
                int i52 = this.f15447h;
                Arrays.fill(aVarArr22, i52 + 1, i52 + 1 + i3, null);
                this.f15447h += i3;
            }
            return i3;
        }

        public final void b() {
            Arrays.fill(this.f15446g, null);
            this.f15447h = this.f15446g.length - 1;
            this.f15448i = 0;
            this.f15449j = 0;
        }

        public C0151b(int i2, boolean z, g gVar) {
            this.f15442c = Integer.MAX_VALUE;
            this.f15446g = new a[8];
            this.f15447h = this.f15446g.length - 1;
            this.f15448i = 0;
            this.f15449j = 0;
            this.f15444e = i2;
            this.f15445f = i2;
            this.f15441b = z;
            this.f15440a = gVar;
        }

        public void b(int i2) {
            this.f15444e = i2;
            int min = Math.min(i2, 16384);
            int i3 = this.f15445f;
            if (i3 != min) {
                if (min < i3) {
                    this.f15442c = Math.min(this.f15442c, min);
                }
                this.f15443d = true;
                this.f15445f = min;
                a();
            }
        }

        public final void a(a aVar) {
            int i2;
            int i3 = aVar.f15429i;
            int i4 = this.f15445f;
            if (i3 > i4) {
                b();
                return;
            }
            a((this.f15449j + i3) - i4);
            int i5 = this.f15448i + 1;
            a[] aVarArr = this.f15446g;
            if (i5 > aVarArr.length) {
                a[] aVarArr2 = new a[(aVarArr.length * 2)];
                System.arraycopy(aVarArr, 0, aVarArr2, aVarArr.length, aVarArr.length);
                this.f15447h = this.f15446g.length - 1;
                this.f15446g = aVarArr2;
            }
            this.f15447h = this.f15447h - 1;
            this.f15446g[i2] = aVar;
            this.f15448i++;
            this.f15449j += i3;
        }

        public void a(List<a> list) {
            int i2;
            int i3;
            if (this.f15443d) {
                int i4 = this.f15442c;
                if (i4 < this.f15445f) {
                    a(i4, 31, 32);
                }
                this.f15443d = false;
                this.f15442c = Integer.MAX_VALUE;
                a(this.f15445f, 31, 32);
            }
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                a aVar = list.get(i5);
                ByteString l2 = aVar.f15427g.l();
                ByteString byteString = aVar.f15428h;
                Integer num = b.f15431b.get(l2);
                if (num != null) {
                    i3 = num.intValue() + 1;
                    if (i3 > 1 && i3 < 8) {
                        if (e.a((Object) b.f15430a[i3 - 1].f15428h, (Object) byteString)) {
                            i2 = i3;
                        } else if (e.a((Object) b.f15430a[i3].f15428h, (Object) byteString)) {
                            i2 = i3;
                            i3++;
                        }
                    }
                    i2 = i3;
                    i3 = -1;
                } else {
                    i3 = -1;
                    i2 = -1;
                }
                if (i3 == -1) {
                    int i6 = this.f15447h + 1;
                    int length = this.f15446g.length;
                    while (true) {
                        if (i6 >= length) {
                            break;
                        }
                        if (e.a((Object) this.f15446g[i6].f15427g, (Object) l2)) {
                            if (e.a((Object) this.f15446g[i6].f15428h, (Object) byteString)) {
                                i3 = b.f15430a.length + (i6 - this.f15447h);
                                break;
                            } else if (i2 == -1) {
                                i2 = (i6 - this.f15447h) + b.f15430a.length;
                            }
                        }
                        i6++;
                    }
                }
                if (i3 != -1) {
                    a(i3, 127, 128);
                } else if (i2 == -1) {
                    this.f15440a.writeByte(64);
                    a(l2);
                    a(byteString);
                    a(aVar);
                } else if (!l2.b(a.f15421a) || a.f15426f.equals(l2)) {
                    a(i2, 63, 64);
                    a(byteString);
                    a(aVar);
                } else {
                    a(i2, 15, 0);
                    a(byteString);
                }
            }
        }

        public void a(int i2, int i3, int i4) {
            if (i2 < i3) {
                this.f15440a.writeByte(i2 | i4);
                return;
            }
            this.f15440a.writeByte(i4 | i3);
            int i5 = i2 - i3;
            while (i5 >= 128) {
                this.f15440a.writeByte(128 | (i5 & 127));
                i5 >>>= 7;
            }
            this.f15440a.writeByte(i5);
        }

        public void a(ByteString byteString) {
            if (!this.f15441b || s.b().a(byteString) >= byteString.k()) {
                a(byteString.k(), 127, 0);
                this.f15440a.a(byteString);
                return;
            }
            g gVar = new g();
            s.b().a(byteString, gVar);
            ByteString s = gVar.s();
            a(s.k(), 127, 128);
            this.f15440a.a(s);
        }

        public final void a() {
            int i2 = this.f15445f;
            int i3 = this.f15449j;
            if (i2 >= i3) {
                return;
            }
            if (i2 == 0) {
                b();
            } else {
                a(i3 - i2);
            }
        }
    }

    public static Map<ByteString, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f15430a.length);
        int i2 = 0;
        while (true) {
            a[] aVarArr = f15430a;
            if (i2 >= aVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(aVarArr[i2].f15427g)) {
                linkedHashMap.put(f15430a[i2].f15427g, Integer.valueOf(i2));
            }
            i2++;
        }
    }

    public static ByteString a(ByteString byteString) {
        int k2 = byteString.k();
        int i2 = 0;
        while (i2 < k2) {
            byte a2 = byteString.a(i2);
            if (a2 < 65 || a2 > 90) {
                i2++;
            } else {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.n());
            }
        }
        return byteString;
    }
}
