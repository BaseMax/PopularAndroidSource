package c.f.a;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import com.crashlytics.android.answers.SessionEvent;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.concurrent.ThreadFactory;
import k.i;
import okio.ByteString;

/* compiled from: Utils */
public final class P {

    /* renamed from: a  reason: collision with root package name */
    public static final StringBuilder f11956a = new StringBuilder();

    /* renamed from: b  reason: collision with root package name */
    public static final ByteString f11957b = ByteString.d("RIFF");

    /* renamed from: c  reason: collision with root package name */
    public static final ByteString f11958c = ByteString.d("WEBP");

    /* compiled from: Utils */
    private static class a extends Thread {
        public a(Runnable runnable) {
            super(runnable);
        }

        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* compiled from: Utils */
    static class b implements ThreadFactory {
        public Thread newThread(Runnable runnable) {
            return new a(runnable);
        }
    }

    public static int a(Bitmap bitmap) {
        int allocationByteCount = Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    public static void b() {
        if (c()) {
            throw new IllegalStateException("Method call should not happen from the main thread.");
        }
    }

    public static boolean c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public static boolean c(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = false;
        try {
            if (Build.VERSION.SDK_INT < 17) {
                if (Settings.System.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
                    z = true;
                }
                return z;
            }
            if (Settings.Global.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
                z = true;
            }
            return z;
        } catch (NullPointerException | SecurityException unused) {
        }
    }

    public static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static File b(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void a() {
        if (!c()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    public static String a(C1038i iVar) {
        return a(iVar, "");
    }

    public static boolean b(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static String a(C1038i iVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        C1030a c2 = iVar.c();
        if (c2 != null) {
            sb.append(c2.f11960b.d());
        }
        List<C1030a> d2 = iVar.d();
        if (d2 != null) {
            int size = d2.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 > 0 || c2 != null) {
                    sb.append(", ");
                }
                sb.append(d2.get(i2).f11960b.d());
            }
        }
        return sb.toString();
    }

    public static void a(String str, String str2, String str3) {
        a(str, str2, str3, "");
    }

    public static void a(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", new Object[]{str, str2, str3, str4}));
    }

    public static String a(G g2) {
        String a2 = a(g2, f11956a);
        f11956a.setLength(0);
        return a2;
    }

    public static String a(G g2, StringBuilder sb) {
        String str = g2.f11894g;
        if (str != null) {
            sb.ensureCapacity(str.length() + 50);
            sb.append(g2.f11894g);
        } else {
            Uri uri = g2.f11892e;
            if (uri != null) {
                String uri2 = uri.toString();
                sb.ensureCapacity(uri2.length() + 50);
                sb.append(uri2);
            } else {
                sb.ensureCapacity(50);
                sb.append(g2.f11893f);
            }
        }
        sb.append(10);
        if (g2.o != 0.0f) {
            sb.append("rotation:");
            sb.append(g2.o);
            if (g2.r) {
                sb.append('@');
                sb.append(g2.p);
                sb.append('x');
                sb.append(g2.q);
            }
            sb.append(10);
        }
        if (g2.c()) {
            sb.append("resize:");
            sb.append(g2.f11896i);
            sb.append('x');
            sb.append(g2.f11897j);
            sb.append(10);
        }
        if (g2.f11898k) {
            sb.append("centerCrop:");
            sb.append(g2.f11899l);
            sb.append(10);
        } else if (g2.m) {
            sb.append("centerInside");
            sb.append(10);
        }
        List<N> list = g2.f11895h;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append(g2.f11895h.get(i2).a());
                sb.append(10);
            }
        }
        return sb.toString();
    }

    @TargetApi(18)
    public static long a(File file) {
        long j2;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j2 = ((Build.VERSION.SDK_INT < 18 ? (long) statFs.getBlockCount() : statFs.getBlockCountLong()) * (Build.VERSION.SDK_INT < 18 ? (long) statFs.getBlockSize() : statFs.getBlockSizeLong())) / 50;
        } catch (IllegalArgumentException unused) {
            j2 = 5242880;
        }
        return Math.max(Math.min(j2, 52428800), 5242880);
    }

    public static int a(Context context) {
        ActivityManager activityManager = (ActivityManager) a(context, SessionEvent.ACTIVITY_KEY);
        return (int) ((((long) ((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass())) * 1048576) / 7);
    }

    public static <T> T a(Context context, String str) {
        return context.getSystemService(str);
    }

    public static boolean a(i iVar) {
        return iVar.a(0, f11957b) && iVar.a(8, f11958c);
    }

    public static int a(Resources resources, G g2) {
        int i2;
        if (g2.f11893f == 0) {
            Uri uri = g2.f11892e;
            if (uri != null) {
                String authority = uri.getAuthority();
                if (authority != null) {
                    List<String> pathSegments = g2.f11892e.getPathSegments();
                    if (pathSegments == null || pathSegments.isEmpty()) {
                        throw new FileNotFoundException("No path segments: " + g2.f11892e);
                    }
                    if (pathSegments.size() == 1) {
                        try {
                            i2 = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException unused) {
                            throw new FileNotFoundException("Last path segment is not a resource ID: " + g2.f11892e);
                        }
                    } else if (pathSegments.size() == 2) {
                        i2 = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: " + g2.f11892e);
                    }
                    return i2;
                }
                throw new FileNotFoundException("No package provided: " + g2.f11892e);
            }
        }
        return g2.f11893f;
    }

    public static Resources a(Context context, G g2) {
        if (g2.f11893f == 0) {
            Uri uri = g2.f11892e;
            if (uri != null) {
                String authority = uri.getAuthority();
                if (authority != null) {
                    try {
                        return context.getPackageManager().getResourcesForApplication(authority);
                    } catch (PackageManager.NameNotFoundException unused) {
                        throw new FileNotFoundException("Unable to obtain resources for package: " + g2.f11892e);
                    }
                } else {
                    throw new FileNotFoundException("No package provided: " + g2.f11892e);
                }
            }
        }
        return context.getResources();
    }

    public static void a(Looper looper) {
        O o = new O(looper);
        o.sendMessageDelayed(o.obtainMessage(), 1000);
    }
}
