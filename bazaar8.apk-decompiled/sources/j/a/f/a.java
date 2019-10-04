package j.a.f;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import k.s;
import k.y;
import k.z;

/* compiled from: FileSystem */
class a implements b {
    public z a(File file) {
        return s.c(file);
    }

    public y b(File file) {
        try {
            return s.b(file);
        } catch (FileNotFoundException unused) {
            file.getParentFile().mkdirs();
            return s.b(file);
        }
    }

    public void c(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            int i2 = 0;
            while (i2 < length) {
                File file2 = listFiles[i2];
                if (file2.isDirectory()) {
                    c(file2);
                }
                if (file2.delete()) {
                    i2++;
                } else {
                    throw new IOException("failed to delete " + file2);
                }
            }
            return;
        }
        throw new IOException("not a readable directory: " + file);
    }

    public boolean d(File file) {
        return file.exists();
    }

    public void e(File file) {
        if (!file.delete() && file.exists()) {
            throw new IOException("failed to delete " + file);
        }
    }

    public y f(File file) {
        try {
            return s.a(file);
        } catch (FileNotFoundException unused) {
            file.getParentFile().mkdirs();
            return s.a(file);
        }
    }

    public long g(File file) {
        return file.length();
    }

    public void a(File file, File file2) {
        e(file2);
        if (!file.renameTo(file2)) {
            throw new IOException("failed to rename " + file + " to " + file2);
        }
    }
}
