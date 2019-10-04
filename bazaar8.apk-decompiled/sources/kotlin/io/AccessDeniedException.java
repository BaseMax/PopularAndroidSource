package kotlin.io;

import h.f.b.f;
import h.f.b.j;
import java.io.File;

/* compiled from: Exceptions.kt */
public final class AccessDeniedException extends FileSystemException {
    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AccessDeniedException(File file, File file2, String str, int i2, f fVar) {
        this(file, (i2 & 2) != 0 ? null : file2, (i2 & 4) != 0 ? null : str);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AccessDeniedException(File file, File file2, String str) {
        super(file, file2, str);
        j.b(file, "file");
    }
}
