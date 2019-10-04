package com.koushikdutta.async.http;

import com.koushikdutta.async.h;
import com.koushikdutta.async.http.a.e;
import com.koushikdutta.async.http.a.f;
import com.koushikdutta.async.http.a.j;
import com.koushikdutta.async.http.a.l;
import com.koushikdutta.async.http.d.b;
import com.koushikdutta.async.http.d.d;
import com.koushikdutta.async.http.d.g;
import com.koushikdutta.async.n;
import com.koushikdutta.async.v;
import io.fabric.sdk.android.services.network.c;

public final class q {

    static class a extends v {
        private a() {
        }

        public static a create(h hVar, final Exception exc) {
            a aVar = new a();
            hVar.post(new Runnable(aVar) {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ a f4764a;

                {
                    this.f4764a = r1;
                }

                public final void run() {
                    this.f4764a.report(exc);
                }
            });
            return aVar;
        }
    }

    public static com.koushikdutta.async.http.a.a getBody(n nVar, com.koushikdutta.async.a.a aVar, n nVar2) {
        String str = nVar2.get(c.HEADER_CONTENT_TYPE);
        if (str != null) {
            String[] split = str.split(";");
            for (int i = 0; i < split.length; i++) {
                split[i] = split[i].trim();
            }
            for (String str2 : split) {
                if ("application/x-www-form-urlencoded".equals(str2)) {
                    return new l();
                }
                if ("application/json".equals(str2)) {
                    return new e();
                }
                if (j.CONTENT_TYPE.equals(str2)) {
                    return new j();
                }
                if (f.CONTENT_TYPE.equals(str2)) {
                    return new f(split);
                }
            }
        }
        return null;
    }

    public static n getBodyDecoder(n nVar, Protocol protocol, n nVar2, boolean z) {
        long j;
        d dVar;
        com.koushikdutta.async.http.d.f fVar;
        try {
            j = Long.parseLong(nVar2.get(c.HEADER_CONTENT_LENGTH));
        } catch (Exception unused) {
            j = -1;
        }
        if (-1 != j) {
            if (j < 0) {
                a create = a.create(nVar.getServer(), new k("not using chunked encoding, and no content-length found."));
                create.setDataEmitter(nVar);
                return create;
            } else if (j == 0) {
                a create2 = a.create(nVar.getServer(), null);
                create2.setDataEmitter(nVar);
                return create2;
            } else {
                d dVar2 = new d(j);
                dVar2.setDataEmitter(nVar);
                dVar = dVar2;
            }
        } else if ("chunked".equalsIgnoreCase(nVar2.get("Transfer-Encoding"))) {
            b bVar = new b();
            bVar.setDataEmitter(nVar);
            dVar = bVar;
        } else if ((z || protocol == Protocol.HTTP_1_1) && !"close".equalsIgnoreCase(nVar2.get("Connection"))) {
            a create3 = a.create(nVar.getServer(), null);
            create3.setDataEmitter(nVar);
            return create3;
        } else {
            dVar = nVar;
        }
        if (c.ENCODING_GZIP.equals(nVar2.get(c.HEADER_CONTENT_ENCODING))) {
            com.koushikdutta.async.http.d.f fVar2 = new com.koushikdutta.async.http.d.f();
            fVar2.setDataEmitter(dVar);
            fVar = fVar2;
        } else if ("deflate".equals(nVar2.get(c.HEADER_CONTENT_ENCODING))) {
            g gVar = new g();
            gVar.setDataEmitter(dVar);
            fVar = gVar;
        } else {
            fVar = dVar;
        }
        return fVar;
    }

    public static boolean isKeepAlive(Protocol protocol, n nVar) {
        String str = nVar.get("Connection");
        if (str == null) {
            return protocol == Protocol.HTTP_1_1;
        }
        return "keep-alive".equalsIgnoreCase(str);
    }

    public static boolean isKeepAlive(String str, n nVar) {
        String str2 = nVar.get("Connection");
        if (str2 == null) {
            return Protocol.get(str) == Protocol.HTTP_1_1;
        }
        return "keep-alive".equalsIgnoreCase(str2);
    }

    public static int contentLength(n nVar) {
        String str = nVar.get(c.HEADER_CONTENT_LENGTH);
        if (str == null) {
            return -1;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }
}
