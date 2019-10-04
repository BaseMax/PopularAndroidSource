package com.bumptech.glide.load;

import java.io.IOException;

public final class HttpException extends IOException {
    public static final long serialVersionUID = 1;
    public final int statusCode;

    public HttpException(int i2) {
        this("Http request failed with status code: " + i2, i2);
    }

    public HttpException(String str) {
        this(str, -1);
    }

    public HttpException(String str, int i2) {
        this(str, i2, null);
    }

    public HttpException(String str, int i2, Throwable th) {
        super(str, th);
        this.statusCode = i2;
    }
}
