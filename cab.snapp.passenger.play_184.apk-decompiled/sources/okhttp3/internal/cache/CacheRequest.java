package okhttp3.internal.cache;

import b.u;
import java.io.IOException;

public interface CacheRequest {
    void abort();

    u body() throws IOException;
}
