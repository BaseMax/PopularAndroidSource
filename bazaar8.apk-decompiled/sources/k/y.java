package k;

import java.io.Closeable;
import java.io.Flushable;

/* compiled from: Sink */
public interface y extends Closeable, Flushable {
    void a(g gVar, long j2);

    B b();

    void close();

    void flush();
}
