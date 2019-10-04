package com.koushikdutta.ion.mock;

import com.koushikdutta.async.http.d;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.Loader;
import com.koushikdutta.ion.future.ResponseFuture;
import com.koushikdutta.ion.loader.SimpleLoader;
import java.lang.reflect.Type;

public class MockLoader extends SimpleLoader {
    MockRequestHandler requestHandler;

    public static void install(Ion ion, MockRequestHandler mockRequestHandler) {
        MockLoader mockLoader = new MockLoader(mockRequestHandler);
        for (Loader loader : ion.configure().getLoaders()) {
            if (loader instanceof MockLoader) {
                throw new RuntimeException("MockLoader already installed.");
            }
        }
        ion.configure().addLoader(0, mockLoader);
    }

    private MockLoader(MockRequestHandler mockRequestHandler) {
        this.requestHandler = mockRequestHandler;
    }

    public <T> ResponseFuture<T> load(Ion ion, d dVar, Type type) {
        Object request = this.requestHandler.request(dVar.getUri().toString());
        if (request == null) {
            return super.load(ion, dVar, type);
        }
        MockResponseFuture mockResponseFuture = new MockResponseFuture(dVar);
        mockResponseFuture.setComplete(request);
        return mockResponseFuture;
    }
}
