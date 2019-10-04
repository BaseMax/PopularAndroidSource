package com.koushikdutta.async.http;

import com.koushikdutta.async.j;
import com.koushikdutta.async.n;

public interface e extends n {
    int code();

    j detachSocket();

    d getRequest();

    n headers();

    String message();

    String protocol();
}
