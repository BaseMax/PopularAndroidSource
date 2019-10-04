package c.b.a.c.c;

import c.b.a.c.c.C0368c;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* renamed from: c.b.a.c.c.d  reason: case insensitive filesystem */
/* compiled from: ByteArrayLoader */
class C0369d implements C0368c.b<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0368c.d f4078a;

    public C0369d(C0368c.d dVar) {
        this.f4078a = dVar;
    }

    public InputStream a(byte[] bArr) {
        return new ByteArrayInputStream(bArr);
    }

    public Class<InputStream> a() {
        return InputStream.class;
    }
}
