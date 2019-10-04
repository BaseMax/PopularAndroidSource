package c.b.a.c.c;

import c.b.a.c.c.i;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/* compiled from: FileLoader */
class k implements i.d<InputStream> {
    public InputStream a(File file) {
        return new FileInputStream(file);
    }

    public void a(InputStream inputStream) {
        inputStream.close();
    }

    public Class<InputStream> a() {
        return InputStream.class;
    }
}
