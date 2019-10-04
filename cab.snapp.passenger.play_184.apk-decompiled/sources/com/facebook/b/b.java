package com.facebook.b;

import android.content.Context;
import android.os.Parcel;
import com.facebook.b.f;
import com.facebook.b.o;
import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;

public final class b extends f {
    public static final int PREFER_ANDROID_LIBS_DIRECTORY = 1;

    /* renamed from: a  reason: collision with root package name */
    final int f2424a;

    protected class a extends f.b {
        private File e;
        private final int f;

        a(f fVar) throws IOException {
            super(fVar);
            this.e = new File(b.this.f.getApplicationInfo().nativeLibraryDir);
            this.f = b.this.f2424a;
        }

        /* access modifiers changed from: protected */
        public final boolean a(ZipEntry zipEntry, String str) {
            String name = zipEntry.getName();
            if (str.equals(b.this.g)) {
                b.this.g = null;
                String.format("allowing consideration of corrupted lib %s", new Object[]{str});
                return true;
            } else if ((this.f & 1) == 0) {
                StringBuilder sb = new StringBuilder("allowing consideration of ");
                sb.append(name);
                sb.append(": self-extraction preferred");
                return true;
            } else {
                File file = new File(this.e, str);
                if (!file.isFile()) {
                    String.format("allowing considering of %s: %s not in system lib dir", new Object[]{name, str});
                    return true;
                }
                long length = file.length();
                long size = zipEntry.getSize();
                if (length != size) {
                    String.format("allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK", new Object[]{file, Long.valueOf(length), Long.valueOf(size)});
                    return true;
                }
                StringBuilder sb2 = new StringBuilder("not allowing consideration of ");
                sb2.append(name);
                sb2.append(": deferring to libdir");
                return false;
            }
        }
    }

    public b(Context context, String str, int i) {
        this(context, new File(context.getApplicationInfo().sourceDir), str, i);
    }

    public b(Context context, File file, String str, int i) {
        super(context, str, file, "^lib/([^/]+)/([^/]+\\.so)$");
        this.f2424a = i;
    }

    /* access modifiers changed from: protected */
    public final o.e a() throws IOException {
        return new a(this);
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws IOException {
        File canonicalFile = this.d.getCanonicalFile();
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 2);
            obtain.writeString(canonicalFile.getPath());
            obtain.writeLong(canonicalFile.lastModified());
            obtain.writeInt(m.getAppVersionCode(this.f));
            if ((this.f2424a & 1) == 0) {
                obtain.writeByte((byte) 0);
                return obtain.marshall();
            }
            String str = this.f.getApplicationInfo().nativeLibraryDir;
            if (str == null) {
                obtain.writeByte((byte) 1);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                return marshall;
            }
            File canonicalFile2 = new File(str).getCanonicalFile();
            if (!canonicalFile2.exists()) {
                obtain.writeByte((byte) 1);
                byte[] marshall2 = obtain.marshall();
                obtain.recycle();
                return marshall2;
            }
            obtain.writeByte((byte) 2);
            obtain.writeString(canonicalFile2.getPath());
            obtain.writeLong(canonicalFile2.lastModified());
            byte[] marshall3 = obtain.marshall();
            obtain.recycle();
            return marshall3;
        } finally {
            obtain.recycle();
        }
    }
}
