package com.facebook.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Parcel;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.appcompat.widget.ActivityChooserView;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public final class m {

    static final class a {
        private a() {
        }

        public static String[] getSupportedAbis() {
            return Build.SUPPORTED_ABIS;
        }

        public static void fallocateIfSupported(FileDescriptor fileDescriptor, long j) throws IOException {
            try {
                Os.posix_fallocate(fileDescriptor, 0, j);
            } catch (ErrnoException e) {
                if (e.errno != OsConstants.EOPNOTSUPP && e.errno != OsConstants.ENOSYS && e.errno != OsConstants.EINVAL) {
                    throw new IOException(e.toString(), e);
                }
            }
        }
    }

    public static int findAbiScore(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i] != null && str.equals(strArr[i])) {
                return i;
            }
        }
        return -1;
    }

    public static void deleteOrThrow(File file) throws IOException {
        if (!file.delete()) {
            throw new IOException("could not delete file ".concat(String.valueOf(file)));
        }
    }

    public static String[] getSupportedAbis() {
        if (Build.VERSION.SDK_INT >= 21) {
            return a.getSupportedAbis();
        }
        return new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }

    public static void fallocateIfSupported(FileDescriptor fileDescriptor, long j) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            a.fallocateIfSupported(fileDescriptor, j);
        }
    }

    public static void dumbDeleteRecursive(File file) throws IOException {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File dumbDeleteRecursive : listFiles) {
                    dumbDeleteRecursive(dumbDeleteRecursive);
                }
            } else {
                return;
            }
        }
        if (!file.delete() && file.exists()) {
            throw new IOException("could not delete: ".concat(String.valueOf(file)));
        }
    }

    static int a(RandomAccessFile randomAccessFile, InputStream inputStream, byte[] bArr) throws IOException {
        int i = 0;
        while (i < Integer.MAX_VALUE) {
            int read = inputStream.read(bArr, 0, Math.min(32768, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - i));
            if (read == -1) {
                break;
            }
            randomAccessFile.write(bArr, 0, read);
            i += read;
        }
        return i;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0049, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x004d, code lost:
        throw r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void a(java.io.File r2) throws java.io.IOException {
        /*
            boolean r0 = r2.isDirectory()
            if (r0 == 0) goto L_0x0029
            java.io.File[] r0 = r2.listFiles()
            if (r0 == 0) goto L_0x0019
            r2 = 0
        L_0x000d:
            int r1 = r0.length
            if (r2 >= r1) goto L_0x0018
            r1 = r0[r2]
            a(r1)
            int r2 = r2 + 1
            goto L_0x000d
        L_0x0018:
            return
        L_0x0019:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = "cannot list directory "
            java.lang.String r2 = r1.concat(r2)
            r0.<init>(r2)
            throw r0
        L_0x0029:
            java.lang.String r0 = r2.getPath()
            java.lang.String r1 = "_lock"
            boolean r0 = r0.endsWith(r1)
            if (r0 != 0) goto L_0x004e
            java.io.RandomAccessFile r0 = new java.io.RandomAccessFile
            java.lang.String r1 = "r"
            r0.<init>(r2, r1)
            java.io.FileDescriptor r2 = r0.getFD()     // Catch:{ all -> 0x0047 }
            r2.sync()     // Catch:{ all -> 0x0047 }
            r0.close()
            return
        L_0x0047:
            r2 = move-exception
            throw r2     // Catch:{ all -> 0x0049 }
        L_0x0049:
            r2 = move-exception
            r0.close()     // Catch:{ all -> 0x004d }
        L_0x004d:
            throw r2
        L_0x004e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.m.a(java.io.File):void");
    }

    public static byte[] makeApkDepBlock(File file, Context context) throws IOException {
        File canonicalFile = file.getCanonicalFile();
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 1);
            obtain.writeString(canonicalFile.getPath());
            obtain.writeLong(canonicalFile.lastModified());
            obtain.writeInt(getAppVersionCode(context));
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    public static int getAppVersionCode(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                return packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            }
        }
        return 0;
    }
}
