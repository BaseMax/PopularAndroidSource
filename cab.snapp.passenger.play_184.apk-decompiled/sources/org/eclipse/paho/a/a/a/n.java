package org.eclipse.paho.a.a.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.eclipse.paho.a.a.p;

public interface n {
    InputStream getInputStream() throws IOException;

    OutputStream getOutputStream() throws IOException;

    String getServerURI();

    void start() throws IOException, p;

    void stop() throws IOException;
}
