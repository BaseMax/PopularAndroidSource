package c.c.a.e.c;

import android.content.Context;
import android.net.Uri;
import androidx.core.content.FileProvider;
import c.c.a.c.h.d;
import h.f.b.j;
import java.io.File;

/* compiled from: FileExt.kt */
public final class c {
    public static final Uri a(File file, Context context) {
        j.b(file, "$this$toUri");
        j.b(context, "context");
        if (d.a(24)) {
            StringBuilder sb = new StringBuilder();
            Context applicationContext = context.getApplicationContext();
            j.a((Object) applicationContext, "context.applicationContext");
            sb.append(applicationContext.getPackageName());
            sb.append(".provider");
            Uri a2 = FileProvider.a(context, sb.toString(), file);
            j.a((Object) a2, "FileProvider.getUriForFi…ageName}.provider\", this)");
            return a2;
        }
        Uri fromFile = Uri.fromFile(file);
        j.a((Object) fromFile, "Uri.fromFile(this)");
        return fromFile;
    }
}
