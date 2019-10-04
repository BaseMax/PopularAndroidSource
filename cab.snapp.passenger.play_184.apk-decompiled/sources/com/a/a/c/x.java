package com.a.a.c;

import io.fabric.sdk.android.services.common.i;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.a.b;
import org.a.c;

final class x {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f1827a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    private final File f1828b;

    public x(File file) {
        this.f1828b = file;
    }

    public final void writeUserData(String str, final am amVar) {
        File a2 = a(str);
        BufferedWriter bufferedWriter = null;
        try {
            String r7 = new c() {
                {
                    put("userId", (Object) amVar.id);
                    put("userName", (Object) amVar.name);
                    put("userEmail", (Object) amVar.email);
                }
            }.toString();
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(a2), f1827a));
            try {
                bufferedWriter2.write(r7);
                bufferedWriter2.flush();
                i.closeOrLog(bufferedWriter2, "Failed to close user metadata file.");
            } catch (Exception e) {
                e = e;
                bufferedWriter = bufferedWriter2;
                try {
                    io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error serializing user metadata.", e);
                    i.closeOrLog(bufferedWriter, "Failed to close user metadata file.");
                } catch (Throwable th) {
                    th = th;
                    i.closeOrLog(bufferedWriter, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter = bufferedWriter2;
                i.closeOrLog(bufferedWriter, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error serializing user metadata.", e);
            i.closeOrLog(bufferedWriter, "Failed to close user metadata file.");
        }
    }

    public final am readUserData(String str) {
        File a2 = a(str);
        if (!a2.exists()) {
            return am.EMPTY;
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(a2);
            try {
                c cVar = new c(i.streamToString(fileInputStream2));
                am amVar = new am(a(cVar, "userId"), a(cVar, "userName"), a(cVar, "userEmail"));
                i.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
                return amVar;
            } catch (Exception e) {
                e = e;
                fileInputStream = fileInputStream2;
                try {
                    io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error deserializing user metadata.", e);
                    i.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                    return am.EMPTY;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    i.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                i.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error deserializing user metadata.", e);
            i.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            return am.EMPTY;
        }
    }

    public final void writeKeyData(String str, Map<String, String> map) {
        File b2 = b(str);
        BufferedWriter bufferedWriter = null;
        try {
            String cVar = new c((Map<?, ?>) map).toString();
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(b2), f1827a));
            try {
                bufferedWriter2.write(cVar);
                bufferedWriter2.flush();
                i.closeOrLog(bufferedWriter2, "Failed to close key/value metadata file.");
            } catch (Exception e) {
                e = e;
                bufferedWriter = bufferedWriter2;
                try {
                    io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error serializing key/value metadata.", e);
                    i.closeOrLog(bufferedWriter, "Failed to close key/value metadata file.");
                } catch (Throwable th) {
                    th = th;
                    i.closeOrLog(bufferedWriter, "Failed to close key/value metadata file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter = bufferedWriter2;
                i.closeOrLog(bufferedWriter, "Failed to close key/value metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error serializing key/value metadata.", e);
            i.closeOrLog(bufferedWriter, "Failed to close key/value metadata file.");
        }
    }

    public final Map<String, String> readKeyData(String str) {
        File b2 = b(str);
        if (!b2.exists()) {
            return Collections.emptyMap();
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(b2);
            try {
                Map<String, String> c = c(i.streamToString(fileInputStream2));
                i.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
                return c;
            } catch (Exception e) {
                e = e;
                fileInputStream = fileInputStream2;
                try {
                    io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error deserializing user metadata.", e);
                    i.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                    return Collections.emptyMap();
                } catch (Throwable th) {
                    th = th;
                    i.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                i.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error deserializing user metadata.", e);
            i.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            return Collections.emptyMap();
        }
    }

    private File a(String str) {
        File file = this.f1828b;
        return new File(file, str + "user.meta");
    }

    private File b(String str) {
        File file = this.f1828b;
        return new File(file, str + "keys.meta");
    }

    private static Map<String, String> c(String str) throws b {
        c cVar = new c(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = cVar.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, a(cVar, next));
        }
        return hashMap;
    }

    private static String a(c cVar, String str) {
        if (!cVar.isNull(str)) {
            return cVar.optString(str, null);
        }
        return null;
    }
}
