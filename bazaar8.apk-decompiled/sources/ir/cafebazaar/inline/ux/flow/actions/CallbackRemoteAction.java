package ir.cafebazaar.inline.ux.flow.actions;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import f.a.a.e.g;
import f.a.a.g.d.a.l;
import f.a.a.g.d.b;

public abstract class CallbackRemoteAction extends l implements b, Parcelable {
    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public CallbackRemoteAction(android.os.Parcel r5) {
        /*
            r4 = this;
            java.lang.String r0 = r5.readString()
            int r1 = r5.readInt()
            r2 = 0
            r3 = 1
            if (r1 != r3) goto L_0x000e
            r1 = 1
            goto L_0x000f
        L_0x000e:
            r1 = 0
        L_0x000f:
            int r5 = r5.readInt()
            if (r5 != r3) goto L_0x0016
            r2 = 1
        L_0x0016:
            r4.<init>(r0, r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ir.cafebazaar.inline.ux.flow.actions.CallbackRemoteAction.<init>(android.os.Parcel):void");
    }

    public abstract void a(g gVar, int i2, Intent intent, Parcelable parcelable);

    public abstract boolean a(int i2);

    public boolean a(g gVar, int i2, int i3, Intent intent) {
        if (!a(i2)) {
            return false;
        }
        a(gVar, i3, intent, gVar.f().v().a());
        return true;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(a());
        int i3 = 1;
        parcel.writeInt(this.f14448b ? 1 : 0);
        if (!this.f14449c) {
            i3 = 0;
        }
        parcel.writeInt(i3);
    }

    public CallbackRemoteAction(String str, boolean z, boolean z2) {
        super(str, z, z2);
    }
}
