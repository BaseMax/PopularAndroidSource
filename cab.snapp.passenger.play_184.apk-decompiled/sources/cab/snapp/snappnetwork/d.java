package cab.snapp.snappnetwork;

import cab.snapp.snappnetwork.model.f;
import java.util.HashMap;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    final String f1521a;

    /* renamed from: b  reason: collision with root package name */
    ApiServiceInterface f1522b;
    ApiServiceInterface c;
    private final HashMap<String, String> d;
    private final c e;
    private a f = null;
    private boolean g = false;

    d(c cVar, String str, HashMap<String, String> hashMap) {
        this.f1522b = cVar.getRestClient(true);
        this.c = cVar.getRestClient(false);
        this.e = cVar;
        this.f1521a = str;
        this.d = hashMap;
    }

    public final void setDontParse(boolean z) {
        this.g = z;
    }

    /* access modifiers changed from: package-private */
    public final String a() {
        return this.e.getRefreshTokenAuthenticator().getAccessToken();
    }

    public final void setCustomParser(a aVar) {
        this.f = aVar;
    }

    public final <E extends f> f<E> GET(Class<E> cls) {
        return GET("", cls).setDontParse(this.g).setCustomParser(this.f);
    }

    public final <E extends f> f<E> GET(String str, Class<E> cls) {
        f<E> dontParse = new f(this, 1, str).addHeaders(this.d).setCustomParser(this.f).setDontParse(this.g);
        dontParse.i = cls;
        return dontParse;
    }

    public final <E extends f> f<E> POST(Class<E> cls) {
        return POST("", cls).setCustomParser(this.f);
    }

    public final <E extends f> f<E> POST(String str, Class<E> cls) {
        f<E> dontParse = new f(this, 2, str).addHeaders(this.d).setCustomParser(this.f).setDontParse(this.g);
        dontParse.i = cls;
        return dontParse;
    }

    public final <E extends f> f<E> PUT(Class<E> cls) {
        return PUT("", cls).setDontParse(this.g).setCustomParser(this.f);
    }

    public final <E extends f> f<E> PUT(String str, Class<E> cls) {
        f<E> dontParse = new f(this, 3, str).addHeaders(this.d).setCustomParser(this.f).setDontParse(this.g);
        dontParse.i = cls;
        return dontParse;
    }

    public final <E extends f> f<E> PATCH(Class<E> cls) {
        return PATCH("", cls).setDontParse(this.g).setCustomParser(this.f);
    }

    public final <E extends f> f<E> PATCH(String str, Class<E> cls) {
        f<E> dontParse = new f(this, 4, str).addHeaders(this.d).setCustomParser(this.f).setDontParse(this.g);
        dontParse.i = cls;
        return dontParse;
    }

    public final <E extends f> f<E> DELETE(Class<E> cls) {
        return DELETE("", cls).setDontParse(this.g).setCustomParser(this.f);
    }

    public final <E extends f> f<E> DELETE(String str, Class<E> cls) {
        f<E> dontParse = new f(this, 5, str).addHeaders(this.d).setCustomParser(this.f).setDontParse(this.g);
        dontParse.i = cls;
        return dontParse;
    }
}
