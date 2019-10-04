package io.fabric.sdk.android.services.b;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public final class g extends h {
    public g(Context context, File file, String str, String str2) throws IOException {
        super(context, file, str, str2);
    }

    public final OutputStream getMoveOutputStream(File file) throws IOException {
        return new GZIPOutputStream(new FileOutputStream(file));
    }
}
