package c.e.a.b.g.f;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.e.a;
import com.google.android.gms.internal.measurement.zzy;

public final class ed extends C0798a implements cd {
    public ed(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public final void beginAdUnitExposure(String str, long j2) {
        Parcel A = A();
        A.writeString(str);
        A.writeLong(j2);
        b(23, A);
    }

    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        V.a(A, (Parcelable) bundle);
        b(9, A);
    }

    public final void endAdUnitExposure(String str, long j2) {
        Parcel A = A();
        A.writeString(str);
        A.writeLong(j2);
        b(24, A);
    }

    public final void generateEventId(fd fdVar) {
        Parcel A = A();
        V.a(A, (IInterface) fdVar);
        b(22, A);
    }

    public final void getCachedAppInstanceId(fd fdVar) {
        Parcel A = A();
        V.a(A, (IInterface) fdVar);
        b(19, A);
    }

    public final void getConditionalUserProperties(String str, String str2, fd fdVar) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        V.a(A, (IInterface) fdVar);
        b(10, A);
    }

    public final void getCurrentScreenClass(fd fdVar) {
        Parcel A = A();
        V.a(A, (IInterface) fdVar);
        b(17, A);
    }

    public final void getCurrentScreenName(fd fdVar) {
        Parcel A = A();
        V.a(A, (IInterface) fdVar);
        b(16, A);
    }

    public final void getGmpAppId(fd fdVar) {
        Parcel A = A();
        V.a(A, (IInterface) fdVar);
        b(21, A);
    }

    public final void getMaxUserProperties(String str, fd fdVar) {
        Parcel A = A();
        A.writeString(str);
        V.a(A, (IInterface) fdVar);
        b(6, A);
    }

    public final void getUserProperties(String str, String str2, boolean z, fd fdVar) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        V.a(A, z);
        V.a(A, (IInterface) fdVar);
        b(5, A);
    }

    public final void initialize(a aVar, zzy zzy, long j2) {
        Parcel A = A();
        V.a(A, (IInterface) aVar);
        V.a(A, (Parcelable) zzy);
        A.writeLong(j2);
        b(1, A);
    }

    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        V.a(A, (Parcelable) bundle);
        V.a(A, z);
        V.a(A, z2);
        A.writeLong(j2);
        b(2, A);
    }

    public final void logHealthData(int i2, String str, a aVar, a aVar2, a aVar3) {
        Parcel A = A();
        A.writeInt(i2);
        A.writeString(str);
        V.a(A, (IInterface) aVar);
        V.a(A, (IInterface) aVar2);
        V.a(A, (IInterface) aVar3);
        b(33, A);
    }

    public final void onActivityCreated(a aVar, Bundle bundle, long j2) {
        Parcel A = A();
        V.a(A, (IInterface) aVar);
        V.a(A, (Parcelable) bundle);
        A.writeLong(j2);
        b(27, A);
    }

    public final void onActivityDestroyed(a aVar, long j2) {
        Parcel A = A();
        V.a(A, (IInterface) aVar);
        A.writeLong(j2);
        b(28, A);
    }

    public final void onActivityPaused(a aVar, long j2) {
        Parcel A = A();
        V.a(A, (IInterface) aVar);
        A.writeLong(j2);
        b(29, A);
    }

    public final void onActivityResumed(a aVar, long j2) {
        Parcel A = A();
        V.a(A, (IInterface) aVar);
        A.writeLong(j2);
        b(30, A);
    }

    public final void onActivitySaveInstanceState(a aVar, fd fdVar, long j2) {
        Parcel A = A();
        V.a(A, (IInterface) aVar);
        V.a(A, (IInterface) fdVar);
        A.writeLong(j2);
        b(31, A);
    }

    public final void onActivityStarted(a aVar, long j2) {
        Parcel A = A();
        V.a(A, (IInterface) aVar);
        A.writeLong(j2);
        b(25, A);
    }

    public final void onActivityStopped(a aVar, long j2) {
        Parcel A = A();
        V.a(A, (IInterface) aVar);
        A.writeLong(j2);
        b(26, A);
    }

    public final void registerOnMeasurementEventListener(id idVar) {
        Parcel A = A();
        V.a(A, (IInterface) idVar);
        b(35, A);
    }

    public final void setConditionalUserProperty(Bundle bundle, long j2) {
        Parcel A = A();
        V.a(A, (Parcelable) bundle);
        A.writeLong(j2);
        b(8, A);
    }

    public final void setCurrentScreen(a aVar, String str, String str2, long j2) {
        Parcel A = A();
        V.a(A, (IInterface) aVar);
        A.writeString(str);
        A.writeString(str2);
        A.writeLong(j2);
        b(15, A);
    }

    public final void setDataCollectionEnabled(boolean z) {
        Parcel A = A();
        V.a(A, z);
        b(39, A);
    }

    public final void setUserProperty(String str, String str2, a aVar, boolean z, long j2) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        V.a(A, (IInterface) aVar);
        V.a(A, z);
        A.writeLong(j2);
        b(4, A);
    }
}
