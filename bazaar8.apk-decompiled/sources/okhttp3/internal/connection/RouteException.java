package okhttp3.internal.connection;

import j.a.e;
import java.io.IOException;

public final class RouteException extends RuntimeException {
    public IOException firstException;
    public IOException lastException;

    public RouteException(IOException iOException) {
        super(iOException);
        this.firstException = iOException;
        this.lastException = iOException;
    }

    public IOException a() {
        return this.firstException;
    }

    public IOException b() {
        return this.lastException;
    }

    public void a(IOException iOException) {
        e.a((Throwable) this.firstException, (Throwable) iOException);
        this.lastException = iOException;
    }
}
