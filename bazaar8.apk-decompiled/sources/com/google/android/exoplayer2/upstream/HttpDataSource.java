package com.google.android.exoplayer2.upstream;

import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.o.x;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface HttpDataSource extends j {

    /* renamed from: b  reason: collision with root package name */
    public static final x<String> f12870b = c.e.a.a.n.c.f9450a;

    public static class HttpDataSourceException extends IOException {
        public final l dataSpec;
        public final int type;

        public HttpDataSourceException(String str, l lVar, int i2) {
            super(str);
            this.dataSpec = lVar;
            this.type = i2;
        }

        public HttpDataSourceException(IOException iOException, l lVar, int i2) {
            super(iOException);
            this.dataSpec = lVar;
            this.type = i2;
        }

        public HttpDataSourceException(String str, IOException iOException, l lVar, int i2) {
            super(str, iOException);
            this.dataSpec = lVar;
            this.type = i2;
        }
    }

    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        public InvalidContentTypeException(String str, l lVar) {
            super("Invalid content type: " + str, lVar, 1);
            this.contentType = str;
        }
    }

    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final int responseCode;
        public final String responseMessage;

        public InvalidResponseCodeException(int i2, String str, Map<String, List<String>> map, l lVar) {
            super("Response code: " + i2, lVar, 1);
            this.responseCode = i2;
            this.responseMessage = str;
            this.headerFields = map;
        }
    }

    public static abstract class a implements b {

        /* renamed from: a  reason: collision with root package name */
        public final c f12871a = new c();

        public abstract HttpDataSource a(c cVar);

        public final HttpDataSource a() {
            return a(this.f12871a);
        }
    }

    public interface b extends j.a {
    }

    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final Map<String, String> f12872a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        public Map<String, String> f12873b;

        public synchronized Map<String, String> a() {
            if (this.f12873b == null) {
                this.f12873b = Collections.unmodifiableMap(new HashMap(this.f12872a));
            }
            return this.f12873b;
        }
    }
}
