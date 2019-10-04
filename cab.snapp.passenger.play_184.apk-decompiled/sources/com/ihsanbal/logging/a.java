package com.ihsanbal.logging;

import java.io.IOException;
import okhttp3.Request;

public interface a {
    String getJsonResponse(Request request) throws IOException;
}
