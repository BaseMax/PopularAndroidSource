package e.a.a.a.a.d;

import android.content.Context;
import e.a.a.a.a.b.z;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: QueueFileEventStorage */
public class i implements d {

    /* renamed from: a  reason: collision with root package name */
    public final Context f13744a;

    /* renamed from: b  reason: collision with root package name */
    public final File f13745b;

    /* renamed from: c  reason: collision with root package name */
    public final String f13746c;

    /* renamed from: d  reason: collision with root package name */
    public final File f13747d;

    /* renamed from: e  reason: collision with root package name */
    public z f13748e = new z(this.f13747d);

    /* renamed from: f  reason: collision with root package name */
    public File f13749f;

    public i(Context context, File file, String str, String str2) {
        this.f13744a = context;
        this.f13745b = file;
        this.f13746c = str2;
        this.f13747d = new File(this.f13745b, str);
        e();
    }

    public OutputStream a(File file) {
        throw null;
    }

    public void a(byte[] bArr) {
        this.f13748e.a(bArr);
    }

    public boolean b() {
        return this.f13748e.t();
    }

    public List<File> c() {
        return Arrays.asList(this.f13749f.listFiles());
    }

    public void d() {
        try {
            this.f13748e.close();
        } catch (IOException unused) {
        }
        this.f13747d.delete();
    }

    public final void e() {
        this.f13749f = new File(this.f13745b, this.f13746c);
        if (!this.f13749f.exists()) {
            this.f13749f.mkdirs();
        }
    }

    public int a() {
        return this.f13748e.x();
    }

    public void a(String str) {
        this.f13748e.close();
        a(this.f13747d, new File(this.f13749f, str));
        this.f13748e = new z(this.f13747d);
    }

    public final void a(File file, File file2) {
        FileInputStream fileInputStream;
        OutputStream outputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                outputStream = a(file2);
                CommonUtils.a((InputStream) fileInputStream, outputStream, new byte[1024]);
                CommonUtils.a((Closeable) fileInputStream, "Failed to close file input stream");
                CommonUtils.a((Closeable) outputStream, "Failed to close output stream");
                file.delete();
            } catch (Throwable th) {
                th = th;
                CommonUtils.a((Closeable) fileInputStream, "Failed to close file input stream");
                CommonUtils.a((Closeable) outputStream, "Failed to close output stream");
                file.delete();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            CommonUtils.a((Closeable) fileInputStream, "Failed to close file input stream");
            CommonUtils.a((Closeable) outputStream, "Failed to close output stream");
            file.delete();
            throw th;
        }
    }

    public List<File> a(int i2) {
        ArrayList arrayList = new ArrayList();
        for (File add : this.f13749f.listFiles()) {
            arrayList.add(add);
            if (arrayList.size() >= i2) {
                break;
            }
        }
        return arrayList;
    }

    public void a(List<File> list) {
        for (File next : list) {
            CommonUtils.c(this.f13744a, String.format("deleting sent analytics file %s", new Object[]{next.getName()}));
            next.delete();
        }
    }

    public boolean a(int i2, int i3) {
        return this.f13748e.a(i2, i3);
    }
}
