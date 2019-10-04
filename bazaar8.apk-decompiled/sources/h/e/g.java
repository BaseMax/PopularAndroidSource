package h.e;

import h.f.b.j;
import java.io.File;
import kotlin.io.FileWalkDirection;

/* compiled from: FileTreeWalk.kt */
public class g extends f {
    public static final c a(File file, FileWalkDirection fileWalkDirection) {
        j.b(file, "$this$walk");
        j.b(fileWalkDirection, "direction");
        return new c(file, fileWalkDirection);
    }

    public static final c a(File file) {
        j.b(file, "$this$walkBottomUp");
        return a(file, FileWalkDirection.BOTTOM_UP);
    }
}
