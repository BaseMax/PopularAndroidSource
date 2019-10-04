package b;

import java.io.Closeable;
import java.io.IOException;

public interface v extends Closeable {
    void close() throws IOException;

    long read(c cVar, long j) throws IOException;

    w timeout();
}
