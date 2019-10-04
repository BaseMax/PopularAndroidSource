package b;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public interface u extends Closeable, Flushable {
    void close() throws IOException;

    void flush() throws IOException;

    w timeout();

    void write(c cVar, long j) throws IOException;
}
