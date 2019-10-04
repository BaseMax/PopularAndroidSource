package com.facebook.crypto;

import java.nio.charset.Charset;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f2470a = Charset.forName("UTF-16");

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f2471b = Charset.forName("UTF-8");
    private byte[] c;

    @Deprecated
    public f(String str) {
        this.c = str.getBytes(f2470a);
    }

    private f(byte[] bArr) {
        this.c = bArr;
    }

    public final byte[] getBytes() {
        return this.c;
    }

    @Deprecated
    public static f utf16(String str) {
        return new f(str);
    }

    public static f create(String str) {
        return new f(str.getBytes(f2471b));
    }
}
