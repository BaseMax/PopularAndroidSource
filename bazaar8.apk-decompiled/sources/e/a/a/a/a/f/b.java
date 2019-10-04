package e.a.a.a.a.f;

import android.content.Context;
import e.a.a.a.f;
import e.a.a.a.l;
import java.io.File;

/* compiled from: FileStoreImpl */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    public final Context f13768a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13769b;

    /* renamed from: c  reason: collision with root package name */
    public final String f13770c;

    public b(l lVar) {
        if (lVar.getContext() != null) {
            this.f13768a = lVar.getContext();
            this.f13769b = lVar.getPath();
            this.f13770c = "Android/" + this.f13768a.getPackageName();
            return;
        }
        throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }

    public File a() {
        return a(this.f13768a.getFilesDir());
    }

    public File a(File file) {
        if (file == null) {
            f.e().d("Fabric", "Null File");
        } else if (file.exists() || file.mkdirs()) {
            return file;
        } else {
            f.e().a("Fabric", "Couldn't create file");
        }
        return null;
    }
}
