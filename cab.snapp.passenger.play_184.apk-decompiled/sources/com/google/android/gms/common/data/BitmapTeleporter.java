package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

public class BitmapTeleporter extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private int f2897a;

    /* renamed from: b  reason: collision with root package name */
    private ParcelFileDescriptor f2898b;
    private int c;
    private Bitmap d;
    private boolean e;
    private File f;

    BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.f2897a = i;
        this.f2898b = parcelFileDescriptor;
        this.c = i2;
        this.d = null;
        this.e = false;
    }

    public BitmapTeleporter(Bitmap bitmap) {
        this.f2897a = 1;
        this.f2898b = null;
        this.c = 0;
        this.d = bitmap;
        this.e = true;
    }

    private final FileOutputStream a() {
        File file = this.f;
        if (file != null) {
            try {
                File createTempFile = File.createTempFile("teleporter", ".tmp", file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    this.f2898b = ParcelFileDescriptor.open(createTempFile, 268435456);
                    createTempFile.delete();
                    return fileOutputStream;
                } catch (FileNotFoundException unused) {
                    throw new IllegalStateException("Temporary file is somehow already deleted");
                }
            } catch (IOException e2) {
                throw new IllegalStateException("Could not create temporary file", e2);
            }
        } else {
            throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
        }
    }

    private static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public final void release() {
        if (!this.e) {
            try {
                this.f2898b.close();
            } catch (IOException unused) {
            }
        }
    }

    public final void setTempDir(File file) {
        if (file != null) {
            this.f = file;
            return;
        }
        throw new NullPointerException("Cannot set null temp directory");
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (this.f2898b == null) {
            Bitmap bitmap = this.d;
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(a()));
            try {
                dataOutputStream.writeInt(array.length);
                dataOutputStream.writeInt(bitmap.getWidth());
                dataOutputStream.writeInt(bitmap.getHeight());
                dataOutputStream.writeUTF(bitmap.getConfig().toString());
                dataOutputStream.write(array);
                a(dataOutputStream);
            } catch (IOException e2) {
                throw new IllegalStateException("Could not write into unlinked file", e2);
            } catch (Throwable th) {
                a(dataOutputStream);
                throw th;
            }
        }
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2897a);
        el.zza(parcel, 2, (Parcelable) this.f2898b, i | 1, false);
        el.zzc(parcel, 3, this.c);
        el.zzai(parcel, zze);
        this.f2898b = null;
    }

    public final Bitmap zzajw() {
        if (!this.e) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.f2898b));
            try {
                byte[] bArr = new byte[dataInputStream.readInt()];
                int readInt = dataInputStream.readInt();
                int readInt2 = dataInputStream.readInt();
                Bitmap.Config valueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                dataInputStream.read(bArr);
                a(dataInputStream);
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                Bitmap createBitmap = Bitmap.createBitmap(readInt, readInt2, valueOf);
                createBitmap.copyPixelsFromBuffer(wrap);
                this.d = createBitmap;
                this.e = true;
            } catch (IOException e2) {
                throw new IllegalStateException("Could not read from parcel file descriptor", e2);
            } catch (Throwable th) {
                a(dataInputStream);
                throw th;
            }
        }
        return this.d;
    }
}
