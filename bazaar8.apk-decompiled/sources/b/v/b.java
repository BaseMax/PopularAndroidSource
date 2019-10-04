package b.v;

import androidx.multidex.MultiDexExtractor;
import java.io.File;
import java.io.FileFilter;

/* compiled from: MultiDexExtractor */
class b implements FileFilter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MultiDexExtractor f3241a;

    public b(MultiDexExtractor multiDexExtractor) {
        this.f3241a = multiDexExtractor;
    }

    public boolean accept(File file) {
        return !file.getName().equals("MultiDex.lock");
    }
}
