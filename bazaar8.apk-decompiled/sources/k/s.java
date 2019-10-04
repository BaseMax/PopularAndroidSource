package k;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* compiled from: Okio */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f15759a = Logger.getLogger(s.class.getName());

    public static i a(z zVar) {
        return new v(zVar);
    }

    public static y b(File file) {
        if (file != null) {
            return a((OutputStream) new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static z c(File file) {
        if (file != null) {
            return a((InputStream) new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static h a(y yVar) {
        return new t(yVar);
    }

    public static y a(OutputStream outputStream) {
        return a(outputStream, new B());
    }

    public static z b(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getInputStream() != null) {
            C1156c c2 = c(socket);
            return c2.a(a(socket.getInputStream(), (B) c2));
        } else {
            throw new IOException("socket's input stream == null");
        }
    }

    public static C1156c c(Socket socket) {
        return new r(socket);
    }

    public static y a(OutputStream outputStream, B b2) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        } else if (b2 != null) {
            return new o(b2, outputStream);
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    public static y a(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getOutputStream() != null) {
            C1156c c2 = c(socket);
            return c2.a(a(socket.getOutputStream(), (B) c2));
        } else {
            throw new IOException("socket's output stream == null");
        }
    }

    public static z a(InputStream inputStream) {
        return a(inputStream, new B());
    }

    public static z a(InputStream inputStream, B b2) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (b2 != null) {
            return new p(b2, inputStream);
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    public static y a(File file) {
        if (file != null) {
            return a((OutputStream) new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static y a() {
        return new q();
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
