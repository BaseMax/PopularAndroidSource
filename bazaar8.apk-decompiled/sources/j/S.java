package j;

import j.a.e;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import k.g;
import k.i;

/* compiled from: ResponseBody */
public abstract class S implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public Reader f15237a;

    /* compiled from: ResponseBody */
    static final class a extends Reader {

        /* renamed from: a  reason: collision with root package name */
        public final i f15238a;

        /* renamed from: b  reason: collision with root package name */
        public final Charset f15239b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f15240c;

        /* renamed from: d  reason: collision with root package name */
        public Reader f15241d;

        public a(i iVar, Charset charset) {
            this.f15238a = iVar;
            this.f15239b = charset;
        }

        public void close() {
            this.f15240c = true;
            Reader reader = this.f15241d;
            if (reader != null) {
                reader.close();
            } else {
                this.f15238a.close();
            }
        }

        public int read(char[] cArr, int i2, int i3) {
            if (!this.f15240c) {
                Reader reader = this.f15241d;
                if (reader == null) {
                    InputStreamReader inputStreamReader = new InputStreamReader(this.f15238a.k(), e.a(this.f15238a, this.f15239b));
                    this.f15241d = inputStreamReader;
                    reader = inputStreamReader;
                }
                return reader.read(cArr, i2, i3);
            }
            throw new IOException("Stream closed");
        }
    }

    public static S a(F f2, byte[] bArr) {
        g gVar = new g();
        gVar.write(bArr);
        return a(f2, (long) bArr.length, gVar);
    }

    public void close() {
        e.a((Closeable) w());
    }

    public final Reader s() {
        Reader reader = this.f15237a;
        if (reader != null) {
            return reader;
        }
        a aVar = new a(w(), t());
        this.f15237a = aVar;
        return aVar;
    }

    public final Charset t() {
        F v = v();
        return v != null ? v.a(e.f15418j) : e.f15418j;
    }

    public abstract long u();

    public abstract F v();

    public abstract i w();

    public final String x() {
        i w = w();
        try {
            return w.a(e.a(w, t()));
        } finally {
            e.a((Closeable) w);
        }
    }

    public static S a(F f2, long j2, i iVar) {
        if (iVar != null) {
            return new Q(f2, j2, iVar);
        }
        throw new NullPointerException("source == null");
    }
}
