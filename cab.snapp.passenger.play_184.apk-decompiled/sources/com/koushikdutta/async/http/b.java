package com.koushikdutta.async.http;

import com.koushikdutta.async.e.i;
import com.koushikdutta.async.j;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;

public interface b {

    public static class a extends e {
        public com.koushikdutta.async.a.b connectCallback;
        public String protocol;
        public com.koushikdutta.async.b.a socketCancellable;
    }

    /* renamed from: com.koushikdutta.async.http.b$b  reason: collision with other inner class name */
    public static class C0087b extends d {
        public n bodyEmitter;
    }

    public static class c extends a {
        public com.koushikdutta.async.a.a receiveHeadersCallback;
        public h response;
        public com.koushikdutta.async.a.a sendHeadersCallback;
        public j socket;
    }

    public static class d extends f {
    }

    public static class e {
        public d request;
        public i state = new i();
    }

    public static class f extends c {
    }

    public static class g extends C0087b {
        public Exception exception;
    }

    public interface h {
        int code();

        h code(int i);

        h emitter(n nVar);

        n emitter();

        h headers(n nVar);

        n headers();

        h message(String str);

        String message();

        h protocol(String str);

        String protocol();

        h sink(q qVar);

        q sink();

        j socket();
    }

    boolean exchangeHeaders(c cVar);

    com.koushikdutta.async.b.a getSocket(a aVar);

    void onBodyDecoder(C0087b bVar);

    void onHeadersReceived(d dVar);

    void onRequest(e eVar);

    void onRequestSent(f fVar);

    void onResponseComplete(g gVar);
}
