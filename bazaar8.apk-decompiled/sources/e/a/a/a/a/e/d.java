package e.a.a.a.a.e;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: HttpRequest */
class d extends HttpRequest.a<HttpRequest> {

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ InputStream f13757c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ OutputStream f13758d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ HttpRequest f13759e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(HttpRequest httpRequest, Closeable closeable, boolean z, InputStream inputStream, OutputStream outputStream) {
        super(closeable, z);
        this.f13759e = httpRequest;
        this.f13757c = inputStream;
        this.f13758d = outputStream;
    }

    public HttpRequest b() {
        byte[] bArr = new byte[this.f13759e.f14936j];
        while (true) {
            int read = this.f13757c.read(bArr);
            if (read == -1) {
                return this.f13759e;
            }
            this.f13758d.write(bArr, 0, read);
        }
    }
}
