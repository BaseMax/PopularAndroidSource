package c.c.a.e.d.i;

import h.f.b.j;
import java.io.File;
import java.net.HttpURLConnection;

/* compiled from: PartDownloadModel.kt */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public final String f5206a;

    /* renamed from: b  reason: collision with root package name */
    public final HttpURLConnection f5207b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5208c;

    /* renamed from: d  reason: collision with root package name */
    public final File f5209d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5210e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5211f;

    public w(String str, HttpURLConnection httpURLConnection, int i2, File file, long j2, long j3) {
        j.b(str, "entityId");
        j.b(httpURLConnection, "urlConnection");
        j.b(file, "file");
        this.f5206a = str;
        this.f5207b = httpURLConnection;
        this.f5208c = i2;
        this.f5209d = file;
        this.f5210e = j2;
        this.f5211f = j3;
    }

    public final long a() {
        return this.f5211f;
    }

    public final String b() {
        return this.f5206a;
    }

    public final File c() {
        return this.f5209d;
    }

    public final int d() {
        return this.f5208c;
    }

    public final long e() {
        return this.f5210e;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof w) {
                w wVar = (w) obj;
                if (j.a((Object) this.f5206a, (Object) wVar.f5206a) && j.a((Object) this.f5207b, (Object) wVar.f5207b)) {
                    if ((this.f5208c == wVar.f5208c) && j.a((Object) this.f5209d, (Object) wVar.f5209d)) {
                        if (this.f5210e == wVar.f5210e) {
                            if (this.f5211f == wVar.f5211f) {
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final HttpURLConnection f() {
        return this.f5207b;
    }

    public int hashCode() {
        String str = this.f5206a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        HttpURLConnection httpURLConnection = this.f5207b;
        int hashCode2 = (((hashCode + (httpURLConnection != null ? httpURLConnection.hashCode() : 0)) * 31) + this.f5208c) * 31;
        File file = this.f5209d;
        if (file != null) {
            i2 = file.hashCode();
        }
        long j2 = this.f5210e;
        long j3 = this.f5211f;
        return ((((hashCode2 + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)));
    }

    public String toString() {
        return "PartDownloadModel(entityId=" + this.f5206a + ", urlConnection=" + this.f5207b + ", part=" + this.f5208c + ", file=" + this.f5209d + ", startRange=" + this.f5210e + ", endRange=" + this.f5211f + ")";
    }
}
