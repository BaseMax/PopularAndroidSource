package c.b.a.c.c;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import c.b.a.c.c.u;
import c.b.a.c.f;
import java.io.InputStream;

/* compiled from: ResourceLoader */
public class z<Data> implements u<Integer, Data> {

    /* renamed from: a  reason: collision with root package name */
    public final u<Uri, Data> f4143a;

    /* renamed from: b  reason: collision with root package name */
    public final Resources f4144b;

    /* compiled from: ResourceLoader */
    public static final class a implements v<Integer, AssetFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        public final Resources f4145a;

        public a(Resources resources) {
            this.f4145a = resources;
        }

        public u<Integer, AssetFileDescriptor> a(y yVar) {
            return new z(this.f4145a, yVar.a(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* compiled from: ResourceLoader */
    public static class b implements v<Integer, ParcelFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        public final Resources f4146a;

        public b(Resources resources) {
            this.f4146a = resources;
        }

        public u<Integer, ParcelFileDescriptor> a(y yVar) {
            return new z(this.f4146a, yVar.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* compiled from: ResourceLoader */
    public static class c implements v<Integer, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        public final Resources f4147a;

        public c(Resources resources) {
            this.f4147a = resources;
        }

        public u<Integer, InputStream> a(y yVar) {
            return new z(this.f4147a, yVar.a(Uri.class, InputStream.class));
        }
    }

    /* compiled from: ResourceLoader */
    public static class d implements v<Integer, Uri> {

        /* renamed from: a  reason: collision with root package name */
        public final Resources f4148a;

        public d(Resources resources) {
            this.f4148a = resources;
        }

        public u<Integer, Uri> a(y yVar) {
            return new z(this.f4148a, C.a());
        }
    }

    public z(Resources resources, u<Uri, Data> uVar) {
        this.f4144b = resources;
        this.f4143a = uVar;
    }

    /* renamed from: b */
    public boolean a(Integer num) {
        return true;
    }

    public u.a<Data> a(Integer num, int i2, int i3, f fVar) {
        Uri a2 = a(num);
        if (a2 == null) {
            return null;
        }
        return this.f4143a.a(a2, i2, i3, fVar);
    }

    public final Uri a(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f4144b.getResourcePackageName(num.intValue()) + '/' + this.f4144b.getResourceTypeName(num.intValue()) + '/' + this.f4144b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e2) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e2);
            }
            return null;
        }
    }
}
