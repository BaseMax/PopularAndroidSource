package cab.snapp.deeplink.models;

import cab.snapp.deeplink.models.types.Host;
import cab.snapp.deeplink.models.types.Scheme;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private Scheme f234a;

    /* renamed from: b  reason: collision with root package name */
    private Host f235b;
    private c c;
    private c d;
    private c e;

    public a(Scheme scheme, Host host, c cVar, c cVar2, c cVar3) {
        this.f234a = scheme;
        this.f235b = host;
        this.c = cVar;
        this.d = cVar2;
        this.e = cVar3;
    }

    public final Scheme getScheme() {
        return this.f234a;
    }

    public final Host getHost() {
        return this.f235b;
    }

    public final c getPath1() {
        return this.c;
    }

    public final c getPath2() {
        return this.d;
    }

    public final c getPath3() {
        return this.e;
    }
}
