package com.yandex.metrica.impl;

import android.content.Context;
import android.util.Base64;
import androidx.appcompat.widget.ActivityChooserView;
import com.yandex.metrica.impl.ob.lm;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public final class w {
    public static String a(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
        StringWriter stringWriter = new StringWriter();
        a((Reader) inputStreamReader, (Writer) stringWriter);
        return stringWriter.toString();
    }

    public static String a(String str) throws IOException {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                String a2 = a((InputStream) fileInputStream2);
                bv.a((Closeable) fileInputStream2);
                return a2;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                bv.a((Closeable) fileInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            bv.a((Closeable) fileInputStream);
            throw th;
        }
    }

    public static int a(Reader reader, Writer writer) throws IOException {
        char[] cArr = new char[4096];
        int i = 0;
        while (true) {
            int read = reader.read(cArr, 0, 4096);
            if (-1 == read) {
                return i;
            }
            writer.write(cArr, 0, read);
            i += read;
        }
    }

    public static String b(String str) {
        try {
            return Base64.encodeToString(a(str.getBytes("UTF-8")), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] a(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream2.write(bArr);
                    gZIPOutputStream2.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    bv.a((Closeable) gZIPOutputStream2);
                    bv.a((Closeable) byteArrayOutputStream);
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    gZIPOutputStream = gZIPOutputStream2;
                    bv.a((Closeable) gZIPOutputStream);
                    bv.a((Closeable) byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bv.a((Closeable) gZIPOutputStream);
                bv.a((Closeable) byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
            bv.a((Closeable) gZIPOutputStream);
            bv.a((Closeable) byteArrayOutputStream);
            throw th;
        }
    }

    public static byte[] b(byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream;
        GZIPInputStream gZIPInputStream;
        GZIPInputStream gZIPInputStream2 = null;
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            } catch (Throwable th) {
                th = th;
                bv.a((Closeable) gZIPInputStream2);
                bv.a((Closeable) byteArrayInputStream);
                throw th;
            }
            try {
                byte[] a2 = a((InputStream) gZIPInputStream, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                bv.a((Closeable) gZIPInputStream);
                bv.a((Closeable) byteArrayInputStream);
                return a2;
            } catch (Throwable th2) {
                Throwable th3 = th2;
                gZIPInputStream2 = gZIPInputStream;
                th = th3;
                bv.a((Closeable) gZIPInputStream2);
                bv.a((Closeable) byteArrayInputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayInputStream = null;
            bv.a((Closeable) gZIPInputStream2);
            bv.a((Closeable) byteArrayInputStream);
            throw th;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: java.lang.String} */
    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r1v1, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String c(java.lang.String r3) {
        /*
            r0 = 0
            r1 = 0
            byte[] r3 = android.util.Base64.decode(r3, r0)     // Catch:{ Exception -> 0x002d, all -> 0x0024 }
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream     // Catch:{ Exception -> 0x002d, all -> 0x0024 }
            r0.<init>(r3)     // Catch:{ Exception -> 0x002d, all -> 0x0024 }
            java.util.zip.GZIPInputStream r3 = new java.util.zip.GZIPInputStream     // Catch:{ Exception -> 0x0022, all -> 0x0020 }
            r3.<init>(r0)     // Catch:{ Exception -> 0x0022, all -> 0x0020 }
            java.lang.String r1 = a((java.io.InputStream) r3)     // Catch:{ Exception -> 0x0014, all -> 0x001b }
        L_0x0014:
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r3)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r0)
            return r1
        L_0x001b:
            r1 = move-exception
            r2 = r1
            r1 = r3
            r3 = r2
            goto L_0x0026
        L_0x0020:
            r3 = move-exception
            goto L_0x0026
        L_0x0022:
            r3 = r1
            goto L_0x0014
        L_0x0024:
            r3 = move-exception
            r0 = r1
        L_0x0026:
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r1)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r0)
            throw r3
        L_0x002d:
            r3 = r1
            r0 = r3
            goto L_0x0014
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.w.c(java.lang.String):java.lang.String");
    }

    public static byte[] a(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            return null;
        }
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (-1 == read) {
                    break;
                } else if (i2 > i) {
                    break;
                } else if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                    i2 += read;
                }
            } finally {
                bv.a((Closeable) byteArrayOutputStream);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String a(Context context, File file) {
        byte[] b2 = b(context, file);
        try {
            return new String(b2, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            String str = new String(b2);
            lm.a(context).reportError("read_share_file_with_unsupported_encoding", e);
            return str;
        }
    }

    public static byte[] b(Context context, File file) {
        FileLock fileLock;
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                fileLock = channel.lock(0, Long.MAX_VALUE, true);
                try {
                    ByteBuffer allocate = ByteBuffer.allocate((int) file.length());
                    channel.read(allocate);
                    allocate.flip();
                    byte[] array = allocate.array();
                    file.getAbsolutePath();
                    a(fileLock);
                    bv.a((Closeable) randomAccessFile);
                    return array;
                } catch (IOException | SecurityException unused) {
                    file.getAbsolutePath();
                    a(fileLock);
                    bv.a((Closeable) randomAccessFile);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    try {
                        lm.a(context).reportError("error_during_file_reading", th);
                        file.getAbsolutePath();
                        a(fileLock);
                        bv.a((Closeable) randomAccessFile);
                        return null;
                    } catch (Throwable th2) {
                        file.getAbsolutePath();
                        a(fileLock);
                        bv.a((Closeable) randomAccessFile);
                        throw th2;
                    }
                }
            } catch (IOException | SecurityException unused2) {
                fileLock = null;
                file.getAbsolutePath();
                a(fileLock);
                bv.a((Closeable) randomAccessFile);
                return null;
            } catch (Throwable th3) {
                th = th3;
                fileLock = null;
                lm.a(context).reportError("error_during_file_reading", th);
                file.getAbsolutePath();
                a(fileLock);
                bv.a((Closeable) randomAccessFile);
                return null;
            }
        } catch (IOException | SecurityException unused3) {
            randomAccessFile = null;
            fileLock = null;
            file.getAbsolutePath();
            a(fileLock);
            bv.a((Closeable) randomAccessFile);
            return null;
        } catch (Throwable th4) {
            th = th4;
            randomAccessFile = null;
            fileLock = null;
            lm.a(context).reportError("error_during_file_reading", th);
            file.getAbsolutePath();
            a(fileLock);
            bv.a((Closeable) randomAccessFile);
            return null;
        }
    }

    public static void a(FileLock fileLock) {
        if (fileLock != null && fileLock.isValid()) {
            try {
                fileLock.release();
            } catch (IOException unused) {
            }
        }
    }

    public static void b(Context context, String str, String str2) {
        File file = new File(context.getNoBackupFilesDir(), str);
        try {
            a(str2, new FileOutputStream(file));
            c(context, file);
        } catch (FileNotFoundException unused) {
        }
    }

    public static void c(final Context context, final File file) {
        if (file.exists()) {
            file.setReadable(true, false);
            if (bv.a(24)) {
                new File(context.getApplicationInfo().dataDir).setExecutable(true, false);
            }
        } else {
            lm.a(context).reportEvent("make_non_existed_world_readable", (Map<String, Object>) new HashMap<String, Object>() {
                {
                    put("file_name", file.getName());
                    put("applicationId", context.getPackageName());
                }
            });
        }
    }

    private static void a(String str, FileOutputStream fileOutputStream) {
        FileLock fileLock = null;
        try {
            FileChannel channel = fileOutputStream.getChannel();
            fileLock = channel.lock();
            byte[] bytes = str.getBytes("UTF-8");
            ByteBuffer allocate = ByteBuffer.allocate(bytes.length);
            allocate.put(bytes);
            allocate.flip();
            channel.write(allocate);
            channel.force(true);
        } catch (IOException unused) {
        } catch (Throwable th) {
            a(fileLock);
            bv.a((Closeable) fileOutputStream);
            throw th;
        }
        a(fileLock);
        bv.a((Closeable) fileOutputStream);
    }

    public static void a(Context context, String str, String str2) {
        try {
            if (bv.a(24)) {
                a(str2, context.openFileOutput(str, 0));
                c(context, context.getFileStreamPath(str));
                return;
            }
            a(str2, context.openFileOutput(str, 1));
        } catch (FileNotFoundException unused) {
        }
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x0020 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r2, java.lang.String r3) {
        /*
            r0 = 24
            boolean r0 = com.yandex.metrica.impl.bv.a((int) r0)
            if (r0 == 0) goto L_0x0020
            java.io.File r0 = r2.getNoBackupFilesDir()     // Catch:{ Exception -> 0x0020 }
            java.io.File r1 = new java.io.File     // Catch:{ Exception -> 0x0020 }
            r1.<init>(r0, r3)     // Catch:{ Exception -> 0x0020 }
            boolean r0 = r1.exists()     // Catch:{ Exception -> 0x0020 }
            if (r0 == 0) goto L_0x0020
            boolean r0 = r1.canWrite()     // Catch:{ Exception -> 0x0020 }
            if (r0 == 0) goto L_0x0020
            r1.delete()     // Catch:{ Exception -> 0x0020 }
        L_0x0020:
            java.io.File r2 = r2.getFileStreamPath(r3)     // Catch:{ Exception -> 0x003c }
            java.lang.String r2 = r2.getAbsolutePath()     // Catch:{ Exception -> 0x003c }
            java.io.File r3 = new java.io.File     // Catch:{ Exception -> 0x003c }
            r3.<init>(r2)     // Catch:{ Exception -> 0x003c }
            boolean r2 = r3.exists()     // Catch:{ Exception -> 0x003c }
            if (r2 == 0) goto L_0x003c
            boolean r2 = r3.canWrite()     // Catch:{ Exception -> 0x003c }
            if (r2 == 0) goto L_0x003c
            r3.delete()     // Catch:{ Exception -> 0x003c }
        L_0x003c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.w.a(android.content.Context, java.lang.String):void");
    }
}
