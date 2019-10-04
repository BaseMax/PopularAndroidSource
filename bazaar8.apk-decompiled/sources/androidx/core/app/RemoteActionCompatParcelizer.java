package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
import b.F.c;

public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f580a = (IconCompat) versionedParcel.a(remoteActionCompat.f580a, 1);
        remoteActionCompat.f581b = versionedParcel.a(remoteActionCompat.f581b, 2);
        remoteActionCompat.f582c = versionedParcel.a(remoteActionCompat.f582c, 3);
        remoteActionCompat.f583d = (PendingIntent) versionedParcel.a(remoteActionCompat.f583d, 4);
        remoteActionCompat.f584e = versionedParcel.a(remoteActionCompat.f584e, 5);
        remoteActionCompat.f585f = versionedParcel.a(remoteActionCompat.f585f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.a(false, false);
        versionedParcel.b((c) remoteActionCompat.f580a, 1);
        versionedParcel.b(remoteActionCompat.f581b, 2);
        versionedParcel.b(remoteActionCompat.f582c, 3);
        versionedParcel.b((Parcelable) remoteActionCompat.f583d, 4);
        versionedParcel.b(remoteActionCompat.f584e, 5);
        versionedParcel.b(remoteActionCompat.f585f, 6);
    }
}
