package android.support.v4.media;

import a.a.b.b.a.b;
import a.a.b.b.f;
import a.a.b.b.g;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import b.f.C0243b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class MediaBrowserCompat {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f22a = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: b  reason: collision with root package name */
    public final e f23b;

    private static class CustomActionResultReceiver extends ResultReceiver {

        /* renamed from: d  reason: collision with root package name */
        public final String f24d;

        /* renamed from: e  reason: collision with root package name */
        public final Bundle f25e;

        /* renamed from: f  reason: collision with root package name */
        public final c f26f;

        public void a(int i2, Bundle bundle) {
            if (this.f26f != null) {
                MediaSessionCompat.a(bundle);
                if (i2 == -1) {
                    this.f26f.a(this.f24d, this.f25e, bundle);
                } else if (i2 == 0) {
                    this.f26f.c(this.f24d, this.f25e, bundle);
                } else if (i2 != 1) {
                    Log.w("MediaBrowserCompat", "Unknown result code: " + i2 + " (extras=" + this.f25e + ", resultData=" + bundle + ")");
                } else {
                    this.f26f.b(this.f24d, this.f25e, bundle);
                }
            }
        }
    }

    private static class ItemReceiver extends ResultReceiver {

        /* renamed from: d  reason: collision with root package name */
        public final String f27d;

        /* renamed from: e  reason: collision with root package name */
        public final d f28e;

        public void a(int i2, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i2 != 0 || bundle == null || !bundle.containsKey("media_item")) {
                this.f28e.a(this.f27d);
                return;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.f28e.a((MediaItem) parcelable);
            } else {
                this.f28e.a(this.f27d);
            }
        }
    }

    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new e();

        /* renamed from: a  reason: collision with root package name */
        public final int f29a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaDescriptionCompat f30b;

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            } else if (!TextUtils.isEmpty(mediaDescriptionCompat.c())) {
                this.f29a = i2;
                this.f30b = mediaDescriptionCompat;
            } else {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
        }

        public static MediaItem a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new MediaItem(MediaDescriptionCompat.a(f.c.a(obj)), f.c.b(obj));
        }

        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaItem{" + "mFlags=" + this.f29a + ", mDescription=" + this.f30b + '}';
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f29a);
            this.f30b.writeToParcel(parcel, i2);
        }

        public static List<MediaItem> a(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (Object a2 : list) {
                arrayList.add(a((Object) a2));
            }
            return arrayList;
        }

        public MediaItem(Parcel parcel) {
            this.f29a = parcel.readInt();
            this.f30b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }

    private static class SearchResultReceiver extends ResultReceiver {

        /* renamed from: d  reason: collision with root package name */
        public final String f31d;

        /* renamed from: e  reason: collision with root package name */
        public final Bundle f32e;

        /* renamed from: f  reason: collision with root package name */
        public final k f33f;

        public void a(int i2, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i2 != 0 || bundle == null || !bundle.containsKey("search_results")) {
                this.f33f.a(this.f31d, this.f32e);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            ArrayList arrayList = null;
            if (parcelableArray != null) {
                arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
            }
            this.f33f.a(this.f31d, this.f32e, arrayList);
        }
    }

    private static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        public final WeakReference<j> f34a;

        /* renamed from: b  reason: collision with root package name */
        public WeakReference<Messenger> f35b;

        public a(j jVar) {
            this.f34a = new WeakReference<>(jVar);
        }

        public void a(Messenger messenger) {
            this.f35b = new WeakReference<>(messenger);
        }

        public void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f35b;
            if (weakReference != null && weakReference.get() != null && this.f34a.get() != null) {
                Bundle data = message.getData();
                MediaSessionCompat.a(data);
                j jVar = (j) this.f34a.get();
                Messenger messenger = (Messenger) this.f35b.get();
                try {
                    int i2 = message.what;
                    if (i2 == 1) {
                        Bundle bundle = data.getBundle("data_root_hints");
                        MediaSessionCompat.a(bundle);
                        jVar.a(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                    } else if (i2 == 2) {
                        jVar.a(messenger);
                    } else if (i2 != 3) {
                        Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: " + 1 + "\n  Service version: " + message.arg1);
                    } else {
                        Bundle bundle2 = data.getBundle("data_options");
                        MediaSessionCompat.a(bundle2);
                        Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                        MediaSessionCompat.a(bundle3);
                        jVar.a(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                    }
                } catch (BadParcelableException unused) {
                    Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                    if (message.what == 1) {
                        jVar.a(messenger);
                    }
                }
            }
        }
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Object f36a;

        /* renamed from: b  reason: collision with root package name */
        public a f37b;

        interface a {
            void b();

            void d();

            void onConnected();
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b  reason: collision with other inner class name */
        private class C0008b implements f.a {
            public C0008b() {
            }

            public void b() {
                a aVar = b.this.f37b;
                if (aVar != null) {
                    aVar.b();
                }
                b.this.c();
            }

            public void d() {
                a aVar = b.this.f37b;
                if (aVar != null) {
                    aVar.d();
                }
                b.this.b();
            }

            public void onConnected() {
                a aVar = b.this.f37b;
                if (aVar != null) {
                    aVar.onConnected();
                }
                b.this.a();
            }
        }

        public b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f36a = a.a.b.b.f.a((f.a) new C0008b());
            } else {
                this.f36a = null;
            }
        }

        public void a() {
            throw null;
        }

        public void a(a aVar) {
            this.f37b = aVar;
        }

        public void b() {
            throw null;
        }

        public void c() {
            throw null;
        }
    }

    public static abstract class c {
        public abstract void a(String str, Bundle bundle, Bundle bundle2);

        public abstract void b(String str, Bundle bundle, Bundle bundle2);

        public abstract void c(String str, Bundle bundle, Bundle bundle2);
    }

    public static abstract class d {
        public abstract void a(MediaItem mediaItem);

        public abstract void a(String str);
    }

    interface e {
        void a();

        MediaSessionCompat.Token c();

        void connect();
    }

    static class f implements e, j, b.a {

        /* renamed from: a  reason: collision with root package name */
        public final Context f39a;

        /* renamed from: b  reason: collision with root package name */
        public final Object f40b;

        /* renamed from: c  reason: collision with root package name */
        public final Bundle f41c;

        /* renamed from: d  reason: collision with root package name */
        public final a f42d = new a(this);

        /* renamed from: e  reason: collision with root package name */
        public final C0243b<String, m> f43e = new C0243b<>();

        /* renamed from: f  reason: collision with root package name */
        public int f44f;

        /* renamed from: g  reason: collision with root package name */
        public l f45g;

        /* renamed from: h  reason: collision with root package name */
        public Messenger f46h;

        /* renamed from: i  reason: collision with root package name */
        public MediaSessionCompat.Token f47i;

        /* renamed from: j  reason: collision with root package name */
        public Bundle f48j;

        public f(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            this.f39a = context;
            this.f41c = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f41c.putInt("extra_client_version", 1);
            bVar.a(this);
            this.f40b = a.a.b.b.f.a(context, componentName, bVar.f36a, this.f41c);
        }

        public void a() {
            l lVar = this.f45g;
            if (lVar != null) {
                Messenger messenger = this.f46h;
                if (messenger != null) {
                    try {
                        lVar.b(messenger);
                    } catch (RemoteException unused) {
                        Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
                    }
                }
            }
            a.a.b.b.f.b(this.f40b);
        }

        public void a(Messenger messenger) {
        }

        public void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        public void b() {
            this.f45g = null;
            this.f46h = null;
            this.f47i = null;
            this.f42d.a(null);
        }

        public MediaSessionCompat.Token c() {
            if (this.f47i == null) {
                this.f47i = MediaSessionCompat.Token.a(a.a.b.b.f.d(this.f40b));
            }
            return this.f47i;
        }

        public void connect() {
            a.a.b.b.f.a(this.f40b);
        }

        public void d() {
        }

        public void onConnected() {
            Bundle c2 = a.a.b.b.f.c(this.f40b);
            if (c2 != null) {
                this.f44f = c2.getInt("extra_service_version", 0);
                IBinder a2 = b.i.a.j.a(c2, "extra_messenger");
                if (a2 != null) {
                    this.f45g = new l(a2, this.f41c);
                    this.f46h = new Messenger(this.f42d);
                    this.f42d.a(this.f46h);
                    try {
                        this.f45g.b(this.f39a, this.f46h);
                    } catch (RemoteException unused) {
                        Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                    }
                }
                a.a.b.b.a.b a3 = b.a.a(b.i.a.j.a(c2, "extra_session_binder"));
                if (a3 != null) {
                    this.f47i = MediaSessionCompat.Token.a(a.a.b.b.f.d(this.f40b), a3);
                }
            }
        }

        public void a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (this.f46h == messenger) {
                m mVar = this.f43e.get(str);
                if (mVar == null) {
                    if (MediaBrowserCompat.f22a) {
                        Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                    }
                    return;
                }
                n a2 = mVar.a(bundle);
                if (a2 != null) {
                    if (bundle == null) {
                        if (list == null) {
                            a2.a(str);
                        } else {
                            this.f48j = bundle2;
                            a2.a(str, (List<MediaItem>) list);
                            this.f48j = null;
                        }
                    } else if (list == null) {
                        a2.a(str, bundle);
                    } else {
                        this.f48j = bundle2;
                        a2.a(str, list, bundle);
                        this.f48j = null;
                    }
                }
            }
        }
    }

    static class g extends f {
        public g(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    static class h extends g {
        public h(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    static class i implements e, j {

        /* renamed from: a  reason: collision with root package name */
        public final Context f49a;

        /* renamed from: b  reason: collision with root package name */
        public final ComponentName f50b;

        /* renamed from: c  reason: collision with root package name */
        public final b f51c;

        /* renamed from: d  reason: collision with root package name */
        public final Bundle f52d;

        /* renamed from: e  reason: collision with root package name */
        public final a f53e = new a(this);

        /* renamed from: f  reason: collision with root package name */
        public final C0243b<String, m> f54f = new C0243b<>();

        /* renamed from: g  reason: collision with root package name */
        public int f55g = 1;

        /* renamed from: h  reason: collision with root package name */
        public a f56h;

        /* renamed from: i  reason: collision with root package name */
        public l f57i;

        /* renamed from: j  reason: collision with root package name */
        public Messenger f58j;

        /* renamed from: k  reason: collision with root package name */
        public String f59k;

        /* renamed from: l  reason: collision with root package name */
        public MediaSessionCompat.Token f60l;
        public Bundle m;
        public Bundle n;

        private class a implements ServiceConnection {
            public a() {
            }

            public final void a(Runnable runnable) {
                if (Thread.currentThread() == i.this.f53e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    i.this.f53e.post(runnable);
                }
            }

            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                a((Runnable) new c(this, componentName, iBinder));
            }

            public void onServiceDisconnected(ComponentName componentName) {
                a((Runnable) new d(this, componentName));
            }

            public boolean a(String str) {
                i iVar = i.this;
                if (iVar.f56h == this) {
                    int i2 = iVar.f55g;
                    if (!(i2 == 0 || i2 == 1)) {
                        return true;
                    }
                }
                int i3 = i.this.f55g;
                if (!(i3 == 0 || i3 == 1)) {
                    Log.i("MediaBrowserCompat", str + " for " + i.this.f50b + " with mServiceConnection=" + i.this.f56h + " this=" + this);
                }
                return false;
            }
        }

        public i(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            Bundle bundle2;
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            } else if (componentName == null) {
                throw new IllegalArgumentException("service component must not be null");
            } else if (bVar != null) {
                this.f49a = context;
                this.f50b = componentName;
                this.f51c = bVar;
                if (bundle == null) {
                    bundle2 = null;
                } else {
                    bundle2 = new Bundle(bundle);
                }
                this.f52d = bundle2;
            } else {
                throw new IllegalArgumentException("connection callback must not be null");
            }
        }

        public void a() {
            this.f55g = 0;
            this.f53e.post(new b(this));
        }

        public void b() {
            Log.d("MediaBrowserCompat", "MediaBrowserCompat...");
            Log.d("MediaBrowserCompat", "  mServiceComponent=" + this.f50b);
            Log.d("MediaBrowserCompat", "  mCallback=" + this.f51c);
            Log.d("MediaBrowserCompat", "  mRootHints=" + this.f52d);
            Log.d("MediaBrowserCompat", "  mState=" + a(this.f55g));
            Log.d("MediaBrowserCompat", "  mServiceConnection=" + this.f56h);
            Log.d("MediaBrowserCompat", "  mServiceBinderWrapper=" + this.f57i);
            Log.d("MediaBrowserCompat", "  mCallbacksMessenger=" + this.f58j);
            Log.d("MediaBrowserCompat", "  mRootId=" + this.f59k);
            Log.d("MediaBrowserCompat", "  mMediaSessionToken=" + this.f60l);
        }

        public MediaSessionCompat.Token c() {
            if (e()) {
                return this.f60l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f55g + ")");
        }

        public void connect() {
            int i2 = this.f55g;
            if (i2 == 0 || i2 == 1) {
                this.f55g = 2;
                this.f53e.post(new a(this));
                return;
            }
            throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + a(this.f55g) + ")");
        }

        public void d() {
            a aVar = this.f56h;
            if (aVar != null) {
                this.f49a.unbindService(aVar);
            }
            this.f55g = 1;
            this.f56h = null;
            this.f57i = null;
            this.f58j = null;
            this.f53e.a(null);
            this.f59k = null;
            this.f60l = null;
        }

        public boolean e() {
            return this.f55g == 3;
        }

        public void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (a(messenger, "onConnect")) {
                if (this.f55g != 2) {
                    Log.w("MediaBrowserCompat", "onConnect from service while mState=" + a(this.f55g) + "... ignoring");
                    return;
                }
                this.f59k = str;
                this.f60l = token;
                this.m = bundle;
                this.f55g = 3;
                if (MediaBrowserCompat.f22a) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    b();
                }
                this.f51c.a();
                try {
                    for (Map.Entry next : this.f54f.entrySet()) {
                        String str2 = (String) next.getKey();
                        m mVar = (m) next.getValue();
                        List<n> a2 = mVar.a();
                        List<Bundle> b2 = mVar.b();
                        for (int i2 = 0; i2 < a2.size(); i2++) {
                            this.f57i.a(str2, a2.get(i2).f67b, b2.get(i2), this.f58j);
                        }
                    }
                } catch (RemoteException unused) {
                    Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException.");
                }
            }
        }

        public void a(Messenger messenger) {
            Log.e("MediaBrowserCompat", "onConnectFailed for " + this.f50b);
            if (a(messenger, "onConnectFailed")) {
                if (this.f55g != 2) {
                    Log.w("MediaBrowserCompat", "onConnect from service while mState=" + a(this.f55g) + "... ignoring");
                    return;
                }
                d();
                this.f51c.b();
            }
        }

        public void a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (a(messenger, "onLoadChildren")) {
                if (MediaBrowserCompat.f22a) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for " + this.f50b + " id=" + str);
                }
                m mVar = this.f54f.get(str);
                if (mVar == null) {
                    if (MediaBrowserCompat.f22a) {
                        Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                    }
                    return;
                }
                n a2 = mVar.a(bundle);
                if (a2 != null) {
                    if (bundle == null) {
                        if (list == null) {
                            a2.a(str);
                        } else {
                            this.n = bundle2;
                            a2.a(str, (List<MediaItem>) list);
                            this.n = null;
                        }
                    } else if (list == null) {
                        a2.a(str, bundle);
                    } else {
                        this.n = bundle2;
                        a2.a(str, list, bundle);
                        this.n = null;
                    }
                }
            }
        }

        public static String a(int i2) {
            if (i2 == 0) {
                return "CONNECT_STATE_DISCONNECTING";
            }
            if (i2 == 1) {
                return "CONNECT_STATE_DISCONNECTED";
            }
            if (i2 == 2) {
                return "CONNECT_STATE_CONNECTING";
            }
            if (i2 == 3) {
                return "CONNECT_STATE_CONNECTED";
            }
            if (i2 == 4) {
                return "CONNECT_STATE_SUSPENDED";
            }
            return "UNKNOWN/" + i2;
        }

        public final boolean a(Messenger messenger, String str) {
            if (this.f58j == messenger) {
                int i2 = this.f55g;
                if (!(i2 == 0 || i2 == 1)) {
                    return true;
                }
            }
            int i3 = this.f55g;
            if (!(i3 == 0 || i3 == 1)) {
                Log.i("MediaBrowserCompat", str + " for " + this.f50b + " with mCallbacksMessenger=" + this.f58j + " this=" + this);
            }
            return false;
        }
    }

    interface j {
        void a(Messenger messenger);

        void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        void a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);
    }

    public static abstract class k {
        public abstract void a(String str, Bundle bundle);

        public abstract void a(String str, Bundle bundle, List<MediaItem> list);
    }

    private static class l {

        /* renamed from: a  reason: collision with root package name */
        public Messenger f62a;

        /* renamed from: b  reason: collision with root package name */
        public Bundle f63b;

        public l(IBinder iBinder, Bundle bundle) {
            this.f62a = new Messenger(iBinder);
            this.f63b = bundle;
        }

        public void a(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.f63b);
            a(1, bundle, messenger);
        }

        public void b(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.f63b);
            a(6, bundle, messenger);
        }

        public void a(Messenger messenger) {
            a(2, null, messenger);
        }

        public void b(Messenger messenger) {
            a(7, null, messenger);
        }

        public void a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            b.i.a.j.a(bundle2, "data_callback_token", iBinder);
            bundle2.putBundle("data_options", bundle);
            a(3, bundle2, messenger);
        }

        public final void a(int i2, Bundle bundle, Messenger messenger) {
            Message obtain = Message.obtain();
            obtain.what = i2;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f62a.send(obtain);
        }
    }

    private static class m {

        /* renamed from: a  reason: collision with root package name */
        public final List<n> f64a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final List<Bundle> f65b = new ArrayList();

        public List<n> a() {
            return this.f64a;
        }

        public List<Bundle> b() {
            return this.f65b;
        }

        public n a(Bundle bundle) {
            for (int i2 = 0; i2 < this.f65b.size(); i2++) {
                if (b.u.d.a(this.f65b.get(i2), bundle)) {
                    return this.f64a.get(i2);
                }
            }
            return null;
        }
    }

    public static abstract class n {

        /* renamed from: a  reason: collision with root package name */
        public final Object f66a;

        /* renamed from: b  reason: collision with root package name */
        public final IBinder f67b = new Binder();

        /* renamed from: c  reason: collision with root package name */
        public WeakReference<m> f68c;

        private class a implements f.d {
            public a() {
            }

            public void a(String str, List<?> list) {
                WeakReference<m> weakReference = n.this.f68c;
                m mVar = weakReference == null ? null : (m) weakReference.get();
                if (mVar == null) {
                    n.this.a(str, MediaItem.a(list));
                    return;
                }
                List<MediaItem> a2 = MediaItem.a(list);
                List<n> a3 = mVar.a();
                List<Bundle> b2 = mVar.b();
                for (int i2 = 0; i2 < a3.size(); i2++) {
                    Bundle bundle = b2.get(i2);
                    if (bundle == null) {
                        n.this.a(str, a2);
                    } else {
                        n.this.a(str, a(a2, bundle), bundle);
                    }
                }
            }

            public void a(String str) {
                n.this.a(str);
            }

            public List<MediaItem> a(List<MediaItem> list, Bundle bundle) {
                if (list == null) {
                    return null;
                }
                int i2 = bundle.getInt("android.media.browse.extra.PAGE", -1);
                int i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
                if (i2 == -1 && i3 == -1) {
                    return list;
                }
                int i4 = i3 * i2;
                int i5 = i4 + i3;
                if (i2 < 0 || i3 < 1 || i4 >= list.size()) {
                    return Collections.emptyList();
                }
                if (i5 > list.size()) {
                    i5 = list.size();
                }
                return list.subList(i4, i5);
            }
        }

        private class b extends a implements g.a {
            public b() {
                super();
            }

            public void a(String str, List<?> list, Bundle bundle) {
                n.this.a(str, MediaItem.a(list), bundle);
            }

            public void a(String str, Bundle bundle) {
                n.this.a(str, bundle);
            }
        }

        public n() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 26) {
                this.f66a = a.a.b.b.g.a(new b());
            } else if (i2 >= 21) {
                this.f66a = a.a.b.b.f.a((f.d) new a());
            } else {
                this.f66a = null;
            }
        }

        public void a(String str) {
        }

        public void a(String str, Bundle bundle) {
        }

        public void a(String str, List<MediaItem> list) {
        }

        public void a(String str, List<MediaItem> list, Bundle bundle) {
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, b bVar, Bundle bundle) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.f23b = new h(context, componentName, bVar, bundle);
        } else if (i2 >= 23) {
            this.f23b = new g(context, componentName, bVar, bundle);
        } else if (i2 >= 21) {
            this.f23b = new f(context, componentName, bVar, bundle);
        } else {
            this.f23b = new i(context, componentName, bVar, bundle);
        }
    }

    public void a() {
        this.f23b.connect();
    }

    public void b() {
        this.f23b.a();
    }

    public MediaSessionCompat.Token c() {
        return this.f23b.c();
    }
}
