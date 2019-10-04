package com.mapbox.android.telemetry;

import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

final class af {

    /* renamed from: a  reason: collision with root package name */
    static final MediaType f4948a = MediaType.parse("application/json; charset=utf-8");

    /* renamed from: b  reason: collision with root package name */
    String f4949b;
    String c;
    ai d;
    e e;
    private final w f;

    af(String str, String str2, ai aiVar, w wVar, e eVar) {
        this.f4949b = str;
        this.c = str2;
        this.d = aiVar;
        this.f = wVar;
        this.e = eVar;
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        return this.d.g || this.d.f4958a.equals(o.STAGING);
    }

    static RequestBody a(MultipartBody.Builder builder) {
        MultipartBody build = builder.build();
        MultipartBody.Builder type = new MultipartBody.Builder("--01ead4a5-7a67-4703-ad02-589886e00923").setType(MultipartBody.FORM);
        for (int size = build.size() - 1; size >= 0; size--) {
            type.addPart(build.part(size));
        }
        return type.build();
    }
}
