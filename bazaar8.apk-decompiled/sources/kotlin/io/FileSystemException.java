package kotlin.io;

import h.e.b;
import h.f.b.j;
import java.io.File;
import java.io.IOException;

/* compiled from: Exceptions.kt */
public class FileSystemException extends IOException {
    public final File file;
    public final File other;
    public final String reason;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public FileSystemException(File file2, File file3, String str) {
        super(b.b(file2, file3, str));
        j.b(file2, "file");
        this.file = file2;
        this.other = file3;
        this.reason = str;
    }
}
