package b.C.a;

import android.database.Cursor;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;

/* compiled from: SupportSQLiteDatabase */
public interface b extends Closeable {
    Cursor a(e eVar);

    void b(String str);

    f c(String str);

    Cursor d(String str);

    String getPath();

    boolean isOpen();

    void n();

    List<Pair<String, String>> o();

    void p();

    void q();

    boolean r();
}
