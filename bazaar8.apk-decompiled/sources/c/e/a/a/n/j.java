package c.e.a.a.n;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* compiled from: DataSource */
public interface j {

    /* compiled from: DataSource */
    public interface a {
        j a();
    }

    long a(l lVar);

    Map<String, List<String>> a();

    void a(A a2);

    void close();

    Uri getUri();

    int read(byte[] bArr, int i2, int i3);
}
