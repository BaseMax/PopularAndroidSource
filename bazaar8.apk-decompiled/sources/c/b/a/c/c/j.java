package c.b.a.c.c;

import android.os.ParcelFileDescriptor;
import c.b.a.c.c.i;
import java.io.File;

/* compiled from: FileLoader */
class j implements i.d<ParcelFileDescriptor> {
    public ParcelFileDescriptor a(File file) {
        return ParcelFileDescriptor.open(file, 268435456);
    }

    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }

    public Class<ParcelFileDescriptor> a() {
        return ParcelFileDescriptor.class;
    }
}
