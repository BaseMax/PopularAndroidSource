package j.a.e;

import j.C;
import j.a.e;
import okio.ByteString;

/* compiled from: Header */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteString f15421a = ByteString.d(":");

    /* renamed from: b  reason: collision with root package name */
    public static final ByteString f15422b = ByteString.d(":status");

    /* renamed from: c  reason: collision with root package name */
    public static final ByteString f15423c = ByteString.d(":method");

    /* renamed from: d  reason: collision with root package name */
    public static final ByteString f15424d = ByteString.d(":path");

    /* renamed from: e  reason: collision with root package name */
    public static final ByteString f15425e = ByteString.d(":scheme");

    /* renamed from: f  reason: collision with root package name */
    public static final ByteString f15426f = ByteString.d(":authority");

    /* renamed from: g  reason: collision with root package name */
    public final ByteString f15427g;

    /* renamed from: h  reason: collision with root package name */
    public final ByteString f15428h;

    /* renamed from: i  reason: collision with root package name */
    public final int f15429i;

    /* renamed from: j.a.e.a$a  reason: collision with other inner class name */
    /* compiled from: Header */
    interface C0150a {
        void a(C c2);
    }

    public a(String str, String str2) {
        this(ByteString.d(str), ByteString.d(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (!this.f15427g.equals(aVar.f15427g) || !this.f15428h.equals(aVar.f15428h)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((527 + this.f15427g.hashCode()) * 31) + this.f15428h.hashCode();
    }

    public String toString() {
        return e.a("%s: %s", this.f15427g.n(), this.f15428h.n());
    }

    public a(ByteString byteString, String str) {
        this(byteString, ByteString.d(str));
    }

    public a(ByteString byteString, ByteString byteString2) {
        this.f15427g = byteString;
        this.f15428h = byteString2;
        this.f15429i = byteString.k() + 32 + byteString2.k();
    }
}
