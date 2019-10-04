package com.yandex.metrica.impl.ob;

import android.net.Uri;
import com.yandex.metrica.impl.at;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.bp;
import com.yandex.metrica.impl.p;
import io.fabric.sdk.android.services.network.c;
import java.util.Collection;

public class bo extends at {

    /* renamed from: a  reason: collision with root package name */
    private final br f5893a;

    /* renamed from: b  reason: collision with root package name */
    private final i f5894b;
    private final bs c;
    private final bp.a l;
    private final nq m;
    private nd n;
    private final String o;
    private bq p;

    public bo(br brVar, i iVar, bs bsVar) {
        this(brVar, iVar, bsVar, new bp.a(), new np(), new nd());
    }

    public bo(br brVar, i iVar, bs bsVar, bp.a aVar, nq nqVar, nd ndVar) {
        super(new p());
        this.f5893a = brVar;
        this.f5894b = iVar;
        this.c = bsVar;
        this.l = aVar;
        this.m = nqVar;
        this.n = ndVar;
        this.o = getClass().getName() + "@" + Integer.toHexString(hashCode());
    }

    public boolean b() {
        this.p = this.f5893a.g();
        if (!(this.p.e() && !bv.a((Collection) this.p.a()))) {
            return false;
        }
        a(this.p.a());
        byte[] a2 = this.l.a(this.f5894b, this.p, this.c).a();
        byte[] bArr = null;
        try {
            bArr = this.n.a(a2);
        } catch (Exception unused) {
        }
        if (!bv.a(bArr)) {
            a(c.HEADER_CONTENT_ENCODING, c.ENCODING_GZIP);
            a2 = bArr;
        }
        a(a2);
        return true;
    }

    public void e() {
        super.e();
        a(Long.valueOf(this.m.a()));
    }

    public void a(Uri.Builder builder) {
        builder.appendPath("diagnostic");
        builder.appendQueryParameter("deviceid", this.p.q());
        builder.appendQueryParameter("uuid", this.p.r());
        builder.appendQueryParameter("app_platform", this.p.k());
        builder.appendQueryParameter("analytics_sdk_version_name", this.p.h());
        builder.appendQueryParameter("analytics_sdk_build_number", this.p.i());
        builder.appendQueryParameter("analytics_sdk_build_type", this.p.j());
        builder.appendQueryParameter("app_version_name", this.p.p());
        builder.appendQueryParameter("app_build_number", this.p.o());
        builder.appendQueryParameter("model", this.p.l());
        builder.appendQueryParameter("manufacturer", this.p.f());
        builder.appendQueryParameter("os_version", this.p.m());
        builder.appendQueryParameter("os_api_level", String.valueOf(this.p.n()));
        builder.appendQueryParameter("screen_width", String.valueOf(this.p.u()));
        builder.appendQueryParameter("screen_height", String.valueOf(this.p.v()));
        builder.appendQueryParameter("screen_dpi", String.valueOf(this.p.w()));
        builder.appendQueryParameter("scalefactor", String.valueOf(this.p.x()));
        builder.appendQueryParameter("locale", this.p.y());
        builder.appendQueryParameter("device_type", this.p.A());
        builder.appendQueryParameter("app_id", this.p.c());
        builder.appendQueryParameter("api_key_128", this.p.b());
        builder.appendQueryParameter("app_debuggable", this.p.C());
        builder.appendQueryParameter("is_rooted", this.p.s());
        builder.appendQueryParameter("app_framework", this.p.t());
    }

    public String a() {
        return this.o;
    }
}
