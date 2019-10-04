package com.koushikdutta.async.http;

import java.util.Hashtable;
import java.util.Locale;

public enum Protocol {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3 {
        public final boolean needsSpdyConnection() {
            return true;
        }
    },
    HTTP_2 {
        public final boolean needsSpdyConnection() {
            return true;
        }
    };
    

    /* renamed from: b  reason: collision with root package name */
    private static final Hashtable<String, Protocol> f4575b = null;

    /* renamed from: a  reason: collision with root package name */
    private final String f4576a;

    public boolean needsSpdyConnection() {
        return false;
    }

    static {
        Hashtable<String, Protocol> hashtable = new Hashtable<>();
        f4575b = hashtable;
        hashtable.put(HTTP_1_0.toString(), HTTP_1_0);
        f4575b.put(HTTP_1_1.toString(), HTTP_1_1);
        f4575b.put(SPDY_3.toString(), SPDY_3);
        f4575b.put(HTTP_2.toString(), HTTP_2);
    }

    private Protocol(String str) {
        this.f4576a = str;
    }

    public static Protocol get(String str) {
        if (str == null) {
            return null;
        }
        return f4575b.get(str.toLowerCase(Locale.US));
    }

    public String toString() {
        return this.f4576a;
    }
}
