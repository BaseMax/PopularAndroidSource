package com.koushikdutta.ion;

import com.koushikdutta.async.http.d;

public class Response<T> {
    private Exception exception;
    private HeadersResponse headers;
    private d request;
    private T result;
    private ResponseServedFrom servedFrom;

    public Response(d dVar, ResponseServedFrom responseServedFrom, HeadersResponse headersResponse, Exception exc, T t) {
        this.request = dVar;
        this.servedFrom = responseServedFrom;
        this.headers = headersResponse;
        this.exception = exc;
        this.result = t;
    }

    public ResponseServedFrom getServedFrom() {
        return this.servedFrom;
    }

    public d getRequest() {
        return this.request;
    }

    public T getResult() {
        return this.result;
    }

    public Exception getException() {
        return this.exception;
    }

    public HeadersResponse getHeaders() {
        return this.headers;
    }
}
