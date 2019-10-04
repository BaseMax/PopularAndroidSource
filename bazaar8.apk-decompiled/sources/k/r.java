package k;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Okio */
class r extends C1156c {

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ Socket f15758k;

    public r(Socket socket) {
        this.f15758k = socket;
    }

    public IOException b(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    public void j() {
        try {
            this.f15758k.close();
        } catch (Exception e2) {
            Logger logger = s.f15759a;
            Level level = Level.WARNING;
            logger.log(level, "Failed to close timed out socket " + this.f15758k, e2);
        } catch (AssertionError e3) {
            if (s.a(e3)) {
                Logger logger2 = s.f15759a;
                Level level2 = Level.WARNING;
                logger2.log(level2, "Failed to close timed out socket " + this.f15758k, e3);
                return;
            }
            throw e3;
        }
    }
}
