package b;

import java.io.IOException;

public abstract class h implements u {
    private final u delegate;

    public h(u uVar) {
        if (uVar != null) {
            this.delegate = uVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final u delegate() {
        return this.delegate;
    }

    public void write(c cVar, long j) throws IOException {
        this.delegate.write(cVar, j);
    }

    public void flush() throws IOException {
        this.delegate.flush();
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
