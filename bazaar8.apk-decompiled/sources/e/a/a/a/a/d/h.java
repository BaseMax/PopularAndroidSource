package e.a.a.a.a.d;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

/* compiled from: GZIPQueueFileEventStorage */
public class h extends i {
    public h(Context context, File file, String str, String str2) {
        super(context, file, str, str2);
    }

    public OutputStream a(File file) {
        return new GZIPOutputStream(new FileOutputStream(file));
    }
}
