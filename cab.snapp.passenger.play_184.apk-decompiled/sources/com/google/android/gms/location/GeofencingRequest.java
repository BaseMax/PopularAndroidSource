package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import com.google.android.gms.internal.zzcfs;
import java.util.ArrayList;
import java.util.List;

public class GeofencingRequest extends zzbfm {
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new ac();
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;

    /* renamed from: a  reason: collision with root package name */
    private final List<zzcfs> f3624a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3625b;
    private final String c;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<zzcfs> f3626a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private int f3627b = 5;
        private String c = "";

        public final a addGeofence(c cVar) {
            ap.checkNotNull(cVar, "geofence can't be null.");
            ap.checkArgument(cVar instanceof zzcfs, "Geofence must be created using Geofence.Builder.");
            this.f3626a.add((zzcfs) cVar);
            return this;
        }

        public final a addGeofences(List<c> list) {
            if (list != null && !list.isEmpty()) {
                for (c next : list) {
                    if (next != null) {
                        addGeofence(next);
                    }
                }
            }
            return this;
        }

        public final GeofencingRequest build() {
            ap.checkArgument(!this.f3626a.isEmpty(), "No geofence has been added to this request.");
            return new GeofencingRequest(this.f3626a, this.f3627b, this.c);
        }

        public final a setInitialTrigger(int i) {
            this.f3627b = i & 7;
            return this;
        }
    }

    GeofencingRequest(List<zzcfs> list, int i, String str) {
        this.f3624a = list;
        this.f3625b = i;
        this.c = str;
    }

    public List<c> getGeofences() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f3624a);
        return arrayList;
    }

    public int getInitialTrigger() {
        return this.f3625b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GeofencingRequest[");
        sb.append("geofences=");
        sb.append(this.f3624a);
        int i = this.f3625b;
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append(", initialTrigger=");
        sb2.append(i);
        sb2.append(", ");
        sb.append(sb2.toString());
        String valueOf = String.valueOf(this.c);
        sb.append(valueOf.length() != 0 ? "tag=".concat(valueOf) : new String("tag="));
        sb.append("]");
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3624a, false);
        el.zzc(parcel, 2, getInitialTrigger());
        el.zza(parcel, 3, this.c, false);
        el.zzai(parcel, zze);
    }
}
