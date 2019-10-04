package a.a.b.b.a;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.ParcelableVolumeInfo;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import java.util.List;

/* compiled from: IMediaSession */
public interface b extends IInterface {

    /* compiled from: IMediaSession */
    public static abstract class a extends Binder implements b {

        /* renamed from: a.a.b.b.a.b$a$a  reason: collision with other inner class name */
        /* compiled from: IMediaSession */
        private static class C0004a implements b {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f5a;

            public C0004a(IBinder iBinder) {
                this.f5a = iBinder;
            }

            public boolean a(KeyEvent keyEvent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = true;
                    if (keyEvent != null) {
                        obtain.writeInt(1);
                        keyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f5a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public IBinder asBinder() {
                return this.f5a;
            }

            public void b(a aVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.f5a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public MediaMetadataCompat c() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f5a.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MediaMetadataCompat.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void f() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f5a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void next() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f5a.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void pause() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f5a.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void previous() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f5a.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public PlaybackStateCompat b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f5a.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? PlaybackStateCompat.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void a(a aVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.f5a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "android.support.v4.media.session.IMediaSession");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof b)) {
                return new C0004a(iBinder);
            }
            return (b) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v1, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v4, resolved type: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v7, resolved type: android.view.KeyEvent} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v10, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v13, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v16, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v19, resolved type: android.support.v4.media.RatingCompat} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v22, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v25, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v28, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v31, resolved type: android.os.Bundle} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v34, resolved type: android.support.v4.media.MediaDescriptionCompat} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v37, resolved type: android.support.v4.media.MediaDescriptionCompat} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v40, resolved type: android.support.v4.media.MediaDescriptionCompat} */
        /* JADX WARNING: type inference failed for: r1v0 */
        /* JADX WARNING: type inference failed for: r1v43 */
        /* JADX WARNING: type inference failed for: r1v44 */
        /* JADX WARNING: type inference failed for: r1v45 */
        /* JADX WARNING: type inference failed for: r1v46 */
        /* JADX WARNING: type inference failed for: r1v47 */
        /* JADX WARNING: type inference failed for: r1v48 */
        /* JADX WARNING: type inference failed for: r1v49 */
        /* JADX WARNING: type inference failed for: r1v50 */
        /* JADX WARNING: type inference failed for: r1v51 */
        /* JADX WARNING: type inference failed for: r1v52 */
        /* JADX WARNING: type inference failed for: r1v53 */
        /* JADX WARNING: type inference failed for: r1v54 */
        /* JADX WARNING: type inference failed for: r1v55 */
        /* JADX WARNING: type inference failed for: r1v56 */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onTransact(int r5, android.os.Parcel r6, android.os.Parcel r7, int r8) {
            /*
                r4 = this;
                r0 = 51
                r1 = 0
                java.lang.String r2 = "android.support.v4.media.session.IMediaSession"
                r3 = 1
                if (r5 == r0) goto L_0x03d9
                r0 = 1598968902(0x5f4e5446, float:1.4867585E19)
                if (r5 == r0) goto L_0x03d5
                r0 = 0
                switch(r5) {
                    case 1: goto L_0x03a8;
                    case 2: goto L_0x0388;
                    case 3: goto L_0x0376;
                    case 4: goto L_0x0364;
                    case 5: goto L_0x0353;
                    case 6: goto L_0x0345;
                    case 7: goto L_0x0337;
                    case 8: goto L_0x0320;
                    case 9: goto L_0x0312;
                    case 10: goto L_0x02fb;
                    case 11: goto L_0x02e5;
                    case 12: goto L_0x02cf;
                    case 13: goto L_0x02c5;
                    case 14: goto L_0x02a8;
                    case 15: goto L_0x028b;
                    case 16: goto L_0x0262;
                    case 17: goto L_0x0254;
                    case 18: goto L_0x024a;
                    case 19: goto L_0x0240;
                    case 20: goto L_0x0236;
                    case 21: goto L_0x022c;
                    case 22: goto L_0x0222;
                    case 23: goto L_0x0218;
                    case 24: goto L_0x020a;
                    case 25: goto L_0x01f1;
                    case 26: goto L_0x01d4;
                    case 27: goto L_0x01bd;
                    case 28: goto L_0x01a6;
                    case 29: goto L_0x0198;
                    case 30: goto L_0x0181;
                    case 31: goto L_0x016a;
                    case 32: goto L_0x015c;
                    case 33: goto L_0x0152;
                    case 34: goto L_0x0135;
                    case 35: goto L_0x0118;
                    case 36: goto L_0x00ef;
                    case 37: goto L_0x00e1;
                    case 38: goto L_0x00d0;
                    case 39: goto L_0x00c2;
                    case 40: goto L_0x00b1;
                    case 41: goto L_0x0098;
                    case 42: goto L_0x007b;
                    case 43: goto L_0x0062;
                    case 44: goto L_0x0054;
                    case 45: goto L_0x0043;
                    case 46: goto L_0x0032;
                    case 47: goto L_0x0024;
                    case 48: goto L_0x0016;
                    default: goto L_0x0011;
                }
            L_0x0011:
                boolean r5 = super.onTransact(r5, r6, r7, r8)
                return r5
            L_0x0016:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                r4.e(r5)
                r7.writeNoException()
                return r3
            L_0x0024:
                r6.enforceInterface(r2)
                int r5 = r4.o()
                r7.writeNoException()
                r7.writeInt(r5)
                return r3
            L_0x0032:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x003c
                r0 = 1
            L_0x003c:
                r4.c((boolean) r0)
                r7.writeNoException()
                return r3
            L_0x0043:
                r6.enforceInterface(r2)
                boolean r5 = r4.p()
                r7.writeNoException()
                if (r5 == 0) goto L_0x0050
                r0 = 1
            L_0x0050:
                r7.writeInt(r0)
                return r3
            L_0x0054:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                r4.c((int) r5)
                r7.writeNoException()
                return r3
            L_0x0062:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x0074
                android.os.Parcelable$Creator<android.support.v4.media.MediaDescriptionCompat> r5 = android.support.v4.media.MediaDescriptionCompat.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r1 = r5
                android.support.v4.media.MediaDescriptionCompat r1 = (android.support.v4.media.MediaDescriptionCompat) r1
            L_0x0074:
                r4.a((android.support.v4.media.MediaDescriptionCompat) r1)
                r7.writeNoException()
                return r3
            L_0x007b:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x008d
                android.os.Parcelable$Creator<android.support.v4.media.MediaDescriptionCompat> r5 = android.support.v4.media.MediaDescriptionCompat.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r1 = r5
                android.support.v4.media.MediaDescriptionCompat r1 = (android.support.v4.media.MediaDescriptionCompat) r1
            L_0x008d:
                int r5 = r6.readInt()
                r4.a((android.support.v4.media.MediaDescriptionCompat) r1, (int) r5)
                r7.writeNoException()
                return r3
            L_0x0098:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x00aa
                android.os.Parcelable$Creator<android.support.v4.media.MediaDescriptionCompat> r5 = android.support.v4.media.MediaDescriptionCompat.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r1 = r5
                android.support.v4.media.MediaDescriptionCompat r1 = (android.support.v4.media.MediaDescriptionCompat) r1
            L_0x00aa:
                r4.b((android.support.v4.media.MediaDescriptionCompat) r1)
                r7.writeNoException()
                return r3
            L_0x00b1:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x00bb
                r0 = 1
            L_0x00bb:
                r4.d(r0)
                r7.writeNoException()
                return r3
            L_0x00c2:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                r4.b((int) r5)
                r7.writeNoException()
                return r3
            L_0x00d0:
                r6.enforceInterface(r2)
                boolean r5 = r4.g()
                r7.writeNoException()
                if (r5 == 0) goto L_0x00dd
                r0 = 1
            L_0x00dd:
                r7.writeInt(r0)
                return r3
            L_0x00e1:
                r6.enforceInterface(r2)
                int r5 = r4.d()
                r7.writeNoException()
                r7.writeInt(r5)
                return r3
            L_0x00ef:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x0101
                android.os.Parcelable$Creator r5 = android.net.Uri.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                android.net.Uri r5 = (android.net.Uri) r5
                goto L_0x0102
            L_0x0101:
                r5 = r1
            L_0x0102:
                int r8 = r6.readInt()
                if (r8 == 0) goto L_0x0111
                android.os.Parcelable$Creator r8 = android.os.Bundle.CREATOR
                java.lang.Object r6 = r8.createFromParcel(r6)
                r1 = r6
                android.os.Bundle r1 = (android.os.Bundle) r1
            L_0x0111:
                r4.a((android.net.Uri) r5, (android.os.Bundle) r1)
                r7.writeNoException()
                return r3
            L_0x0118:
                r6.enforceInterface(r2)
                java.lang.String r5 = r6.readString()
                int r8 = r6.readInt()
                if (r8 == 0) goto L_0x012e
                android.os.Parcelable$Creator r8 = android.os.Bundle.CREATOR
                java.lang.Object r6 = r8.createFromParcel(r6)
                r1 = r6
                android.os.Bundle r1 = (android.os.Bundle) r1
            L_0x012e:
                r4.b((java.lang.String) r5, (android.os.Bundle) r1)
                r7.writeNoException()
                return r3
            L_0x0135:
                r6.enforceInterface(r2)
                java.lang.String r5 = r6.readString()
                int r8 = r6.readInt()
                if (r8 == 0) goto L_0x014b
                android.os.Parcelable$Creator r8 = android.os.Bundle.CREATOR
                java.lang.Object r6 = r8.createFromParcel(r6)
                r1 = r6
                android.os.Bundle r1 = (android.os.Bundle) r1
            L_0x014b:
                r4.c(r5, r1)
                r7.writeNoException()
                return r3
            L_0x0152:
                r6.enforceInterface(r2)
                r4.k()
                r7.writeNoException()
                return r3
            L_0x015c:
                r6.enforceInterface(r2)
                int r5 = r4.j()
                r7.writeNoException()
                r7.writeInt(r5)
                return r3
            L_0x016a:
                r6.enforceInterface(r2)
                android.os.Bundle r5 = r4.getExtras()
                r7.writeNoException()
                if (r5 == 0) goto L_0x017d
                r7.writeInt(r3)
                r5.writeToParcel(r7, r3)
                goto L_0x0180
            L_0x017d:
                r7.writeInt(r0)
            L_0x0180:
                return r3
            L_0x0181:
                r6.enforceInterface(r2)
                java.lang.CharSequence r5 = r4.m()
                r7.writeNoException()
                if (r5 == 0) goto L_0x0194
                r7.writeInt(r3)
                android.text.TextUtils.writeToParcel(r5, r7, r3)
                goto L_0x0197
            L_0x0194:
                r7.writeInt(r0)
            L_0x0197:
                return r3
            L_0x0198:
                r6.enforceInterface(r2)
                java.util.List r5 = r4.q()
                r7.writeNoException()
                r7.writeTypedList(r5)
                return r3
            L_0x01a6:
                r6.enforceInterface(r2)
                android.support.v4.media.session.PlaybackStateCompat r5 = r4.b()
                r7.writeNoException()
                if (r5 == 0) goto L_0x01b9
                r7.writeInt(r3)
                r5.writeToParcel(r7, r3)
                goto L_0x01bc
            L_0x01b9:
                r7.writeInt(r0)
            L_0x01bc:
                return r3
            L_0x01bd:
                r6.enforceInterface(r2)
                android.support.v4.media.MediaMetadataCompat r5 = r4.c()
                r7.writeNoException()
                if (r5 == 0) goto L_0x01d0
                r7.writeInt(r3)
                r5.writeToParcel(r7, r3)
                goto L_0x01d3
            L_0x01d0:
                r7.writeInt(r0)
            L_0x01d3:
                return r3
            L_0x01d4:
                r6.enforceInterface(r2)
                java.lang.String r5 = r6.readString()
                int r8 = r6.readInt()
                if (r8 == 0) goto L_0x01ea
                android.os.Parcelable$Creator r8 = android.os.Bundle.CREATOR
                java.lang.Object r6 = r8.createFromParcel(r6)
                r1 = r6
                android.os.Bundle r1 = (android.os.Bundle) r1
            L_0x01ea:
                r4.a((java.lang.String) r5, (android.os.Bundle) r1)
                r7.writeNoException()
                return r3
            L_0x01f1:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x0203
                android.os.Parcelable$Creator<android.support.v4.media.RatingCompat> r5 = android.support.v4.media.RatingCompat.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r1 = r5
                android.support.v4.media.RatingCompat r1 = (android.support.v4.media.RatingCompat) r1
            L_0x0203:
                r4.a((android.support.v4.media.RatingCompat) r1)
                r7.writeNoException()
                return r3
            L_0x020a:
                r6.enforceInterface(r2)
                long r5 = r6.readLong()
                r4.a((long) r5)
                r7.writeNoException()
                return r3
            L_0x0218:
                r6.enforceInterface(r2)
                r4.r()
                r7.writeNoException()
                return r3
            L_0x0222:
                r6.enforceInterface(r2)
                r4.n()
                r7.writeNoException()
                return r3
            L_0x022c:
                r6.enforceInterface(r2)
                r4.previous()
                r7.writeNoException()
                return r3
            L_0x0236:
                r6.enforceInterface(r2)
                r4.next()
                r7.writeNoException()
                return r3
            L_0x0240:
                r6.enforceInterface(r2)
                r4.stop()
                r7.writeNoException()
                return r3
            L_0x024a:
                r6.enforceInterface(r2)
                r4.pause()
                r7.writeNoException()
                return r3
            L_0x0254:
                r6.enforceInterface(r2)
                long r5 = r6.readLong()
                r4.b((long) r5)
                r7.writeNoException()
                return r3
            L_0x0262:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x0274
                android.os.Parcelable$Creator r5 = android.net.Uri.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                android.net.Uri r5 = (android.net.Uri) r5
                goto L_0x0275
            L_0x0274:
                r5 = r1
            L_0x0275:
                int r8 = r6.readInt()
                if (r8 == 0) goto L_0x0284
                android.os.Parcelable$Creator r8 = android.os.Bundle.CREATOR
                java.lang.Object r6 = r8.createFromParcel(r6)
                r1 = r6
                android.os.Bundle r1 = (android.os.Bundle) r1
            L_0x0284:
                r4.b((android.net.Uri) r5, (android.os.Bundle) r1)
                r7.writeNoException()
                return r3
            L_0x028b:
                r6.enforceInterface(r2)
                java.lang.String r5 = r6.readString()
                int r8 = r6.readInt()
                if (r8 == 0) goto L_0x02a1
                android.os.Parcelable$Creator r8 = android.os.Bundle.CREATOR
                java.lang.Object r6 = r8.createFromParcel(r6)
                r1 = r6
                android.os.Bundle r1 = (android.os.Bundle) r1
            L_0x02a1:
                r4.e(r5, r1)
                r7.writeNoException()
                return r3
            L_0x02a8:
                r6.enforceInterface(r2)
                java.lang.String r5 = r6.readString()
                int r8 = r6.readInt()
                if (r8 == 0) goto L_0x02be
                android.os.Parcelable$Creator r8 = android.os.Bundle.CREATOR
                java.lang.Object r6 = r8.createFromParcel(r6)
                r1 = r6
                android.os.Bundle r1 = (android.os.Bundle) r1
            L_0x02be:
                r4.d(r5, r1)
                r7.writeNoException()
                return r3
            L_0x02c5:
                r6.enforceInterface(r2)
                r4.f()
                r7.writeNoException()
                return r3
            L_0x02cf:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                int r8 = r6.readInt()
                java.lang.String r6 = r6.readString()
                r4.a((int) r5, (int) r8, (java.lang.String) r6)
                r7.writeNoException()
                return r3
            L_0x02e5:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                int r8 = r6.readInt()
                java.lang.String r6 = r6.readString()
                r4.b(r5, r8, r6)
                r7.writeNoException()
                return r3
            L_0x02fb:
                r6.enforceInterface(r2)
                android.support.v4.media.session.ParcelableVolumeInfo r5 = r4.t()
                r7.writeNoException()
                if (r5 == 0) goto L_0x030e
                r7.writeInt(r3)
                r5.writeToParcel(r7, r3)
                goto L_0x0311
            L_0x030e:
                r7.writeInt(r0)
            L_0x0311:
                return r3
            L_0x0312:
                r6.enforceInterface(r2)
                long r5 = r4.s()
                r7.writeNoException()
                r7.writeLong(r5)
                return r3
            L_0x0320:
                r6.enforceInterface(r2)
                android.app.PendingIntent r5 = r4.i()
                r7.writeNoException()
                if (r5 == 0) goto L_0x0333
                r7.writeInt(r3)
                r5.writeToParcel(r7, r3)
                goto L_0x0336
            L_0x0333:
                r7.writeInt(r0)
            L_0x0336:
                return r3
            L_0x0337:
                r6.enforceInterface(r2)
                java.lang.String r5 = r4.getTag()
                r7.writeNoException()
                r7.writeString(r5)
                return r3
            L_0x0345:
                r6.enforceInterface(r2)
                java.lang.String r5 = r4.u()
                r7.writeNoException()
                r7.writeString(r5)
                return r3
            L_0x0353:
                r6.enforceInterface(r2)
                boolean r5 = r4.h()
                r7.writeNoException()
                if (r5 == 0) goto L_0x0360
                r0 = 1
            L_0x0360:
                r7.writeInt(r0)
                return r3
            L_0x0364:
                r6.enforceInterface(r2)
                android.os.IBinder r5 = r6.readStrongBinder()
                a.a.b.b.a.a r5 = a.a.b.b.a.a.C0002a.a(r5)
                r4.b((a.a.b.b.a.a) r5)
                r7.writeNoException()
                return r3
            L_0x0376:
                r6.enforceInterface(r2)
                android.os.IBinder r5 = r6.readStrongBinder()
                a.a.b.b.a.a r5 = a.a.b.b.a.a.C0002a.a(r5)
                r4.a((a.a.b.b.a.a) r5)
                r7.writeNoException()
                return r3
            L_0x0388:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x039a
                android.os.Parcelable$Creator r5 = android.view.KeyEvent.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                r1 = r5
                android.view.KeyEvent r1 = (android.view.KeyEvent) r1
            L_0x039a:
                boolean r5 = r4.a((android.view.KeyEvent) r1)
                r7.writeNoException()
                if (r5 == 0) goto L_0x03a4
                r0 = 1
            L_0x03a4:
                r7.writeInt(r0)
                return r3
            L_0x03a8:
                r6.enforceInterface(r2)
                java.lang.String r5 = r6.readString()
                int r8 = r6.readInt()
                if (r8 == 0) goto L_0x03be
                android.os.Parcelable$Creator r8 = android.os.Bundle.CREATOR
                java.lang.Object r8 = r8.createFromParcel(r6)
                android.os.Bundle r8 = (android.os.Bundle) r8
                goto L_0x03bf
            L_0x03be:
                r8 = r1
            L_0x03bf:
                int r0 = r6.readInt()
                if (r0 == 0) goto L_0x03ce
                android.os.Parcelable$Creator<android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper> r0 = android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper.CREATOR
                java.lang.Object r6 = r0.createFromParcel(r6)
                r1 = r6
                android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper r1 = (android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper) r1
            L_0x03ce:
                r4.a((java.lang.String) r5, (android.os.Bundle) r8, (android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper) r1)
                r7.writeNoException()
                return r3
            L_0x03d5:
                r7.writeString(r2)
                return r3
            L_0x03d9:
                r6.enforceInterface(r2)
                int r5 = r6.readInt()
                if (r5 == 0) goto L_0x03eb
                android.os.Parcelable$Creator<android.support.v4.media.RatingCompat> r5 = android.support.v4.media.RatingCompat.CREATOR
                java.lang.Object r5 = r5.createFromParcel(r6)
                android.support.v4.media.RatingCompat r5 = (android.support.v4.media.RatingCompat) r5
                goto L_0x03ec
            L_0x03eb:
                r5 = r1
            L_0x03ec:
                int r8 = r6.readInt()
                if (r8 == 0) goto L_0x03fb
                android.os.Parcelable$Creator r8 = android.os.Bundle.CREATOR
                java.lang.Object r6 = r8.createFromParcel(r6)
                r1 = r6
                android.os.Bundle r1 = (android.os.Bundle) r1
            L_0x03fb:
                r4.a((android.support.v4.media.RatingCompat) r5, (android.os.Bundle) r1)
                r7.writeNoException()
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: a.a.b.b.a.b.a.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
        }
    }

    void a(int i2, int i3, String str);

    void a(long j2);

    void a(a aVar);

    void a(Uri uri, Bundle bundle);

    void a(MediaDescriptionCompat mediaDescriptionCompat);

    void a(MediaDescriptionCompat mediaDescriptionCompat, int i2);

    void a(RatingCompat ratingCompat);

    void a(RatingCompat ratingCompat, Bundle bundle);

    void a(String str, Bundle bundle);

    void a(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper);

    boolean a(KeyEvent keyEvent);

    PlaybackStateCompat b();

    void b(int i2);

    void b(int i2, int i3, String str);

    void b(long j2);

    void b(a aVar);

    void b(Uri uri, Bundle bundle);

    void b(MediaDescriptionCompat mediaDescriptionCompat);

    void b(String str, Bundle bundle);

    MediaMetadataCompat c();

    void c(int i2);

    void c(String str, Bundle bundle);

    void c(boolean z);

    int d();

    void d(String str, Bundle bundle);

    void d(boolean z);

    void e(int i2);

    void e(String str, Bundle bundle);

    void f();

    boolean g();

    Bundle getExtras();

    String getTag();

    boolean h();

    PendingIntent i();

    int j();

    void k();

    CharSequence m();

    void n();

    void next();

    int o();

    boolean p();

    void pause();

    void previous();

    List<MediaSessionCompat.QueueItem> q();

    void r();

    long s();

    void stop();

    ParcelableVolumeInfo t();

    String u();
}
