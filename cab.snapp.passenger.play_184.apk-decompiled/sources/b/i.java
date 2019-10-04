package b;

import java.io.IOException;

public abstract class i implements v {
    private final v delegate;

    public i(v vVar) {
        if (vVar != null) {
            this.delegate = vVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final v delegate() {
        return this.delegate;
    }

    public long read(c cVar, long j) throws IOException {
        return this.delegate.read(cVar, j);
    }

    public w timeout() {
        return this.delegate.timeout();
    }

    public void close() throws IOException {
        this.delegate.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
    }
}
