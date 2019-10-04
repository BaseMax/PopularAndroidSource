package com.koushikdutta.ion.future;

import com.koushikdutta.async.b.e;
import com.koushikdutta.ion.Response;

public interface ResponseFuture<T> extends e<T> {
    e<Response<T>> withResponse();
}
