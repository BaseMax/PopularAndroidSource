package b;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

public final class n {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f150a = Logger.getLogger(n.class.getName());

    private n() {
    }

    public static e buffer(v vVar) {
        return new q(vVar);
    }

    public static d buffer(u uVar) {
        return new p(uVar);
    }

    public static u sink(OutputStream outputStream) {
        return a(outputStream, new w());
    }

    private static u a(final OutputStream outputStream, final w wVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        } else if (wVar != null) {
            return new u() {
                public final void write(c cVar, long j) throws IOException {
                    x.checkOffsetAndCount(cVar.f135b, 0, j);
                    while (j > 0) {
                        w.this.throwIfReached();
                        r rVar = cVar.f134a;
                        int min = (int) Math.min(j, (long) (rVar.c - rVar.f163b));
                        outputStream.write(rVar.f162a, rVar.f163b, min);
                        rVar.f163b += min;
                        long j2 = (long) min;
                        j -= j2;
                        cVar.f135b -= j2;
                        if (rVar.f163b == rVar.c) {
                            cVar.f134a = rVar.pop();
                            s.a(rVar);
                        }
                    }
                }

                public final void flush() throws IOException {
                    outputStream.flush();
                }

                public final void close() throws IOException {
                    outputStream.close();
                }

                public final w timeout() {
                    return w.this;
                }

                public final String toString() {
                    return "sink(" + outputStream + ")";
                }
            };
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    public static u sink(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getOutputStream() != null) {
            a a2 = a(socket);
            return a2.sink(a(socket.getOutputStream(), (w) a2));
        } else {
            throw new IOException("socket's output stream == null");
        }
    }

    public static v source(InputStream inputStream) {
        return a(inputStream, new w());
    }

    private static v a(final InputStream inputStream, final w wVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (wVar != null) {
            return new v() {
                public final long read(c cVar, long j) throws IOException {
                    if (j < 0) {
                        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
                    } else if (j == 0) {
                        return 0;
                    } else {
                        try {
                            w.this.throwIfReached();
                            r a2 = cVar.a(1);
                            int read = inputStream.read(a2.f162a, a2.c, (int) Math.min(j, (long) (8192 - a2.c)));
                            if (read == -1) {
                                return -1;
                            }
                            a2.c += read;
                            long j2 = (long) read;
                            cVar.f135b += j2;
                            return j2;
                        } catch (AssertionError e) {
                            if (n.a(e)) {
                                throw new IOException(e);
                            }
                            throw e;
                        }
                    }
                }

                public final void close() throws IOException {
                    inputStream.close();
                }

                public final w timeout() {
                    return w.this;
                }

                public final String toString() {
                    return "source(" + inputStream + ")";
                }
            };
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    public static v source(File file) throws FileNotFoundException {
        if (file != null) {
            return source((InputStream) new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static v source(Path path, OpenOption... openOptionArr) throws IOException {
        if (path != null) {
            return source(Files.newInputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    public static u sink(File file) throws FileNotFoundException {
        if (file != null) {
            return sink((OutputStream) new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static u appendingSink(File file) throws FileNotFoundException {
        if (file != null) {
            return sink((OutputStream) new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static u sink(Path path, OpenOption... openOptionArr) throws IOException {
        if (path != null) {
            return sink(Files.newOutputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    public static u blackhole() {
        return new u() {
            public final void close() throws IOException {
            }

            public final void flush() throws IOException {
            }

            public final void write(c cVar, long j) throws IOException {
                cVar.skip(j);
            }

            public final w timeout() {
                return w.NONE;
            }
        };
    }

    public static v source(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getInputStream() != null) {
            a a2 = a(socket);
            return a2.source(a(socket.getInputStream(), (w) a2));
        } else {
            throw new IOException("socket's input stream == null");
        }
    }

    private static a a(final Socket socket) {
        return new a() {
            /* access modifiers changed from: protected */
            public final IOException newTimeoutException(@Nullable IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            /* access modifiers changed from: protected */
            public final void timedOut() {
                try {
                    socket.close();
                } catch (Exception e) {
                    Logger logger = n.f150a;
                    Level level = Level.WARNING;
                    logger.log(level, "Failed to close timed out socket " + socket, e);
                } catch (AssertionError e2) {
                    if (n.a(e2)) {
                        Logger logger2 = n.f150a;
                        Level level2 = Level.WARNING;
                        logger2.log(level2, "Failed to close timed out socket " + socket, e2);
                        return;
                    }
                    throw e2;
                }
            }
        };
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
