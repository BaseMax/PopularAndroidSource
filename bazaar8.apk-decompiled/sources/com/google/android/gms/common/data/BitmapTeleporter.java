package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import c.e.a.b.d.b.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f13001a;

    /* renamed from: b  reason: collision with root package name */
    public ParcelFileDescriptor f13002b;

    /* renamed from: c  reason: collision with root package name */
    public final int f13003c;

    /* renamed from: d  reason: collision with root package name */
    public Bitmap f13004d = null;

    /* renamed from: e  reason: collision with root package name */
    public boolean f13005e = false;

    /* renamed from: f  reason: collision with root package name */
    public File f13006f;

    public BitmapTeleporter(int i2, ParcelFileDescriptor parcelFileDescriptor, int i3) {
        this.f13001a = i2;
        this.f13002b = parcelFileDescriptor;
        this.f13003c = i3;
    }

    public static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e2) {
            Log.w("BitmapTeleporter", "Could not close stream", e2);
        }
    }

    public void writeToParcel(Parcel parcel, int i2) {
        if (this.f13002b == null) {
            Bitmap bitmap = this.f13004d;
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(x()));
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
        int a2 = c.e.a.b.d.d.a.a.a(parcel);
        c.e.a.b.d.d.a.a.a(parcel, 1, this.f13001a);
        c.e.a.b.d.d.a.a.a(parcel, 2, (Parcelable) this.f13002b, i2 | 1, false);
        c.e.a.b.d.d.a.a.a(parcel, 3, this.f13003c);
        c.e.a.b.d.d.a.a.a(parcel, a2);
        this.f13002b = null;
    }

    public final FileOutputStream x() {
        File file = this.f13006f;
        if (file != null) {
            try {
                File createTempFile = File.createTempFile("teleporter", ".tmp", file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    this.f13002b = ParcelFileDescriptor.open(createTempFile, 268435456);
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
}
