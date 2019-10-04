package com.squareup.picasso;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import b.e;
import b.f;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ThreadFactory;

final class af {

    /* renamed from: a  reason: collision with root package name */
    static final StringBuilder f5262a = new StringBuilder();

    /* renamed from: b  reason: collision with root package name */
    private static final f f5263b = f.encodeUtf8("RIFF");
    private static final f c = f.encodeUtf8("WEBP");

    static class a extends Thread {
        a(Runnable runnable) {
            super(runnable);
        }

        public final void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    static class b implements ThreadFactory {
        b() {
        }

        public final Thread newThread(Runnable runnable) {
            return new a(runnable);
        }
    }

    private af() {
    }

    static int a(Bitmap bitmap) {
        int allocationByteCount = Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: ".concat(String.valueOf(bitmap)));
    }

    static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    static void a() {
        if (c()) {
            throw new IllegalStateException("Method call should not happen from the main thread.");
        }
    }

    static void b() {
        if (!c()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    private static boolean c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    static String a(c cVar) {
        return a(cVar, "");
    }

    static String a(c cVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        a aVar = cVar.k;
        if (aVar != null) {
            sb.append(aVar.f5255b.a());
        }
        List<a> list = cVar.l;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || aVar != null) {
                    sb.append(", ");
                }
                sb.append(list.get(i).f5255b.a());
            }
        }
        return sb.toString();
    }

    static void a(String str, String str2, String str3) {
        a(str, str2, str3, "");
    }

    static void a(String str, String str2, String str3, String str4) {
        String.format("%1$-11s %2$-12s %3$s %4$s", new Object[]{str, str2, str3, str4});
    }

    static String a(w wVar) {
        String a2 = a(wVar, f5262a);
        f5262a.setLength(0);
        return a2;
    }

    static String a(w wVar, StringBuilder sb) {
        if (wVar.stableKey != null) {
            sb.ensureCapacity(wVar.stableKey.length() + 50);
            sb.append(wVar.stableKey);
        } else if (wVar.uri != null) {
            String uri = wVar.uri.toString();
            sb.ensureCapacity(uri.length() + 50);
            sb.append(uri);
        } else {
            sb.ensureCapacity(50);
            sb.append(wVar.resourceId);
        }
        sb.append(10);
        if (wVar.rotationDegrees != 0.0f) {
            sb.append("rotation:");
            sb.append(wVar.rotationDegrees);
            if (wVar.hasRotationPivot) {
                sb.append('@');
                sb.append(wVar.rotationPivotX);
                sb.append('x');
                sb.append(wVar.rotationPivotY);
            }
            sb.append(10);
        }
        if (wVar.hasSize()) {
            sb.append("resize:");
            sb.append(wVar.targetWidth);
            sb.append('x');
            sb.append(wVar.targetHeight);
            sb.append(10);
        }
        if (wVar.centerCrop) {
            sb.append("centerCrop:");
            sb.append(wVar.centerCropGravity);
            sb.append(10);
        } else if (wVar.centerInside) {
            sb.append("centerInside\n");
        }
        if (wVar.transformations != null) {
            int size = wVar.transformations.size();
            for (int i = 0; i < size; i++) {
                sb.append(wVar.transformations.get(i).key());
                sb.append(10);
            }
        }
        return sb.toString();
    }

    static File a(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    static long a(File file) {
        long j;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = ((Build.VERSION.SDK_INT < 18 ? (long) statFs.getBlockCount() : statFs.getBlockCountLong()) * (Build.VERSION.SDK_INT < 18 ? (long) statFs.getBlockSize() : statFs.getBlockSizeLong())) / 50;
        } catch (IllegalArgumentException unused) {
            j = 5242880;
        }
        return Math.max(Math.min(j, 52428800), 5242880);
    }

    static boolean c(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            if (Build.VERSION.SDK_INT < 17) {
                if (Settings.System.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
                    return true;
                }
                return false;
            } else if (Settings.Global.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
                return true;
            } else {
                return false;
            }
        } catch (NullPointerException | SecurityException unused) {
        }
    }

    static <T> T a(Context context, String str) {
        return context.getSystemService(str);
    }

    static boolean b(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    static boolean a(e eVar) throws IOException {
        return eVar.rangeEquals(0, f5263b) && eVar.rangeEquals(8, c);
    }

    static int a(Resources resources, w wVar) throws FileNotFoundException {
        int i;
        if (wVar.resourceId != 0 || wVar.uri == null) {
            return wVar.resourceId;
        }
        String authority = wVar.uri.getAuthority();
        if (authority != null) {
            List<String> pathSegments = wVar.uri.getPathSegments();
            if (pathSegments == null || pathSegments.isEmpty()) {
                throw new FileNotFoundException("No path segments: " + wVar.uri);
            }
            if (pathSegments.size() == 1) {
                try {
                    i = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Last path segment is not a resource ID: " + wVar.uri);
                }
            } else if (pathSegments.size() == 2) {
                i = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            } else {
                throw new FileNotFoundException("More than two path segments: " + wVar.uri);
            }
            return i;
        }
        throw new FileNotFoundException("No package provided: " + wVar.uri);
    }

    static Resources a(Context context, w wVar) throws FileNotFoundException {
        if (wVar.resourceId != 0 || wVar.uri == null) {
            return context.getResources();
        }
        String authority = wVar.uri.getAuthority();
        if (authority != null) {
            try {
                return context.getPackageManager().getResourcesForApplication(authority);
            } catch (PackageManager.NameNotFoundException unused) {
                throw new FileNotFoundException("Unable to obtain resources for package: " + wVar.uri);
            }
        } else {
            throw new FileNotFoundException("No package provided: " + wVar.uri);
        }
    }

    static void a(Looper looper) {
        AnonymousClass1 r0 = new Handler(looper) {
            public final void handleMessage(Message message) {
                sendMessageDelayed(obtainMessage(), 1000);
            }
        };
        r0.sendMessageDelayed(r0.obtainMessage(), 1000);
    }

    static int b(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        return (int) ((((long) ((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass())) * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) / 7);
    }
}
