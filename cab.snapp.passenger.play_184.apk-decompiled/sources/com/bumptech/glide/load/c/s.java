package com.bumptech.glide.load.c;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.io.InputStream;

public final class s<Data> implements n<Integer, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final n<Uri, Data> f2306a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f2307b;

    public static final class a implements o<Integer, AssetFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f2308a;

        public final void teardown() {
        }

        public a(Resources resources) {
            this.f2308a = resources;
        }

        public final n<Integer, AssetFileDescriptor> build(r rVar) {
            return new s(this.f2308a, rVar.build(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class b implements o<Integer, ParcelFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f2309a;

        public final void teardown() {
        }

        public b(Resources resources) {
            this.f2309a = resources;
        }

        public final n<Integer, ParcelFileDescriptor> build(r rVar) {
            return new s(this.f2309a, rVar.build(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class c implements o<Integer, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f2310a;

        public final void teardown() {
        }

        public c(Resources resources) {
            this.f2310a = resources;
        }

        public final n<Integer, InputStream> build(r rVar) {
            return new s(this.f2310a, rVar.build(Uri.class, InputStream.class));
        }
    }

    public static class d implements o<Integer, Uri> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f2311a;

        public final void teardown() {
        }

        public d(Resources resources) {
            this.f2311a = resources;
        }

        public final n<Integer, Uri> build(r rVar) {
            return new s(this.f2311a, v.getInstance());
        }
    }

    public final boolean handles(Integer num) {
        return true;
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.f2307b = resources;
        this.f2306a = nVar;
    }

    public final n.a<Data> buildLoadData(Integer num, int i, int i2, g gVar) {
        Uri a2 = a(num);
        if (a2 == null) {
            return null;
        }
        return this.f2306a.buildLoadData(a2, i, i2, gVar);
    }

    private Uri a(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f2307b.getResourcePackageName(num.intValue()) + '/' + this.f2307b.getResourceTypeName(num.intValue()) + '/' + this.f2307b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException unused) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                new StringBuilder("Received invalid resource id: ").append(num);
            }
            return null;
        }
    }
}
