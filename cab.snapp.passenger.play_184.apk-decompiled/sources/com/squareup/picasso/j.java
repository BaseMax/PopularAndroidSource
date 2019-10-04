package com.squareup.picasso;

import java.io.IOException;
import okhttp3.Request;
import okhttp3.Response;

public interface j {
    Response load(Request request) throws IOException;

    void shutdown();
}
