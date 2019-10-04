package android.support.v4.media.session;

import a.a.b.b.a.b;
import a.a.b.b.a.l;
import a.a.b.b.a.m;
import a.a.b.b.a.n;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.media.session.MediaButtonReceiver;
import b.u.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaSessionCompat {

    /* renamed from: a  reason: collision with root package name */
    public static int f125a;

    /* renamed from: b  reason: collision with root package name */
    public final b f126b;

    /* renamed from: c  reason: collision with root package name */
    public final MediaControllerCompat f127c;

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList<h> f128d;

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new i();

        /* renamed from: a  reason: collision with root package name */
        public final MediaDescriptionCompat f129a;

        /* renamed from: b  reason: collision with root package name */
        public final long f130b;

        /* renamed from: c  reason: collision with root package name */
        public Object f131c;

        public QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j2) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            } else if (j2 != -1) {
                this.f129a = mediaDescriptionCompat;
                this.f130b = j2;
                this.f131c = obj;
            } else {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
        }

        public MediaDescriptionCompat a() {
            return this.f129a;
        }

        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f129a + ", Id=" + this.f130b + " }";
        }

        public void writeToParcel(Parcel parcel, int i2) {
            this.f129a.writeToParcel(parcel, i2);
            parcel.writeLong(this.f130b);
        }

        public static QueueItem a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new QueueItem(obj, MediaDescriptionCompat.a(l.c.a(obj)), l.c.b(obj));
        }

        public QueueItem(Parcel parcel) {
            this.f129a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f130b = parcel.readLong();
        }

        public static List<QueueItem> a(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object a2 : list) {
                arrayList.add(a((Object) a2));
            }
            return arrayList;
        }
    }

    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new j();

        /* renamed from: a  reason: collision with root package name */
        public ResultReceiver f132a;

        public ResultReceiverWrapper(Parcel parcel) {
            this.f132a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            this.f132a.writeToParcel(parcel, i2);
        }
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new k();

        /* renamed from: a  reason: collision with root package name */
        public final Object f133a;

        /* renamed from: b  reason: collision with root package name */
        public a.a.b.b.a.b f134b;

        /* renamed from: c  reason: collision with root package name */
        public Bundle f135c;

        public Token(Object obj) {
            this(obj, null, null);
        }

        public static Token a(Object obj) {
            return a(obj, null);
        }

        public Bundle b() {
            return this.f135c;
        }

        public Object c() {
            return this.f133a;
        }

        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f133a;
            if (obj2 == null) {
                if (token.f133a != null) {
                    z = false;
                }
                return z;
            }
            Object obj3 = token.f133a;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public int hashCode() {
            Object obj = this.f133a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f133a, i2);
            } else {
                parcel.writeStrongBinder((IBinder) this.f133a);
            }
        }

        public Token(Object obj, a.a.b.b.a.b bVar) {
            this(obj, bVar, null);
        }

        public static Token a(Object obj, a.a.b.b.a.b bVar) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            l.c(obj);
            return new Token(obj, bVar);
        }

        public Token(Object obj, a.a.b.b.a.b bVar, Bundle bundle) {
            this.f133a = obj;
            this.f134b = bVar;
            this.f135c = bundle;
        }

        public a.a.b.b.a.b a() {
            return this.f134b;
        }

        public void a(a.a.b.b.a.b bVar) {
            this.f134b = bVar;
        }

        public void a(Bundle bundle) {
            this.f135c = bundle;
        }
    }

    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public final Object f136a;

        /* renamed from: b  reason: collision with root package name */
        public WeakReference<b> f137b;

        /* renamed from: c  reason: collision with root package name */
        public C0010a f138c = null;

        /* renamed from: d  reason: collision with root package name */
        public boolean f139d;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$a$a  reason: collision with other inner class name */
        private class C0010a extends Handler {
            public C0010a(Looper looper) {
                super(looper);
            }

            public void handleMessage(Message message) {
                if (message.what == 1) {
                    a.this.a((b.u.e) message.obj);
                }
            }
        }

        private class b implements l.a {
            public b() {
            }

            /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v1, resolved type: android.support.v4.media.session.MediaSessionCompat$QueueItem} */
            /* JADX WARNING: type inference failed for: r1v0 */
            /* JADX WARNING: type inference failed for: r1v4, types: [android.os.IBinder] */
            /* JADX WARNING: type inference failed for: r1v6 */
            /* JADX WARNING: type inference failed for: r1v7 */
            /* JADX WARNING: Multi-variable type inference failed */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void a(java.lang.String r5, android.os.Bundle r6, android.os.ResultReceiver r7) {
                /*
                    r4 = this;
                    java.lang.String r0 = "android.support.v4.media.session.command.GET_EXTRA_BINDER"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c4 }
                    r1 = 0
                    if (r0 == 0) goto L_0x003d
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c4 }
                    java.lang.ref.WeakReference<android.support.v4.media.session.MediaSessionCompat$b> r5 = r5.f137b     // Catch:{ BadParcelableException -> 0x00c4 }
                    java.lang.Object r5 = r5.get()     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.support.v4.media.session.MediaSessionCompat$e r5 = (android.support.v4.media.session.MediaSessionCompat.e) r5     // Catch:{ BadParcelableException -> 0x00c4 }
                    if (r5 == 0) goto L_0x00cb
                    android.os.Bundle r6 = new android.os.Bundle     // Catch:{ BadParcelableException -> 0x00c4 }
                    r6.<init>()     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.support.v4.media.session.MediaSessionCompat$Token r5 = r5.c()     // Catch:{ BadParcelableException -> 0x00c4 }
                    a.a.b.b.a.b r0 = r5.a()     // Catch:{ BadParcelableException -> 0x00c4 }
                    java.lang.String r2 = "android.support.v4.media.session.EXTRA_BINDER"
                    if (r0 != 0) goto L_0x0027
                    goto L_0x002b
                L_0x0027:
                    android.os.IBinder r1 = r0.asBinder()     // Catch:{ BadParcelableException -> 0x00c4 }
                L_0x002b:
                    b.i.a.j.a(r6, r2, r1)     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.os.Bundle r5 = r5.b()     // Catch:{ BadParcelableException -> 0x00c4 }
                    java.lang.String r0 = "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"
                    r6.putBundle(r0, r5)     // Catch:{ BadParcelableException -> 0x00c4 }
                    r5 = 0
                    r7.send(r5, r6)     // Catch:{ BadParcelableException -> 0x00c4 }
                    goto L_0x00cb
                L_0x003d:
                    java.lang.String r0 = "android.support.v4.media.session.command.ADD_QUEUE_ITEM"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c4 }
                    java.lang.String r2 = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"
                    if (r0 == 0) goto L_0x0054
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.os.Parcelable r6 = r6.getParcelable(r2)     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.support.v4.media.MediaDescriptionCompat r6 = (android.support.v4.media.MediaDescriptionCompat) r6     // Catch:{ BadParcelableException -> 0x00c4 }
                    r5.a((android.support.v4.media.MediaDescriptionCompat) r6)     // Catch:{ BadParcelableException -> 0x00c4 }
                    goto L_0x00cb
                L_0x0054:
                    java.lang.String r0 = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c4 }
                    java.lang.String r3 = "android.support.v4.media.session.command.ARGUMENT_INDEX"
                    if (r0 == 0) goto L_0x006e
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.os.Parcelable r7 = r6.getParcelable(r2)     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.support.v4.media.MediaDescriptionCompat r7 = (android.support.v4.media.MediaDescriptionCompat) r7     // Catch:{ BadParcelableException -> 0x00c4 }
                    int r6 = r6.getInt(r3)     // Catch:{ BadParcelableException -> 0x00c4 }
                    r5.a((android.support.v4.media.MediaDescriptionCompat) r7, (int) r6)     // Catch:{ BadParcelableException -> 0x00c4 }
                    goto L_0x00cb
                L_0x006e:
                    java.lang.String r0 = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c4 }
                    if (r0 == 0) goto L_0x0082
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.os.Parcelable r6 = r6.getParcelable(r2)     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.support.v4.media.MediaDescriptionCompat r6 = (android.support.v4.media.MediaDescriptionCompat) r6     // Catch:{ BadParcelableException -> 0x00c4 }
                    r5.b((android.support.v4.media.MediaDescriptionCompat) r6)     // Catch:{ BadParcelableException -> 0x00c4 }
                    goto L_0x00cb
                L_0x0082:
                    java.lang.String r0 = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c4 }
                    if (r0 == 0) goto L_0x00be
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c4 }
                    java.lang.ref.WeakReference<android.support.v4.media.session.MediaSessionCompat$b> r5 = r5.f137b     // Catch:{ BadParcelableException -> 0x00c4 }
                    java.lang.Object r5 = r5.get()     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.support.v4.media.session.MediaSessionCompat$e r5 = (android.support.v4.media.session.MediaSessionCompat.e) r5     // Catch:{ BadParcelableException -> 0x00c4 }
                    if (r5 == 0) goto L_0x00cb
                    java.util.List<android.support.v4.media.session.MediaSessionCompat$QueueItem> r7 = r5.f149f     // Catch:{ BadParcelableException -> 0x00c4 }
                    if (r7 == 0) goto L_0x00cb
                    r7 = -1
                    int r6 = r6.getInt(r3, r7)     // Catch:{ BadParcelableException -> 0x00c4 }
                    if (r6 < 0) goto L_0x00b2
                    java.util.List<android.support.v4.media.session.MediaSessionCompat$QueueItem> r7 = r5.f149f     // Catch:{ BadParcelableException -> 0x00c4 }
                    int r7 = r7.size()     // Catch:{ BadParcelableException -> 0x00c4 }
                    if (r6 >= r7) goto L_0x00b2
                    java.util.List<android.support.v4.media.session.MediaSessionCompat$QueueItem> r5 = r5.f149f     // Catch:{ BadParcelableException -> 0x00c4 }
                    java.lang.Object r5 = r5.get(r6)     // Catch:{ BadParcelableException -> 0x00c4 }
                    r1 = r5
                    android.support.v4.media.session.MediaSessionCompat$QueueItem r1 = (android.support.v4.media.session.MediaSessionCompat.QueueItem) r1     // Catch:{ BadParcelableException -> 0x00c4 }
                L_0x00b2:
                    if (r1 == 0) goto L_0x00cb
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c4 }
                    android.support.v4.media.MediaDescriptionCompat r6 = r1.a()     // Catch:{ BadParcelableException -> 0x00c4 }
                    r5.b((android.support.v4.media.MediaDescriptionCompat) r6)     // Catch:{ BadParcelableException -> 0x00c4 }
                    goto L_0x00cb
                L_0x00be:
                    android.support.v4.media.session.MediaSessionCompat$a r0 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c4 }
                    r0.a(r5, r6, r7)     // Catch:{ BadParcelableException -> 0x00c4 }
                    goto L_0x00cb
                L_0x00c4:
                    java.lang.String r5 = "MediaSessionCompat"
                    java.lang.String r6 = "Could not unparcel the extra data."
                    android.util.Log.e(r5, r6)
                L_0x00cb:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.a.b.a(java.lang.String, android.os.Bundle, android.os.ResultReceiver):void");
            }

            public void b(String str, Bundle bundle) {
                a.this.c(str, bundle);
            }

            public void c(String str, Bundle bundle) {
                a.this.b(str, bundle);
            }

            public void d() {
                a.this.e();
            }

            public void e() {
                a.this.b();
            }

            public void f() {
                a.this.c();
            }

            public void g() {
                a.this.g();
            }

            public void h() {
                a.this.a();
            }

            public void b() {
                a.this.h();
            }

            public void c() {
                a.this.f();
            }

            public void d(String str, Bundle bundle) {
                Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                MediaSessionCompat.a(bundle2);
                if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                    a.this.a((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
                } else if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                    a.this.d();
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                    a.this.d(bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"), bundle2);
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                    a.this.e(bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY"), bundle2);
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                    a.this.b((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
                } else if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                    a.this.a(bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"));
                } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                    a.this.a(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                    a.this.b(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                    a.this.a((RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING"), bundle2);
                } else {
                    a.this.a(str, bundle);
                }
            }

            public void b(long j2) {
                a.this.a(j2);
            }

            public boolean a(Intent intent) {
                return a.this.a(intent);
            }

            public void a(long j2) {
                a.this.b(j2);
            }

            public void a(Object obj) {
                a.this.a(RatingCompat.a(obj));
            }
        }

        private class c extends b implements m.a {
            public c() {
                super();
            }

            public void b(Uri uri, Bundle bundle) {
                a.this.a(uri, bundle);
            }
        }

        private class d extends c implements n.a {
            public d() {
                super();
            }

            public void a() {
                a.this.d();
            }

            public void e(String str, Bundle bundle) {
                a.this.e(str, bundle);
            }

            public void a(String str, Bundle bundle) {
                a.this.d(str, bundle);
            }

            public void a(Uri uri, Bundle bundle) {
                a.this.b(uri, bundle);
            }
        }

        public a() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                this.f136a = n.a((n.a) new d());
            } else if (i2 >= 23) {
                this.f136a = m.a(new c());
            } else if (i2 >= 21) {
                this.f136a = l.a((l.a) new b());
            } else {
                this.f136a = null;
            }
        }

        public void a() {
        }

        public void a(int i2) {
        }

        public void a(long j2) {
        }

        public void a(Uri uri, Bundle bundle) {
        }

        public void a(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void a(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
        }

        public void a(RatingCompat ratingCompat) {
        }

        public void a(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void a(b bVar, Handler handler) {
            this.f137b = new WeakReference<>(bVar);
            C0010a aVar = this.f138c;
            if (aVar != null) {
                aVar.removeCallbacksAndMessages(null);
            }
            this.f138c = new C0010a(handler.getLooper());
        }

        public void a(String str, Bundle bundle) {
        }

        public void a(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void a(boolean z) {
        }

        public void b() {
        }

        public void b(int i2) {
        }

        public void b(long j2) {
        }

        public void b(Uri uri, Bundle bundle) {
        }

        public void b(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void b(String str, Bundle bundle) {
        }

        public void c() {
        }

        public void c(String str, Bundle bundle) {
        }

        public void d() {
        }

        public void d(String str, Bundle bundle) {
        }

        public void e() {
        }

        public void e(String str, Bundle bundle) {
        }

        public void f() {
        }

        public void g() {
        }

        public void h() {
        }

        public boolean a(Intent intent) {
            long j2;
            if (Build.VERSION.SDK_INT >= 27) {
                return false;
            }
            b bVar = (b) this.f137b.get();
            if (!(bVar == null || this.f138c == null)) {
                KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
                if (keyEvent != null && keyEvent.getAction() == 0) {
                    b.u.e d2 = bVar.d();
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 79 || keyCode == 85) {
                        if (keyEvent.getRepeatCount() > 0) {
                            a(d2);
                        } else if (this.f139d) {
                            this.f138c.removeMessages(1);
                            this.f139d = false;
                            PlaybackStateCompat b2 = bVar.b();
                            if (b2 == null) {
                                j2 = 0;
                            } else {
                                j2 = b2.a();
                            }
                            if ((j2 & 32) != 0) {
                                f();
                            }
                        } else {
                            this.f139d = true;
                            C0010a aVar = this.f138c;
                            aVar.sendMessageDelayed(aVar.obtainMessage(1, d2), (long) ViewConfiguration.getDoubleTapTimeout());
                        }
                        return true;
                    }
                    a(d2);
                    return false;
                }
            }
            return false;
        }

        public void a(b.u.e eVar) {
            long j2;
            if (this.f139d) {
                boolean z = false;
                this.f139d = false;
                this.f138c.removeMessages(1);
                b bVar = (b) this.f137b.get();
                if (bVar != null) {
                    PlaybackStateCompat b2 = bVar.b();
                    if (b2 == null) {
                        j2 = 0;
                    } else {
                        j2 = b2.a();
                    }
                    boolean z2 = b2 != null && b2.f() == 3;
                    boolean z3 = (516 & j2) != 0;
                    if ((j2 & 514) != 0) {
                        z = true;
                    }
                    bVar.a(eVar);
                    if (z2 && z) {
                        b();
                    } else if (!z2 && z3) {
                        c();
                    }
                    bVar.a((b.u.e) null);
                }
            }
        }
    }

    interface b {
        void a();

        void a(int i2);

        void a(PendingIntent pendingIntent);

        void a(MediaMetadataCompat mediaMetadataCompat);

        void a(a aVar, Handler handler);

        void a(PlaybackStateCompat playbackStateCompat);

        void a(b.u.e eVar);

        void a(boolean z);

        PlaybackStateCompat b();

        void b(PendingIntent pendingIntent);

        Token c();

        b.u.e d();
    }

    static class c extends g {
        public static boolean H = true;

        public c(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        public void a(a aVar, Handler handler) {
            super.a(aVar, handler);
            if (aVar == null) {
                this.f164i.setPlaybackPositionUpdateListener(null);
                return;
            }
            this.f164i.setPlaybackPositionUpdateListener(new f(this));
        }

        public void b(PendingIntent pendingIntent, ComponentName componentName) {
            if (H) {
                this.f163h.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.b(pendingIntent, componentName);
            }
        }

        public void c(PlaybackStateCompat playbackStateCompat) {
            long e2 = playbackStateCompat.e();
            float c2 = playbackStateCompat.c();
            long b2 = playbackStateCompat.b();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (playbackStateCompat.f() == 3) {
                long j2 = 0;
                if (e2 > 0) {
                    if (b2 > 0) {
                        j2 = elapsedRealtime - b2;
                        if (c2 > 0.0f && c2 != 1.0f) {
                            j2 = (long) (((float) j2) * c2);
                        }
                    }
                    e2 += j2;
                }
            }
            this.f164i.setPlaybackState(b(playbackStateCompat.f()), e2, c2);
        }

        public int a(long j2) {
            int a2 = super.a(j2);
            return (j2 & 256) != 0 ? a2 | 256 : a2;
        }

        public void a(PendingIntent pendingIntent, ComponentName componentName) {
            if (H) {
                try {
                    this.f163h.registerMediaButtonEventReceiver(pendingIntent);
                } catch (NullPointerException unused) {
                    Log.w("MediaSessionCompat", "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                    H = false;
                }
            }
            if (!H) {
                super.a(pendingIntent, componentName);
            }
        }
    }

    static class d extends c {
        public d(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        public void a(a aVar, Handler handler) {
            super.a(aVar, handler);
            if (aVar == null) {
                this.f164i.setMetadataUpdateListener(null);
                return;
            }
            this.f164i.setMetadataUpdateListener(new g(this));
        }

        public int a(long j2) {
            int a2 = super.a(j2);
            return (j2 & 128) != 0 ? a2 | 512 : a2;
        }

        public RemoteControlClient.MetadataEditor a(Bundle bundle) {
            RemoteControlClient.MetadataEditor a2 = super.a(bundle);
            PlaybackStateCompat playbackStateCompat = this.u;
            if (((playbackStateCompat == null ? 0 : playbackStateCompat.a()) & 128) != 0) {
                a2.addEditableKey(268435457);
            }
            if (bundle == null) {
                return a2;
            }
            if (bundle.containsKey("android.media.metadata.YEAR")) {
                a2.putLong(8, bundle.getLong("android.media.metadata.YEAR"));
            }
            if (bundle.containsKey("android.media.metadata.RATING")) {
                a2.putObject(101, bundle.getParcelable("android.media.metadata.RATING"));
            }
            if (bundle.containsKey("android.media.metadata.USER_RATING")) {
                a2.putObject(268435457, bundle.getParcelable("android.media.metadata.USER_RATING"));
            }
            return a2;
        }
    }

    static class e implements b {

        /* renamed from: a  reason: collision with root package name */
        public final Object f144a;

        /* renamed from: b  reason: collision with root package name */
        public final Token f145b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f146c = false;

        /* renamed from: d  reason: collision with root package name */
        public final RemoteCallbackList<a.a.b.b.a.a> f147d = new RemoteCallbackList<>();

        /* renamed from: e  reason: collision with root package name */
        public PlaybackStateCompat f148e;

        /* renamed from: f  reason: collision with root package name */
        public List<QueueItem> f149f;

        /* renamed from: g  reason: collision with root package name */
        public MediaMetadataCompat f150g;

        /* renamed from: h  reason: collision with root package name */
        public int f151h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f152i;

        /* renamed from: j  reason: collision with root package name */
        public int f153j;

        /* renamed from: k  reason: collision with root package name */
        public int f154k;

        class a extends b.a {
            public a() {
            }

            public void a(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            public void b(a.a.b.b.a.a aVar) {
                e.this.f147d.unregister(aVar);
            }

            public void c(String str, Bundle bundle) {
                throw new AssertionError();
            }

            public void d(String str, Bundle bundle) {
                throw new AssertionError();
            }

            public void d(boolean z) {
            }

            public void e(String str, Bundle bundle) {
                throw new AssertionError();
            }

            public void f() {
                throw new AssertionError();
            }

            public boolean g() {
                return false;
            }

            public Bundle getExtras() {
                throw new AssertionError();
            }

            public String getTag() {
                throw new AssertionError();
            }

            public boolean h() {
                throw new AssertionError();
            }

            public PendingIntent i() {
                throw new AssertionError();
            }

            public int j() {
                return e.this.f151h;
            }

            public void k() {
                throw new AssertionError();
            }

            public CharSequence m() {
                throw new AssertionError();
            }

            public void n() {
                throw new AssertionError();
            }

            public void next() {
                throw new AssertionError();
            }

            public int o() {
                return e.this.f154k;
            }

            public boolean p() {
                return e.this.f152i;
            }

            public void pause() {
                throw new AssertionError();
            }

            public void previous() {
                throw new AssertionError();
            }

            public List<QueueItem> q() {
                return null;
            }

            public void r() {
                throw new AssertionError();
            }

            public long s() {
                throw new AssertionError();
            }

            public void stop() {
                throw new AssertionError();
            }

            public ParcelableVolumeInfo t() {
                throw new AssertionError();
            }

            public String u() {
                throw new AssertionError();
            }

            public boolean a(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            public void b(int i2, int i3, String str) {
                throw new AssertionError();
            }

            public void c(boolean z) {
                throw new AssertionError();
            }

            public int d() {
                return e.this.f153j;
            }

            public void e(int i2) {
                throw new AssertionError();
            }

            public void a(a.a.b.b.a.a aVar) {
                e eVar = e.this;
                if (!eVar.f146c) {
                    String e2 = eVar.e();
                    if (e2 == null) {
                        e2 = "android.media.session.MediaController";
                    }
                    e.this.f147d.register(aVar, new b.u.e(e2, Binder.getCallingPid(), Binder.getCallingUid()));
                }
            }

            public void b(String str, Bundle bundle) {
                throw new AssertionError();
            }

            public MediaMetadataCompat c() {
                throw new AssertionError();
            }

            public void b(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            public void c(int i2) {
                throw new AssertionError();
            }

            public void b(long j2) {
                throw new AssertionError();
            }

            public void b(int i2) {
                throw new AssertionError();
            }

            public PlaybackStateCompat b() {
                e eVar = e.this;
                return MediaSessionCompat.a(eVar.f148e, eVar.f150g);
            }

            public void a(int i2, int i3, String str) {
                throw new AssertionError();
            }

            public void b(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            public void a(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            public void a(long j2) {
                throw new AssertionError();
            }

            public void a(RatingCompat ratingCompat) {
                throw new AssertionError();
            }

            public void a(RatingCompat ratingCompat, Bundle bundle) {
                throw new AssertionError();
            }

            public void a(String str, Bundle bundle) {
                throw new AssertionError();
            }

            public void a(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
                throw new AssertionError();
            }

            public void a(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }
        }

        public e(Context context, String str, Bundle bundle) {
            this.f144a = l.a(context, str);
            this.f145b = new Token(l.a(this.f144a), new a(), bundle);
        }

        public void a(a aVar, Handler handler) {
            l.a(this.f144a, aVar == null ? null : aVar.f136a, handler);
            if (aVar != null) {
                aVar.a((b) this, handler);
            }
        }

        public void a(b.u.e eVar) {
        }

        public PlaybackStateCompat b() {
            return this.f148e;
        }

        public Token c() {
            return this.f145b;
        }

        public b.u.e d() {
            return null;
        }

        public String e() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            return n.a(this.f144a);
        }

        public void b(PendingIntent pendingIntent) {
            l.a(this.f144a, pendingIntent);
        }

        public void a(int i2) {
            l.a(this.f144a, i2);
        }

        public void a(boolean z) {
            l.a(this.f144a, z);
        }

        public void a() {
            this.f146c = true;
            l.b(this.f144a);
        }

        public void a(PlaybackStateCompat playbackStateCompat) {
            Object obj;
            this.f148e = playbackStateCompat;
            for (int beginBroadcast = this.f147d.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f147d.getBroadcastItem(beginBroadcast).a(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f147d.finishBroadcast();
            Object obj2 = this.f144a;
            if (playbackStateCompat == null) {
                obj = null;
            } else {
                obj = playbackStateCompat.d();
            }
            l.b(obj2, obj);
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
            Object obj;
            this.f150g = mediaMetadataCompat;
            Object obj2 = this.f144a;
            if (mediaMetadataCompat == null) {
                obj = null;
            } else {
                obj = mediaMetadataCompat.c();
            }
            l.a(obj2, obj);
        }

        public void a(PendingIntent pendingIntent) {
            l.b(this.f144a, pendingIntent);
        }
    }

    static class f extends e {
        public f(Context context, String str, Bundle bundle) {
            super(context, str, bundle);
        }

        public void a(b.u.e eVar) {
        }

        public final b.u.e d() {
            return new b.u.e(((MediaSession) this.f144a).getCurrentControllerInfo());
        }
    }

    static class g implements b {
        public int A;
        public int B;
        public Bundle C;
        public int D;
        public int E;
        public b.u.l F;
        public l.a G = new h(this);

        /* renamed from: a  reason: collision with root package name */
        public final Context f156a;

        /* renamed from: b  reason: collision with root package name */
        public final ComponentName f157b;

        /* renamed from: c  reason: collision with root package name */
        public final PendingIntent f158c;

        /* renamed from: d  reason: collision with root package name */
        public final b f159d;

        /* renamed from: e  reason: collision with root package name */
        public final Token f160e;

        /* renamed from: f  reason: collision with root package name */
        public final String f161f;

        /* renamed from: g  reason: collision with root package name */
        public final String f162g;

        /* renamed from: h  reason: collision with root package name */
        public final AudioManager f163h;

        /* renamed from: i  reason: collision with root package name */
        public final RemoteControlClient f164i;

        /* renamed from: j  reason: collision with root package name */
        public final Object f165j = new Object();

        /* renamed from: k  reason: collision with root package name */
        public final RemoteCallbackList<a.a.b.b.a.a> f166k = new RemoteCallbackList<>();

        /* renamed from: l  reason: collision with root package name */
        public c f167l;
        public boolean m = false;
        public boolean n = false;
        public boolean o = false;
        public boolean p = false;
        public volatile a q;
        public b.u.e r;
        public int s;
        public MediaMetadataCompat t;
        public PlaybackStateCompat u;
        public PendingIntent v;
        public List<QueueItem> w;
        public CharSequence x;
        public int y;
        public boolean z;

        private static final class a {

            /* renamed from: a  reason: collision with root package name */
            public final String f168a;

            /* renamed from: b  reason: collision with root package name */
            public final Bundle f169b;

            /* renamed from: c  reason: collision with root package name */
            public final ResultReceiver f170c;

            public a(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f168a = str;
                this.f169b = bundle;
                this.f170c = resultReceiver;
            }
        }

        class b extends b.a {
            public b() {
            }

            public void a(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                a(1, (Object) new a(str, bundle, resultReceiverWrapper.f132a));
            }

            public void b(a.a.b.b.a.a aVar) {
                g.this.f166k.unregister(aVar);
            }

            public void c(String str, Bundle bundle) {
                a(4, (Object) str, bundle);
            }

            public void d(String str, Bundle bundle) {
                a(8, (Object) str, bundle);
            }

            public void d(boolean z) {
            }

            public void e(String str, Bundle bundle) {
                a(9, (Object) str, bundle);
            }

            public void f() {
                a(7);
            }

            public boolean g() {
                return false;
            }

            public Bundle getExtras() {
                Bundle bundle;
                synchronized (g.this.f165j) {
                    bundle = g.this.C;
                }
                return bundle;
            }

            public String getTag() {
                return g.this.f162g;
            }

            public boolean h() {
                return (g.this.s & 2) != 0;
            }

            public PendingIntent i() {
                PendingIntent pendingIntent;
                synchronized (g.this.f165j) {
                    pendingIntent = g.this.v;
                }
                return pendingIntent;
            }

            public int j() {
                return g.this.y;
            }

            public void k() {
                a(3);
            }

            public CharSequence m() {
                return g.this.x;
            }

            public void n() {
                a(16);
            }

            public void next() {
                a(14);
            }

            public int o() {
                return g.this.B;
            }

            public boolean p() {
                return g.this.z;
            }

            public void pause() {
                a(12);
            }

            public void previous() {
                a(15);
            }

            public List<QueueItem> q() {
                List<QueueItem> list;
                synchronized (g.this.f165j) {
                    list = g.this.w;
                }
                return list;
            }

            public void r() {
                a(17);
            }

            public long s() {
                long j2;
                synchronized (g.this.f165j) {
                    j2 = (long) g.this.s;
                }
                return j2;
            }

            public void stop() {
                a(13);
            }

            public ParcelableVolumeInfo t() {
                int i2;
                int i3;
                int i4;
                int i5;
                int i6;
                synchronized (g.this.f165j) {
                    i2 = g.this.D;
                    i3 = g.this.E;
                    b.u.l lVar = g.this.F;
                    if (i2 == 2) {
                        int c2 = lVar.c();
                        int b2 = lVar.b();
                        i4 = lVar.a();
                        i5 = b2;
                        i6 = c2;
                    } else {
                        i5 = g.this.f163h.getStreamMaxVolume(i3);
                        i4 = g.this.f163h.getStreamVolume(i3);
                        i6 = 2;
                    }
                }
                ParcelableVolumeInfo parcelableVolumeInfo = new ParcelableVolumeInfo(i2, i3, i6, i5, i4);
                return parcelableVolumeInfo;
            }

            public String u() {
                return g.this.f161f;
            }

            public boolean a(KeyEvent keyEvent) {
                boolean z = true;
                if ((g.this.s & 1) == 0) {
                    z = false;
                }
                if (z) {
                    a(21, (Object) keyEvent);
                }
                return z;
            }

            public void b(int i2, int i3, String str) {
                g.this.a(i2, i3);
            }

            public void c(boolean z) {
                a(29, (Object) Boolean.valueOf(z));
            }

            public int d() {
                return g.this.A;
            }

            public void e(int i2) {
                a(30, i2);
            }

            public void b(String str, Bundle bundle) {
                a(5, (Object) str, bundle);
            }

            public MediaMetadataCompat c() {
                return g.this.t;
            }

            public void a(a.a.b.b.a.a aVar) {
                if (g.this.m) {
                    try {
                        aVar.a();
                    } catch (Exception unused) {
                    }
                    return;
                }
                g.this.f166k.register(aVar, new b.u.e("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
            }

            public void b(Uri uri, Bundle bundle) {
                a(10, (Object) uri, bundle);
            }

            public void c(int i2) {
                a(28, i2);
            }

            public void b(long j2) {
                a(11, (Object) Long.valueOf(j2));
            }

            public void b(int i2) {
                a(23, i2);
            }

            public PlaybackStateCompat b() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (g.this.f165j) {
                    playbackStateCompat = g.this.u;
                    mediaMetadataCompat = g.this.t;
                }
                return MediaSessionCompat.a(playbackStateCompat, mediaMetadataCompat);
            }

            public void a(int i2, int i3, String str) {
                g.this.b(i2, i3);
            }

            public void a(Uri uri, Bundle bundle) {
                a(6, (Object) uri, bundle);
            }

            public void a(long j2) {
                a(18, (Object) Long.valueOf(j2));
            }

            public void a(RatingCompat ratingCompat) {
                a(19, (Object) ratingCompat);
            }

            public void a(RatingCompat ratingCompat, Bundle bundle) {
                a(31, (Object) ratingCompat, bundle);
            }

            public void b(MediaDescriptionCompat mediaDescriptionCompat) {
                a(25, (Object) mediaDescriptionCompat);
            }

            public void a(String str, Bundle bundle) {
                a(20, (Object) str, bundle);
            }

            public void a(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
                a(26, (Object) mediaDescriptionCompat, i2);
            }

            public void a(MediaDescriptionCompat mediaDescriptionCompat) {
                a(27, (Object) mediaDescriptionCompat);
            }

            public void a(int i2) {
                g.this.a(i2, 0, 0, null, null);
            }

            public void a(int i2, int i3) {
                g.this.a(i2, i3, 0, null, null);
            }

            public void a(int i2, Object obj) {
                g.this.a(i2, 0, 0, obj, null);
            }

            public void a(int i2, Object obj, int i3) {
                g.this.a(i2, i3, 0, obj, null);
            }

            public void a(int i2, Object obj, Bundle bundle) {
                g.this.a(i2, 0, 0, obj, bundle);
            }
        }

        class c extends Handler {
            public c(Looper looper) {
                super(looper);
            }

            public final void a(KeyEvent keyEvent, a aVar) {
                if (keyEvent != null && keyEvent.getAction() == 0) {
                    PlaybackStateCompat playbackStateCompat = g.this.u;
                    long a2 = playbackStateCompat == null ? 0 : playbackStateCompat.a();
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode != 79) {
                        if (keyCode != 126) {
                            if (keyCode != 127) {
                                switch (keyCode) {
                                    case 85:
                                        break;
                                    case 86:
                                        if ((a2 & 1) != 0) {
                                            aVar.h();
                                            return;
                                        }
                                        return;
                                    case 87:
                                        if ((a2 & 32) != 0) {
                                            aVar.f();
                                            return;
                                        }
                                        return;
                                    case 88:
                                        if ((a2 & 16) != 0) {
                                            aVar.g();
                                            return;
                                        }
                                        return;
                                    case 89:
                                        if ((a2 & 8) != 0) {
                                            aVar.e();
                                            return;
                                        }
                                        return;
                                    case 90:
                                        if ((a2 & 64) != 0) {
                                            aVar.a();
                                            return;
                                        }
                                        return;
                                    default:
                                        return;
                                }
                            } else if ((a2 & 2) != 0) {
                                aVar.b();
                                return;
                            } else {
                                return;
                            }
                        } else if ((a2 & 4) != 0) {
                            aVar.c();
                            return;
                        } else {
                            return;
                        }
                    }
                    Log.w("MediaSessionCompat", "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already");
                }
            }

            public void handleMessage(Message message) {
                a aVar = g.this.q;
                if (aVar != null) {
                    Bundle data = message.getData();
                    MediaSessionCompat.a(data);
                    g.this.a(new b.u.e(data.getString("data_calling_pkg"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid")));
                    Bundle bundle = data.getBundle("data_extras");
                    MediaSessionCompat.a(bundle);
                    try {
                        switch (message.what) {
                            case 1:
                                a aVar2 = (a) message.obj;
                                aVar.a(aVar2.f168a, aVar2.f169b, aVar2.f170c);
                                break;
                            case 2:
                                g.this.a(message.arg1, 0);
                                break;
                            case 3:
                                aVar.d();
                                break;
                            case 4:
                                aVar.d((String) message.obj, bundle);
                                break;
                            case 5:
                                aVar.e((String) message.obj, bundle);
                                break;
                            case 6:
                                aVar.b((Uri) message.obj, bundle);
                                break;
                            case 7:
                                aVar.c();
                                break;
                            case 8:
                                aVar.b((String) message.obj, bundle);
                                break;
                            case 9:
                                aVar.c((String) message.obj, bundle);
                                break;
                            case 10:
                                aVar.a((Uri) message.obj, bundle);
                                break;
                            case 11:
                                aVar.b(((Long) message.obj).longValue());
                                break;
                            case 12:
                                aVar.b();
                                break;
                            case 13:
                                aVar.h();
                                break;
                            case 14:
                                aVar.f();
                                break;
                            case 15:
                                aVar.g();
                                break;
                            case 16:
                                aVar.a();
                                break;
                            case 17:
                                aVar.e();
                                break;
                            case 18:
                                aVar.a(((Long) message.obj).longValue());
                                break;
                            case 19:
                                aVar.a((RatingCompat) message.obj);
                                break;
                            case 20:
                                aVar.a((String) message.obj, bundle);
                                break;
                            case 21:
                                KeyEvent keyEvent = (KeyEvent) message.obj;
                                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                                intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                                if (!aVar.a(intent)) {
                                    a(keyEvent, aVar);
                                    break;
                                }
                                break;
                            case 22:
                                g.this.b(message.arg1, 0);
                                break;
                            case 23:
                                aVar.a(message.arg1);
                                break;
                            case 25:
                                aVar.a((MediaDescriptionCompat) message.obj);
                                break;
                            case 26:
                                aVar.a((MediaDescriptionCompat) message.obj, message.arg1);
                                break;
                            case 27:
                                aVar.b((MediaDescriptionCompat) message.obj);
                                break;
                            case 28:
                                if (g.this.w != null) {
                                    QueueItem queueItem = (message.arg1 < 0 || message.arg1 >= g.this.w.size()) ? null : g.this.w.get(message.arg1);
                                    if (queueItem != null) {
                                        aVar.b(queueItem.a());
                                        break;
                                    }
                                }
                                break;
                            case 29:
                                aVar.a(((Boolean) message.obj).booleanValue());
                                break;
                            case 30:
                                aVar.b(message.arg1);
                                break;
                            case 31:
                                aVar.a((RatingCompat) message.obj, bundle);
                                break;
                        }
                    } finally {
                        g.this.a((b.u.e) null);
                    }
                }
            }
        }

        public g(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            if (componentName != null) {
                this.f156a = context;
                this.f161f = context.getPackageName();
                this.f163h = (AudioManager) context.getSystemService("audio");
                this.f162g = str;
                this.f157b = componentName;
                this.f158c = pendingIntent;
                this.f159d = new b();
                this.f160e = new Token(this.f159d);
                this.y = 0;
                this.D = 1;
                this.E = 3;
                this.f164i = new RemoteControlClient(pendingIntent);
                return;
            }
            throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
        }

        public int a(long j2) {
            int i2 = (1 & j2) != 0 ? 32 : 0;
            if ((2 & j2) != 0) {
                i2 |= 16;
            }
            if ((4 & j2) != 0) {
                i2 |= 4;
            }
            if ((8 & j2) != 0) {
                i2 |= 2;
            }
            if ((16 & j2) != 0) {
                i2 |= 1;
            }
            if ((32 & j2) != 0) {
                i2 |= 128;
            }
            if ((64 & j2) != 0) {
                i2 |= 64;
            }
            return (j2 & 512) != 0 ? i2 | 8 : i2;
        }

        public void a(a aVar, Handler handler) {
            this.q = aVar;
            if (aVar != null) {
                if (handler == null) {
                    handler = new Handler();
                }
                synchronized (this.f165j) {
                    if (this.f167l != null) {
                        this.f167l.removeCallbacksAndMessages(null);
                    }
                    this.f167l = new c(handler.getLooper());
                    this.q.a((b) this, handler);
                }
            }
        }

        public int b(int i2) {
            switch (i2) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                case 8:
                    return 8;
                case 7:
                    return 9;
                case 9:
                    return 7;
                case 10:
                case 11:
                    return 6;
                default:
                    return -1;
            }
        }

        public PlaybackStateCompat b() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.f165j) {
                playbackStateCompat = this.u;
            }
            return playbackStateCompat;
        }

        public void b(PendingIntent pendingIntent) {
        }

        public Token c() {
            return this.f160e;
        }

        public b.u.e d() {
            b.u.e eVar;
            synchronized (this.f165j) {
                eVar = this.r;
            }
            return eVar;
        }

        public final void e() {
            for (int beginBroadcast = this.f166k.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f166k.getBroadcastItem(beginBroadcast).a();
                } catch (RemoteException unused) {
                }
            }
            this.f166k.finishBroadcast();
            this.f166k.kill();
        }

        public boolean f() {
            if (this.n) {
                if (!this.o && (this.s & 1) != 0) {
                    a(this.f158c, this.f157b);
                    this.o = true;
                } else if (this.o && (this.s & 1) == 0) {
                    b(this.f158c, this.f157b);
                    this.o = false;
                }
                if (!this.p && (this.s & 2) != 0) {
                    this.f163h.registerRemoteControlClient(this.f164i);
                    this.p = true;
                    return true;
                } else if (this.p && (this.s & 2) == 0) {
                    this.f164i.setPlaybackState(0);
                    this.f163h.unregisterRemoteControlClient(this.f164i);
                    this.p = false;
                }
            } else {
                if (this.o) {
                    b(this.f158c, this.f157b);
                    this.o = false;
                }
                if (this.p) {
                    this.f164i.setPlaybackState(0);
                    this.f163h.unregisterRemoteControlClient(this.f164i);
                    this.p = false;
                }
            }
            return false;
        }

        public void c(PlaybackStateCompat playbackStateCompat) {
            this.f164i.setPlaybackState(b(playbackStateCompat.f()));
        }

        public void b(PendingIntent pendingIntent, ComponentName componentName) {
            this.f163h.unregisterMediaButtonEventReceiver(componentName);
        }

        public void b(int i2, int i3) {
            if (this.D == 2) {
                b.u.l lVar = this.F;
                if (lVar != null) {
                    lVar.b(i2);
                    return;
                }
                return;
            }
            this.f163h.setStreamVolume(this.E, i2, i3);
        }

        public void a(int i2, int i3, int i4, Object obj, Bundle bundle) {
            synchronized (this.f165j) {
                if (this.f167l != null) {
                    Message obtainMessage = this.f167l.obtainMessage(i2, i3, i4, obj);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("data_calling_pkg", "android.media.session.MediaController");
                    bundle2.putInt("data_calling_pid", Binder.getCallingPid());
                    bundle2.putInt("data_calling_uid", Binder.getCallingUid());
                    if (bundle != null) {
                        bundle2.putBundle("data_extras", bundle);
                    }
                    obtainMessage.setData(bundle2);
                    obtainMessage.sendToTarget();
                }
            }
        }

        public final void b(PlaybackStateCompat playbackStateCompat) {
            for (int beginBroadcast = this.f166k.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f166k.getBroadcastItem(beginBroadcast).a(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f166k.finishBroadcast();
        }

        public final void b(MediaMetadataCompat mediaMetadataCompat) {
            for (int beginBroadcast = this.f166k.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f166k.getBroadcastItem(beginBroadcast).a(mediaMetadataCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f166k.finishBroadcast();
        }

        public void a(int i2) {
            synchronized (this.f165j) {
                this.s = i2;
            }
            f();
        }

        public void a(boolean z2) {
            if (z2 != this.n) {
                this.n = z2;
                if (f()) {
                    a(this.t);
                    a(this.u);
                }
            }
        }

        public void a() {
            this.n = false;
            this.m = true;
            f();
            e();
        }

        public void a(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.f165j) {
                this.u = playbackStateCompat;
            }
            b(playbackStateCompat);
            if (this.n) {
                if (playbackStateCompat == null) {
                    this.f164i.setPlaybackState(0);
                    this.f164i.setTransportControlFlags(0);
                } else {
                    c(playbackStateCompat);
                    this.f164i.setTransportControlFlags(a(playbackStateCompat.a()));
                }
            }
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
            Bundle bundle;
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat = new MediaMetadataCompat.a(mediaMetadataCompat, MediaSessionCompat.f125a).a();
            }
            synchronized (this.f165j) {
                this.t = mediaMetadataCompat;
            }
            b(mediaMetadataCompat);
            if (this.n) {
                if (mediaMetadataCompat == null) {
                    bundle = null;
                } else {
                    bundle = mediaMetadataCompat.a();
                }
                a(bundle).apply();
            }
        }

        public RemoteControlClient.MetadataEditor a(Bundle bundle) {
            RemoteControlClient.MetadataEditor editMetadata = this.f164i.editMetadata(true);
            if (bundle == null) {
                return editMetadata;
            }
            if (bundle.containsKey("android.media.metadata.ART")) {
                Bitmap bitmap = (Bitmap) bundle.getParcelable("android.media.metadata.ART");
                if (bitmap != null) {
                    bitmap = bitmap.copy(bitmap.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap);
            } else if (bundle.containsKey("android.media.metadata.ALBUM_ART")) {
                Bitmap bitmap2 = (Bitmap) bundle.getParcelable("android.media.metadata.ALBUM_ART");
                if (bitmap2 != null) {
                    bitmap2 = bitmap2.copy(bitmap2.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap2);
            }
            if (bundle.containsKey("android.media.metadata.ALBUM")) {
                editMetadata.putString(1, bundle.getString("android.media.metadata.ALBUM"));
            }
            if (bundle.containsKey("android.media.metadata.ALBUM_ARTIST")) {
                editMetadata.putString(13, bundle.getString("android.media.metadata.ALBUM_ARTIST"));
            }
            if (bundle.containsKey("android.media.metadata.ARTIST")) {
                editMetadata.putString(2, bundle.getString("android.media.metadata.ARTIST"));
            }
            if (bundle.containsKey("android.media.metadata.AUTHOR")) {
                editMetadata.putString(3, bundle.getString("android.media.metadata.AUTHOR"));
            }
            if (bundle.containsKey("android.media.metadata.COMPILATION")) {
                editMetadata.putString(15, bundle.getString("android.media.metadata.COMPILATION"));
            }
            if (bundle.containsKey("android.media.metadata.COMPOSER")) {
                editMetadata.putString(4, bundle.getString("android.media.metadata.COMPOSER"));
            }
            if (bundle.containsKey("android.media.metadata.DATE")) {
                editMetadata.putString(5, bundle.getString("android.media.metadata.DATE"));
            }
            if (bundle.containsKey("android.media.metadata.DISC_NUMBER")) {
                editMetadata.putLong(14, bundle.getLong("android.media.metadata.DISC_NUMBER"));
            }
            if (bundle.containsKey("android.media.metadata.DURATION")) {
                editMetadata.putLong(9, bundle.getLong("android.media.metadata.DURATION"));
            }
            if (bundle.containsKey("android.media.metadata.GENRE")) {
                editMetadata.putString(6, bundle.getString("android.media.metadata.GENRE"));
            }
            if (bundle.containsKey("android.media.metadata.TITLE")) {
                editMetadata.putString(7, bundle.getString("android.media.metadata.TITLE"));
            }
            if (bundle.containsKey("android.media.metadata.TRACK_NUMBER")) {
                editMetadata.putLong(0, bundle.getLong("android.media.metadata.TRACK_NUMBER"));
            }
            if (bundle.containsKey("android.media.metadata.WRITER")) {
                editMetadata.putString(11, bundle.getString("android.media.metadata.WRITER"));
            }
            return editMetadata;
        }

        public void a(PendingIntent pendingIntent) {
            synchronized (this.f165j) {
                this.v = pendingIntent;
            }
        }

        public void a(b.u.e eVar) {
            synchronized (this.f165j) {
                this.r = eVar;
            }
        }

        public void a(PendingIntent pendingIntent, ComponentName componentName) {
            this.f163h.registerMediaButtonEventReceiver(componentName);
        }

        public void a(int i2, int i3) {
            if (this.D == 2) {
                b.u.l lVar = this.F;
                if (lVar != null) {
                    lVar.a(i2);
                    return;
                }
                return;
            }
            this.f163h.adjustStreamVolume(this.E, i2, i3);
        }
    }

    public interface h {
        void a();
    }

    public MediaSessionCompat(Context context, String str) {
        this(context, str, null, null);
    }

    public void a(a aVar) {
        a(aVar, (Handler) null);
    }

    public Token b() {
        return this.f126b.c();
    }

    public void c() {
        this.f126b.a();
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    public void a(a aVar, Handler handler) {
        if (aVar == null) {
            this.f126b.a(null, null);
            return;
        }
        b bVar = this.f126b;
        if (handler == null) {
            handler = new Handler();
        }
        bVar.a(aVar, handler);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        this.f128d = new ArrayList<>();
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        } else if (!TextUtils.isEmpty(str)) {
            if (componentName == null) {
                componentName = MediaButtonReceiver.a(context);
                if (componentName == null) {
                    Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
                }
            }
            if (componentName != null && pendingIntent == null) {
                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                intent.setComponent(componentName);
                pendingIntent = PendingIntent.getBroadcast(context, 0, intent, 0);
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                this.f126b = new f(context, str, bundle);
                a((a) new d(this));
                this.f126b.b(pendingIntent);
            } else if (i2 >= 21) {
                this.f126b = new e(context, str, bundle);
                a((a) new e(this));
                this.f126b.b(pendingIntent);
            } else if (i2 >= 19) {
                this.f126b = new d(context, str, componentName, pendingIntent);
            } else if (i2 >= 18) {
                this.f126b = new c(context, str, componentName, pendingIntent);
            } else {
                this.f126b = new g(context, str, componentName, pendingIntent);
            }
            this.f127c = new MediaControllerCompat(context, this);
            if (f125a == 0) {
                f125a = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
            }
        } else {
            throw new IllegalArgumentException("tag must not be null or empty");
        }
    }

    public void a(PendingIntent pendingIntent) {
        this.f126b.a(pendingIntent);
    }

    public void a(int i2) {
        this.f126b.a(i2);
    }

    public void a(boolean z) {
        this.f126b.a(z);
        Iterator<h> it = this.f128d.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public MediaControllerCompat a() {
        return this.f127c;
    }

    public void a(PlaybackStateCompat playbackStateCompat) {
        this.f126b.a(playbackStateCompat);
    }

    public void a(MediaMetadataCompat mediaMetadataCompat) {
        this.f126b.a(mediaMetadataCompat);
    }

    public static void a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    public static PlaybackStateCompat a(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        if (playbackStateCompat == null) {
            return playbackStateCompat;
        }
        long j2 = -1;
        if (playbackStateCompat.e() == -1) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.f() != 3 && playbackStateCompat.f() != 4 && playbackStateCompat.f() != 5) {
            return playbackStateCompat;
        }
        long b2 = playbackStateCompat.b();
        if (b2 <= 0) {
            return playbackStateCompat;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long c2 = ((long) (playbackStateCompat.c() * ((float) (elapsedRealtime - b2)))) + playbackStateCompat.e();
        if (mediaMetadataCompat != null && mediaMetadataCompat.a("android.media.metadata.DURATION")) {
            j2 = mediaMetadataCompat.c("android.media.metadata.DURATION");
        }
        long j3 = (j2 < 0 || c2 <= j2) ? c2 < 0 ? 0 : c2 : j2;
        PlaybackStateCompat.a aVar = new PlaybackStateCompat.a(playbackStateCompat);
        aVar.a(playbackStateCompat.f(), j3, playbackStateCompat.c(), elapsedRealtime);
        return aVar.a();
    }
}
