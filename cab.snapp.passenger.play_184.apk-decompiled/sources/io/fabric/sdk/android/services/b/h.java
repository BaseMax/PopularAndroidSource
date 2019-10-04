package io.fabric.sdk.android.services.b;

import android.content.Context;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.common.o;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class h implements c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6571a;

    /* renamed from: b  reason: collision with root package name */
    private final File f6572b;
    private final String c;
    private final File d;
    private o e = new o(this.d);
    private File f = new File(this.f6572b, this.c);

    public h(Context context, File file, String str, String str2) throws IOException {
        this.f6571a = context;
        this.f6572b = file;
        this.c = str2;
        this.d = new File(this.f6572b, str);
        if (!this.f.exists()) {
            this.f.mkdirs();
        }
    }

    public void add(byte[] bArr) throws IOException {
        this.e.add(bArr);
    }

    public int getWorkingFileUsedSizeInBytes() {
        return this.e.usedBytes();
    }

    public void rollOver(String str) throws IOException {
        FileInputStream fileInputStream;
        this.e.close();
        File file = this.d;
        File file2 = new File(this.f, str);
        OutputStream outputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                outputStream = getMoveOutputStream(file2);
                i.copyStream(fileInputStream, outputStream, new byte[1024]);
                i.closeOrLog(fileInputStream, "Failed to close file input stream");
                i.closeOrLog(outputStream, "Failed to close output stream");
                file.delete();
                this.e = new o(this.d);
            } catch (Throwable th) {
                th = th;
                i.closeOrLog(fileInputStream, "Failed to close file input stream");
                i.closeOrLog(outputStream, "Failed to close output stream");
                file.delete();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            i.closeOrLog(fileInputStream, "Failed to close file input stream");
            i.closeOrLog(outputStream, "Failed to close output stream");
            file.delete();
            throw th;
        }
    }

    public OutputStream getMoveOutputStream(File file) throws IOException {
        return new FileOutputStream(file);
    }

    public File getWorkingDirectory() {
        return this.f6572b;
    }

    public File getRollOverDirectory() {
        return this.f;
    }

    public List<File> getBatchOfFilesToSend(int i) {
        ArrayList arrayList = new ArrayList();
        for (File add : this.f.listFiles()) {
            arrayList.add(add);
            if (arrayList.size() >= i) {
                break;
            }
        }
        return arrayList;
    }

    public void deleteFilesInRollOverDirectory(List<File> list) {
        for (File next : list) {
            i.logControlled(this.f6571a, String.format("deleting sent analytics file %s", new Object[]{next.getName()}));
            next.delete();
        }
    }

    public List<File> getAllFilesInRollOverDirectory() {
        return Arrays.asList(this.f.listFiles());
    }

    public void deleteWorkingFile() {
        try {
            this.e.close();
        } catch (IOException unused) {
        }
        this.d.delete();
    }

    public boolean isWorkingFileEmpty() {
        return this.e.isEmpty();
    }

    public boolean canWorkingFileStore(int i, int i2) {
        return this.e.hasSpaceFor(i, i2);
    }
}
