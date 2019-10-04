package com.ihsanbal.logging;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class d implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4427a;

    /* renamed from: b  reason: collision with root package name */
    private final a f4428b;

    public static class a {
        private static String g = "LoggingI";

        /* renamed from: a  reason: collision with root package name */
        final HashMap<String, String> f4437a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        final HashMap<String, String> f4438b = new HashMap<>();
        boolean c = false;
        int d = 4;
        Level e = Level.BASIC;
        c f;
        /* access modifiers changed from: private */
        public boolean h;
        private String i;
        private String j;
        /* access modifiers changed from: private */
        public Executor k;
        /* access modifiers changed from: private */
        public boolean l;
        /* access modifiers changed from: private */
        public long m;
        /* access modifiers changed from: private */
        public a n;

        public final a setLevel(Level level) {
            this.e = level;
            return this;
        }

        /* access modifiers changed from: package-private */
        public final String a(boolean z) {
            return z ? f.a(this.i) ? g : this.i : f.a(this.j) ? g : this.j;
        }

        public final a addHeader(String str, String str2) {
            this.f4437a.put(str, str2);
            return this;
        }

        public final a addQueryParam(String str, String str2) {
            this.f4438b.put(str, str2);
            return this;
        }

        public final a tag(String str) {
            g = str;
            return this;
        }

        public final a request(String str) {
            this.i = str;
            return this;
        }

        public final a response(String str) {
            this.j = str;
            return this;
        }

        public final a loggable(boolean z) {
            this.h = z;
            return this;
        }

        public final a log(int i2) {
            this.d = i2;
            return this;
        }

        public final a logger(c cVar) {
            this.f = cVar;
            return this;
        }

        public final a executor(Executor executor) {
            this.k = executor;
            return this;
        }

        public final a enableMock(boolean z, long j2, a aVar) {
            this.l = z;
            this.m = j2;
            this.n = aVar;
            return this;
        }

        public final a enableAndroidStudio_v3_LogsHack(boolean z) {
            this.c = z;
            return this;
        }

        public final d build() {
            return new d(this, (byte) 0);
        }
    }

    /* synthetic */ d(a aVar, byte b2) {
        this(aVar);
    }

    private d(a aVar) {
        this.f4428b = aVar;
        this.f4427a = aVar.h;
    }

    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Response response;
        MediaType mediaType;
        Interceptor.Chain chain2 = chain;
        Request request = chain.request();
        HashMap<String, String> hashMap = this.f4428b.f4437a;
        if (hashMap.size() > 0) {
            Request.Builder newBuilder = request.newBuilder();
            for (String next : hashMap.keySet()) {
                newBuilder.addHeader(next, hashMap.get(next));
            }
            request = newBuilder.build();
        }
        HashMap<String, String> hashMap2 = this.f4428b.f4438b;
        if (hashMap2.size() > 0) {
            HttpUrl.Builder newBuilder2 = request.url().newBuilder(request.url().toString());
            for (String next2 : hashMap2.keySet()) {
                newBuilder2.addQueryParameter(next2, hashMap2.get(next2));
            }
            request = request.newBuilder().url(newBuilder2.build()).build();
        }
        final Request request2 = request;
        if (!this.f4427a || this.f4428b.e == Level.NONE) {
            return chain2.proceed(request2);
        }
        RequestBody body = request2.body();
        String str = null;
        String subtype = (body == null || body.contentType() == null) ? null : body.contentType().subtype();
        Executor b2 = this.f4428b.k;
        if (a(subtype)) {
            if (b2 != null) {
                final a aVar = this.f4428b;
                b2.execute(new Runnable() {
                    public final void run() {
                        e.a(aVar, request2);
                    }
                });
            } else {
                e.a(this.f4428b, request2);
            }
        } else if (b2 != null) {
            final a aVar2 = this.f4428b;
            b2.execute(new Runnable() {
                public final void run() {
                    e.b(aVar2, request2);
                }
            });
        } else {
            e.b(this.f4428b, request2);
        }
        long nanoTime = System.nanoTime();
        if (this.f4428b.l) {
            try {
                TimeUnit.MILLISECONDS.sleep(this.f4428b.m);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            response = new Response.Builder().body(ResponseBody.create(MediaType.parse("application/json"), this.f4428b.n.getJsonResponse(request2))).request(chain.request()).protocol(Protocol.HTTP_2).message("Mock").code(200).build();
        } else {
            response = chain2.proceed(request2);
        }
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
        List<String> encodedPathSegments = request2.url().encodedPathSegments();
        String headers = response.headers().toString();
        int code = response.code();
        boolean isSuccessful = response.isSuccessful();
        final String message = response.message();
        ResponseBody body2 = response.body();
        MediaType contentType = body2.contentType();
        if (contentType != null) {
            str = contentType.subtype();
        }
        if (a(str)) {
            String a2 = e.a(body2.string());
            final String httpUrl = response.request().url().toString();
            if (b2 != null) {
                final a aVar3 = this.f4428b;
                final long j = millis;
                AnonymousClass3 r6 = r10;
                final boolean z = isSuccessful;
                MediaType mediaType2 = contentType;
                final int i = code;
                final String str2 = headers;
                final String str3 = a2;
                final List<String> list = encodedPathSegments;
                AnonymousClass3 r10 = new Runnable() {
                    public final void run() {
                        e.a(aVar3, j, z, i, str2, str3, list, message, httpUrl);
                    }
                };
                b2.execute(r6);
                mediaType = mediaType2;
            } else {
                mediaType = contentType;
                e.a(this.f4428b, millis, isSuccessful, code, headers, a2, encodedPathSegments, message, httpUrl);
            }
            return response.newBuilder().body(ResponseBody.create(mediaType, a2)).build();
        }
        if (b2 != null) {
            final a aVar4 = this.f4428b;
            final long j2 = millis;
            final boolean z2 = isSuccessful;
            final int i2 = code;
            final String str4 = headers;
            final List<String> list2 = encodedPathSegments;
            final String str5 = message;
            AnonymousClass4 r102 = new Runnable() {
                public final void run() {
                    e.a(aVar4, j2, z2, i2, str4, (List<String>) list2, str5);
                }
            };
            b2.execute(r102);
        } else {
            e.a(this.f4428b, millis, isSuccessful, code, headers, encodedPathSegments, message);
        }
        return response;
    }

    private static boolean a(String str) {
        return str != null && (str.contains("json") || str.contains("xml") || str.contains("plain") || str.contains("html"));
    }
}
