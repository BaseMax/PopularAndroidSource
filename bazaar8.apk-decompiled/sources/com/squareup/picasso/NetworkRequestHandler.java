package com.squareup.picasso;

import android.net.NetworkInfo;
import c.f.a.G;
import c.f.a.I;
import c.f.a.L;
import c.f.a.r;
import com.squareup.picasso.Picasso;
import j.C1141h;
import j.L;
import j.P;
import j.S;
import java.io.IOException;
import k.z;

public class NetworkRequestHandler extends I {

    /* renamed from: a  reason: collision with root package name */
    public final r f13600a;

    /* renamed from: b  reason: collision with root package name */
    public final L f13601b;

    static class ContentLengthException extends IOException {
        public ContentLengthException(String str) {
            super(str);
        }
    }

    static final class ResponseException extends IOException {
        public final int code;
        public final int networkPolicy;

        public ResponseException(int i2, int i3) {
            super("HTTP " + i2);
            this.code = i2;
            this.networkPolicy = i3;
        }
    }

    public NetworkRequestHandler(r rVar, L l2) {
        this.f13600a = rVar;
        this.f13601b = l2;
    }

    public static j.L b(G g2, int i2) {
        C1141h hVar;
        if (i2 == 0) {
            hVar = null;
        } else if (NetworkPolicy.a(i2)) {
            hVar = C1141h.f15636b;
        } else {
            C1141h.a aVar = new C1141h.a();
            if (!NetworkPolicy.b(i2)) {
                aVar.b();
            }
            if (!NetworkPolicy.c(i2)) {
                aVar.c();
            }
            hVar = aVar.a();
        }
        L.a aVar2 = new L.a();
        aVar2.b(g2.f11892e.toString());
        if (hVar != null) {
            aVar2.a(hVar);
        }
        return aVar2.a();
    }

    public int a() {
        return 2;
    }

    public boolean a(G g2) {
        String scheme = g2.f11892e.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    public boolean b() {
        return true;
    }

    public I.a a(G g2, int i2) {
        P a2 = this.f13600a.a(b(g2, i2));
        S s = a2.s();
        if (a2.y()) {
            Picasso.LoadedFrom loadedFrom = a2.u() == null ? Picasso.LoadedFrom.NETWORK : Picasso.LoadedFrom.DISK;
            if (loadedFrom == Picasso.LoadedFrom.DISK && s.u() == 0) {
                s.close();
                throw new ContentLengthException("Received response with 0 content-length header.");
            }
            if (loadedFrom == Picasso.LoadedFrom.NETWORK && s.u() > 0) {
                this.f13601b.a(s.u());
            }
            return new I.a((z) s.w(), loadedFrom);
        }
        s.close();
        throw new ResponseException(a2.v(), g2.f11891d);
    }

    public boolean a(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }
}
