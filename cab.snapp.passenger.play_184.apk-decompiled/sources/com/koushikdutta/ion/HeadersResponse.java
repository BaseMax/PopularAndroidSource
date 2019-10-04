package com.koushikdutta.ion;

import com.koushikdutta.async.http.n;

public class HeadersResponse {
    int code;
    n headers;
    String message;

    public HeadersResponse(int i, String str, n nVar) {
        this.headers = nVar;
        this.code = i;
        this.message = str;
    }

    public n getHeaders() {
        return this.headers;
    }

    public int code() {
        return this.code;
    }

    public HeadersResponse code(int i) {
        this.code = i;
        return this;
    }

    public String message() {
        return this.message;
    }

    public HeadersResponse message(String str) {
        this.message = str;
        return this;
    }
}
