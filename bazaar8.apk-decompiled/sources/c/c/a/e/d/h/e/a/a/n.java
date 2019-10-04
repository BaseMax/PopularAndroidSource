package c.c.a.e.d.h.e.a.a;

import android.content.Context;
import android.os.Environment;
import com.farsitel.bazaar.common.model.ui.CinemaFileState;
import com.farsitel.bazaar.data.feature.cinema.video.download.local.VideoFileStatus;
import h.f.b.j;
import java.io.File;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: VideoStorage.kt */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final Context f5125a;

    public n(Context context) {
        j.b(context, "context");
        this.f5125a = context;
    }

    public final File a(String str) {
        j.b(str, "videoId");
        return new File(d(str).getParent(), "cover.jpeg");
    }

    public final String b() {
        File a2 = a(this.f5125a);
        j.a((Object) a2, "getBazaarVideosDirectory(context)");
        String path = a2.getPath();
        j.a((Object) path, "getBazaarVideosDirectory(context).path");
        return path;
    }

    public final File c(String str) {
        j.b(str, "videoId");
        return new File(d(str).getParentFile(), "off");
    }

    public final File d(String str) {
        j.b(str, "videoId");
        return new File(new File(a(this.f5125a), str), str);
    }

    public final VideoFileStatus e(String str) {
        j.b(str, "videoId");
        if (g(str)) {
            return VideoFileStatus.EXISTS;
        }
        if (h(str)) {
            return VideoFileStatus.TEMP;
        }
        return VideoFileStatus.NOT_EXISTS;
    }

    public final long f(String str) {
        j.b(str, "videoId");
        return d(str).length();
    }

    public final boolean g(String str) {
        return d(str).exists();
    }

    public final boolean h(String str) {
        File parentFile = d(str).getParentFile();
        return parentFile != null && parentFile.exists() && parentFile.length() > 0;
    }

    public final long a() {
        return new File(b()).getFreeSpace();
    }

    public final File b(String str) {
        j.b(str, "videoId");
        return new File(d(str).getParent(), "subtitle");
    }

    public final File a(Context context) {
        if (j.a((Object) Environment.getExternalStorageState(), (Object) "mounted")) {
            File file = new File(context.getExternalFilesDir(Environment.DIRECTORY_MOVIES), "video");
            if (file.exists()) {
                return file;
            }
            file.mkdirs();
            return file;
        }
        Context applicationContext = context.getApplicationContext();
        j.a((Object) applicationContext, "context.applicationContext");
        return applicationContext.getFilesDir();
    }

    public final CinemaFileState a(String str, boolean z) {
        j.b(str, "videoId");
        int i2 = m.f5124a[e(str).ordinal()];
        if (i2 == 1) {
            return CinemaFileState.NOT_EXISTS;
        }
        if (i2 == 2) {
            return CinemaFileState.EXISTS;
        }
        if (i2 != 3) {
            throw new NoWhenBranchMatchedException();
        } else if (z) {
            return CinemaFileState.DOWNLOADING;
        } else {
            return CinemaFileState.PART_EXISTS;
        }
    }
}
