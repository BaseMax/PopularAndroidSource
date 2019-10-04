package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
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
import android.support.v4.media.a;
import android.support.v4.media.b;
import android.support.v4.media.c;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.b;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserCompatUtils;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaBrowserServiceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class MediaBrowserCompat {
    public static final String CUSTOM_ACTION_DOWNLOAD = "android.support.v4.media.action.DOWNLOAD";
    public static final String CUSTOM_ACTION_REMOVE_DOWNLOADED_FILE = "android.support.v4.media.action.REMOVE_DOWNLOADED_FILE";
    public static final String EXTRA_DOWNLOAD_PROGRESS = "android.media.browse.extra.DOWNLOAD_PROGRESS";
    public static final String EXTRA_MEDIA_ID = "android.media.browse.extra.MEDIA_ID";
    public static final String EXTRA_PAGE = "android.media.browse.extra.PAGE";
    public static final String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";

    /* renamed from: a  reason: collision with root package name */
    static final boolean f7a = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: b  reason: collision with root package name */
    private final e f8b;

    static class CustomActionResultReceiver extends ResultReceiver {
        private final String d;
        private final Bundle e;
        private final c f;

        CustomActionResultReceiver(String str, Bundle bundle, c cVar, Handler handler) {
            super(handler);
            this.d = str;
            this.e = bundle;
            this.f = cVar;
        }

        public final void onReceiveResult(int i, Bundle bundle) {
            if (this.f != null) {
                MediaSessionCompat.ensureClassLoader(bundle);
                if (i == -1) {
                    this.f.onError(this.d, this.e, bundle);
                } else if (i == 0) {
                    this.f.onResult(this.d, this.e, bundle);
                } else if (i != 1) {
                    StringBuilder sb = new StringBuilder("Unknown result code: ");
                    sb.append(i);
                    sb.append(" (extras=");
                    sb.append(this.e);
                    sb.append(", resultData=");
                    sb.append(bundle);
                    sb.append(")");
                } else {
                    this.f.onProgressUpdate(this.d, this.e, bundle);
                }
            }
        }
    }

    static class ItemReceiver extends ResultReceiver {
        private final String d;
        private final d e;

        ItemReceiver(String str, d dVar, Handler handler) {
            super(handler);
            this.d = str;
            this.e = dVar;
        }

        public final void onReceiveResult(int i, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                this.e.onError(this.d);
                return;
            }
            Parcelable parcelable = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.e.onItemLoaded((MediaItem) parcelable);
            } else {
                this.e.onError(this.d);
            }
        }
    }

    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator<MediaItem>() {
            public final MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            public final MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        };
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;

        /* renamed from: a  reason: collision with root package name */
        private final int f9a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaDescriptionCompat f10b;

        public int describeContents() {
            return 0;
        }

        public static MediaItem fromMediaItem(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new MediaItem(MediaDescriptionCompat.fromMediaDescription(a.c.getDescription(obj)), a.c.getFlags(obj));
        }

        public static List<MediaItem> fromMediaItemList(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (Object fromMediaItem : list) {
                arrayList.add(fromMediaItem(fromMediaItem));
            }
            return arrayList;
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            } else if (!TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                this.f9a = i;
                this.f10b = mediaDescriptionCompat;
            } else {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
        }

        MediaItem(Parcel parcel) {
            this.f9a = parcel.readInt();
            this.f10b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f9a);
            this.f10b.writeToParcel(parcel, i);
        }

        public String toString() {
            return "MediaItem{" + "mFlags=" + this.f9a + ", mDescription=" + this.f10b + '}';
        }

        public int getFlags() {
            return this.f9a;
        }

        public boolean isBrowsable() {
            return (this.f9a & 1) != 0;
        }

        public boolean isPlayable() {
            return (this.f9a & 2) != 0;
        }

        public MediaDescriptionCompat getDescription() {
            return this.f10b;
        }

        public String getMediaId() {
            return this.f10b.getMediaId();
        }
    }

    static class SearchResultReceiver extends ResultReceiver {
        private final String d;
        private final Bundle e;
        private final k f;

        SearchResultReceiver(String str, Bundle bundle, k kVar, Handler handler) {
            super(handler);
            this.d = str;
            this.e = bundle;
            this.f = kVar;
        }

        public final void onReceiveResult(int i, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) {
                this.f.onError(this.d, this.e);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
            ArrayList arrayList = null;
            if (parcelableArray != null) {
                arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
            }
            this.f.onSearchResult(this.d, this.e, arrayList);
        }
    }

    static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<j> f11a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<Messenger> f12b;

        a(j jVar) {
            this.f11a = new WeakReference<>(jVar);
        }

        public final void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f12b;
            if (!(weakReference == null || weakReference.get() == null || this.f11a.get() == null)) {
                Bundle data = message.getData();
                MediaSessionCompat.ensureClassLoader(data);
                j jVar = (j) this.f11a.get();
                Messenger messenger = (Messenger) this.f12b.get();
                try {
                    int i = message.what;
                    if (i == 1) {
                        Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                        MediaSessionCompat.ensureClassLoader(bundle);
                        jVar.onServiceConnected(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (MediaSessionCompat.Token) data.getParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN), bundle);
                    } else if (i == 2) {
                        jVar.onConnectionFailed(messenger);
                    } else if (i != 3) {
                        StringBuilder sb = new StringBuilder("Unhandled message: ");
                        sb.append(message);
                        sb.append("\n  Client version: 1\n  Service version: ");
                        sb.append(message.arg1);
                    } else {
                        Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                        MediaSessionCompat.ensureClassLoader(bundle2);
                        Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS);
                        MediaSessionCompat.ensureClassLoader(bundle3);
                        jVar.onLoadChildren(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST), bundle2, bundle3);
                    }
                } catch (BadParcelableException unused) {
                    if (message.what == 1) {
                        jVar.onConnectionFailed(messenger);
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Messenger messenger) {
            this.f12b = new WeakReference<>(messenger);
        }
    }

    public static class b {
        a mConnectionCallbackInternal;
        final Object mConnectionCallbackObj;

        interface a {
            void onConnected();

            void onConnectionFailed();

            void onConnectionSuspended();
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b  reason: collision with other inner class name */
        class C0000b implements a.C0001a {
            C0000b() {
            }

            public final void onConnected() {
                if (b.this.mConnectionCallbackInternal != null) {
                    b.this.mConnectionCallbackInternal.onConnected();
                }
                b.this.onConnected();
            }

            public final void onConnectionSuspended() {
                if (b.this.mConnectionCallbackInternal != null) {
                    b.this.mConnectionCallbackInternal.onConnectionSuspended();
                }
                b.this.onConnectionSuspended();
            }

            public final void onConnectionFailed() {
                if (b.this.mConnectionCallbackInternal != null) {
                    b.this.mConnectionCallbackInternal.onConnectionFailed();
                }
                b.this.onConnectionFailed();
            }
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }

        public b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.mConnectionCallbackObj = a.createConnectionCallback(new C0000b());
            } else {
                this.mConnectionCallbackObj = null;
            }
        }

        /* access modifiers changed from: package-private */
        public void setInternalConnectionCallback(a aVar) {
            this.mConnectionCallbackInternal = aVar;
        }
    }

    public static abstract class c {
        public void onError(String str, Bundle bundle, Bundle bundle2) {
        }

        public void onProgressUpdate(String str, Bundle bundle, Bundle bundle2) {
        }

        public void onResult(String str, Bundle bundle, Bundle bundle2) {
        }
    }

    public static abstract class d {

        /* renamed from: a  reason: collision with root package name */
        final Object f14a;

        class a implements b.a {
            a() {
            }

            public final void onItemLoaded(Parcel parcel) {
                if (parcel == null) {
                    d.this.onItemLoaded(null);
                    return;
                }
                parcel.setDataPosition(0);
                parcel.recycle();
                d.this.onItemLoaded(MediaItem.CREATOR.createFromParcel(parcel));
            }

            public final void onError(String str) {
                d.this.onError(str);
            }
        }

        public void onError(String str) {
        }

        public void onItemLoaded(MediaItem mediaItem) {
        }

        public d() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f14a = b.createItemCallback(new a());
            } else {
                this.f14a = null;
            }
        }
    }

    interface e {
        void connect();

        void disconnect();

        Bundle getExtras();

        void getItem(String str, d dVar);

        Bundle getNotifyChildrenChangedOptions();

        String getRoot();

        ComponentName getServiceComponent();

        MediaSessionCompat.Token getSessionToken();

        boolean isConnected();

        void search(String str, Bundle bundle, k kVar);

        void sendCustomAction(String str, Bundle bundle, c cVar);

        void subscribe(String str, Bundle bundle, n nVar);

        void unsubscribe(String str, n nVar);
    }

    static class f implements b.a, e, j {

        /* renamed from: a  reason: collision with root package name */
        final Context f16a;

        /* renamed from: b  reason: collision with root package name */
        protected final Object f17b;
        protected final Bundle c;
        protected final a d = new a(this);
        protected int e;
        protected l f;
        protected Messenger g;
        private final ArrayMap<String, m> h = new ArrayMap<>();
        private MediaSessionCompat.Token i;
        private Bundle j;

        public void onConnectionFailed() {
        }

        public void onConnectionFailed(Messenger messenger) {
        }

        public void onServiceConnected(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        f(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            Bundle bundle2;
            this.f16a = context;
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            this.c = bundle2;
            this.c.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            bVar.setInternalConnectionCallback(this);
            this.f17b = a.createBrowser(context, componentName, bVar.mConnectionCallbackObj, this.c);
        }

        public void connect() {
            a.connect(this.f17b);
        }

        public void disconnect() {
            l lVar = this.f;
            if (lVar != null) {
                Messenger messenger = this.g;
                if (messenger != null) {
                    try {
                        lVar.a(7, (Bundle) null, messenger);
                    } catch (RemoteException unused) {
                    }
                }
            }
            a.disconnect(this.f17b);
        }

        public boolean isConnected() {
            return a.isConnected(this.f17b);
        }

        public ComponentName getServiceComponent() {
            return a.getServiceComponent(this.f17b);
        }

        public String getRoot() {
            return a.getRoot(this.f17b);
        }

        public Bundle getExtras() {
            return a.getExtras(this.f17b);
        }

        public MediaSessionCompat.Token getSessionToken() {
            if (this.i == null) {
                this.i = MediaSessionCompat.Token.fromToken(a.getSessionToken(this.f17b));
            }
            return this.i;
        }

        public void subscribe(String str, Bundle bundle, n nVar) {
            m mVar = this.h.get(str);
            if (mVar == null) {
                mVar = new m();
                this.h.put(str, mVar);
            }
            nVar.c = new WeakReference<>(mVar);
            Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
            mVar.putCallback(bundle2, nVar);
            l lVar = this.f;
            if (lVar == null) {
                a.subscribe(this.f17b, str, nVar.f53a);
            } else {
                try {
                    lVar.a(str, nVar.f54b, bundle2, this.g);
                } catch (RemoteException unused) {
                }
            }
        }

        public void unsubscribe(String str, n nVar) {
            m mVar = this.h.get(str);
            if (mVar != null) {
                l lVar = this.f;
                if (lVar == null) {
                    if (nVar == null) {
                        a.unsubscribe(this.f17b, str);
                    } else {
                        List<n> callbacks = mVar.getCallbacks();
                        List<Bundle> optionsList = mVar.getOptionsList();
                        for (int size = callbacks.size() - 1; size >= 0; size--) {
                            if (callbacks.get(size) == nVar) {
                                callbacks.remove(size);
                                optionsList.remove(size);
                            }
                        }
                        if (callbacks.size() == 0) {
                            a.unsubscribe(this.f17b, str);
                        }
                    }
                } else if (nVar == null) {
                    try {
                        lVar.a(str, (IBinder) null, this.g);
                    } catch (RemoteException unused) {
                    }
                } else {
                    List<n> callbacks2 = mVar.getCallbacks();
                    List<Bundle> optionsList2 = mVar.getOptionsList();
                    for (int size2 = callbacks2.size() - 1; size2 >= 0; size2--) {
                        if (callbacks2.get(size2) == nVar) {
                            this.f.a(str, nVar.f54b, this.g);
                            callbacks2.remove(size2);
                            optionsList2.remove(size2);
                        }
                    }
                }
                if (mVar.isEmpty() || nVar == null) {
                    this.h.remove(str);
                }
            }
        }

        public void getItem(final String str, final d dVar) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("mediaId is empty");
            } else if (dVar == null) {
                throw new IllegalArgumentException("cb is null");
            } else if (!a.isConnected(this.f17b)) {
                this.d.post(new Runnable() {
                    public final void run() {
                        dVar.onError(str);
                    }
                });
            } else if (this.f == null) {
                this.d.post(new Runnable() {
                    public final void run() {
                        dVar.onError(str);
                    }
                });
            } else {
                try {
                    this.f.a(str, (ResultReceiver) new ItemReceiver(str, dVar, this.d), this.g);
                } catch (RemoteException unused) {
                    this.d.post(new Runnable() {
                        public final void run() {
                            dVar.onError(str);
                        }
                    });
                }
            }
        }

        public void search(final String str, final Bundle bundle, final k kVar) {
            if (!isConnected()) {
                throw new IllegalStateException("search() called while not connected");
            } else if (this.f == null) {
                this.d.post(new Runnable() {
                    public final void run() {
                        kVar.onError(str, bundle);
                    }
                });
            } else {
                try {
                    this.f.a(str, bundle, (ResultReceiver) new SearchResultReceiver(str, bundle, kVar, this.d), this.g);
                } catch (RemoteException unused) {
                    this.d.post(new Runnable() {
                        public final void run() {
                            kVar.onError(str, bundle);
                        }
                    });
                }
            }
        }

        public void sendCustomAction(final String str, final Bundle bundle, final c cVar) {
            if (isConnected()) {
                if (this.f == null && cVar != null) {
                    this.d.post(new Runnable() {
                        public final void run() {
                            cVar.onError(str, bundle, null);
                        }
                    });
                }
                try {
                    this.f.b(str, bundle, new CustomActionResultReceiver(str, bundle, cVar, this.d), this.g);
                } catch (RemoteException unused) {
                    StringBuilder sb = new StringBuilder("Remote error sending a custom action: action=");
                    sb.append(str);
                    sb.append(", extras=");
                    sb.append(bundle);
                    if (cVar != null) {
                        this.d.post(new Runnable() {
                            public final void run() {
                                cVar.onError(str, bundle, null);
                            }
                        });
                    }
                }
            } else {
                throw new IllegalStateException("Cannot send a custom action (" + str + ") with extras " + bundle + " because the browser is not connected to the service.");
            }
        }

        public void onConnected() {
            Bundle extras = a.getExtras(this.f17b);
            if (extras != null) {
                this.e = extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                if (binder != null) {
                    this.f = new l(binder, this.c);
                    this.g = new Messenger(this.d);
                    this.d.a(this.g);
                    try {
                        l lVar = this.f;
                        Context context = this.f16a;
                        Messenger messenger = this.g;
                        Bundle bundle = new Bundle();
                        bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
                        bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, lVar.f49a);
                        lVar.a(6, bundle, messenger);
                    } catch (RemoteException unused) {
                    }
                }
                android.support.v4.media.session.b asInterface = b.a.asInterface(BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER));
                if (asInterface != null) {
                    this.i = MediaSessionCompat.Token.fromToken(a.getSessionToken(this.f17b), asInterface);
                }
            }
        }

        public void onConnectionSuspended() {
            this.f = null;
            this.g = null;
            this.i = null;
            this.d.a(null);
        }

        public void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (this.g == messenger) {
                m mVar = this.h.get(str);
                if (mVar == null) {
                    boolean z = MediaBrowserCompat.f7a;
                    return;
                }
                n callback = mVar.getCallback(bundle);
                if (callback != null) {
                    if (bundle == null) {
                        if (list == null) {
                            callback.onError(str);
                            return;
                        }
                        this.j = bundle2;
                        callback.onChildrenLoaded(str, list);
                        this.j = null;
                    } else if (list == null) {
                        callback.onError(str, bundle);
                    } else {
                        this.j = bundle2;
                        callback.onChildrenLoaded(str, list, bundle);
                        this.j = null;
                    }
                }
            }
        }

        public Bundle getNotifyChildrenChangedOptions() {
            return this.j;
        }
    }

    static class g extends f {
        g(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }

        public void getItem(String str, d dVar) {
            if (this.f == null) {
                b.getItem(this.f17b, str, dVar.f14a);
            } else {
                super.getItem(str, dVar);
            }
        }
    }

    static class h extends g {
        h(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }

        public final void subscribe(String str, Bundle bundle, n nVar) {
            if (this.f != null && this.e >= 2) {
                super.subscribe(str, bundle, nVar);
            } else if (bundle == null) {
                a.subscribe(this.f17b, str, nVar.f53a);
            } else {
                c.subscribe(this.f17b, str, bundle, nVar.f53a);
            }
        }

        public final void unsubscribe(String str, n nVar) {
            if (this.f != null && this.e >= 2) {
                super.unsubscribe(str, nVar);
            } else if (nVar == null) {
                a.unsubscribe(this.f17b, str);
            } else {
                c.unsubscribe(this.f17b, str, nVar.f53a);
            }
        }
    }

    static class i implements e, j {

        /* renamed from: a  reason: collision with root package name */
        final Context f32a;

        /* renamed from: b  reason: collision with root package name */
        final ComponentName f33b;
        final b c;
        final Bundle d;
        final a e = new a(this);
        int f = 1;
        a g;
        l h;
        Messenger i;
        private final ArrayMap<String, m> j = new ArrayMap<>();
        private String k;
        private MediaSessionCompat.Token l;
        private Bundle m;
        private Bundle n;

        class a implements ServiceConnection {
            a() {
            }

            public final void onServiceConnected(final ComponentName componentName, final IBinder iBinder) {
                a((Runnable) new Runnable() {
                    public final void run() {
                        if (MediaBrowserCompat.f7a) {
                            StringBuilder sb = new StringBuilder("MediaServiceConnection.onServiceConnected name=");
                            sb.append(componentName);
                            sb.append(" binder=");
                            sb.append(iBinder);
                            i.this.b();
                        }
                        if (a.this.a("onServiceConnected")) {
                            i.this.h = new l(iBinder, i.this.d);
                            i.this.i = new Messenger(i.this.e);
                            i.this.e.a(i.this.i);
                            i.this.f = 2;
                            try {
                                if (MediaBrowserCompat.f7a) {
                                    i.this.b();
                                }
                                l lVar = i.this.h;
                                Context context = i.this.f32a;
                                Messenger messenger = i.this.i;
                                Bundle bundle = new Bundle();
                                bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
                                bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, lVar.f49a);
                                lVar.a(1, bundle, messenger);
                            } catch (RemoteException unused) {
                                new StringBuilder("RemoteException during connect for ").append(i.this.f33b);
                                if (MediaBrowserCompat.f7a) {
                                    i.this.b();
                                }
                            }
                        }
                    }
                });
            }

            public final void onServiceDisconnected(final ComponentName componentName) {
                a((Runnable) new Runnable() {
                    public final void run() {
                        if (MediaBrowserCompat.f7a) {
                            StringBuilder sb = new StringBuilder("MediaServiceConnection.onServiceDisconnected name=");
                            sb.append(componentName);
                            sb.append(" this=");
                            sb.append(this);
                            sb.append(" mServiceConnection=");
                            sb.append(i.this.g);
                            i.this.b();
                        }
                        if (a.this.a("onServiceDisconnected")) {
                            i.this.h = null;
                            i.this.i = null;
                            i.this.e.a(null);
                            i.this.f = 4;
                            i.this.c.onConnectionSuspended();
                        }
                    }
                });
            }

            private void a(Runnable runnable) {
                if (Thread.currentThread() == i.this.e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    i.this.e.post(runnable);
                }
            }

            /* access modifiers changed from: package-private */
            public final boolean a(String str) {
                if (i.this.g == this && i.this.f != 0 && i.this.f != 1) {
                    return true;
                }
                if (!(i.this.f == 0 || i.this.f == 1)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" for ");
                    sb.append(i.this.f33b);
                    sb.append(" with mServiceConnection=");
                    sb.append(i.this.g);
                    sb.append(" this=");
                    sb.append(this);
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
                this.f32a = context;
                this.f33b = componentName;
                this.c = bVar;
                if (bundle == null) {
                    bundle2 = null;
                } else {
                    bundle2 = new Bundle(bundle);
                }
                this.d = bundle2;
            } else {
                throw new IllegalArgumentException("connection callback must not be null");
            }
        }

        public final void connect() {
            int i2 = this.f;
            if (i2 == 0 || i2 == 1) {
                this.f = 2;
                this.e.post(new Runnable() {
                    public final void run() {
                        if (i.this.f != 0) {
                            i.this.f = 2;
                            if (MediaBrowserCompat.f7a && i.this.g != null) {
                                throw new RuntimeException("mServiceConnection should be null. Instead it is " + i.this.g);
                            } else if (i.this.h != null) {
                                throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + i.this.h);
                            } else if (i.this.i == null) {
                                Intent intent = new Intent(MediaBrowserServiceCompat.SERVICE_INTERFACE);
                                intent.setComponent(i.this.f33b);
                                i iVar = i.this;
                                iVar.g = new a();
                                boolean z = false;
                                try {
                                    z = i.this.f32a.bindService(intent, i.this.g, 1);
                                } catch (Exception unused) {
                                    new StringBuilder("Failed binding to service ").append(i.this.f33b);
                                }
                                if (!z) {
                                    i.this.a();
                                    i.this.c.onConnectionFailed();
                                }
                                if (MediaBrowserCompat.f7a) {
                                    i.this.b();
                                }
                            } else {
                                throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + i.this.i);
                            }
                        }
                    }
                });
                return;
            }
            throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + a(this.f) + ")");
        }

        public final void disconnect() {
            this.f = 0;
            this.e.post(new Runnable() {
                public final void run() {
                    if (i.this.i != null) {
                        try {
                            i.this.h.a(2, (Bundle) null, i.this.i);
                        } catch (RemoteException unused) {
                            new StringBuilder("RemoteException during connect for ").append(i.this.f33b);
                        }
                    }
                    int i = i.this.f;
                    i.this.a();
                    if (i != 0) {
                        i.this.f = i;
                    }
                    if (MediaBrowserCompat.f7a) {
                        i.this.b();
                    }
                }
            });
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            a aVar = this.g;
            if (aVar != null) {
                this.f32a.unbindService(aVar);
            }
            this.f = 1;
            this.g = null;
            this.h = null;
            this.i = null;
            this.e.a(null);
            this.k = null;
            this.l = null;
        }

        public final boolean isConnected() {
            return this.f == 3;
        }

        public final ComponentName getServiceComponent() {
            if (isConnected()) {
                return this.f33b;
            }
            throw new IllegalStateException("getServiceComponent() called while not connected (state=" + this.f + ")");
        }

        public final String getRoot() {
            if (isConnected()) {
                return this.k;
            }
            throw new IllegalStateException("getRoot() called while not connected(state=" + a(this.f) + ")");
        }

        public final Bundle getExtras() {
            if (isConnected()) {
                return this.m;
            }
            throw new IllegalStateException("getExtras() called while not connected (state=" + a(this.f) + ")");
        }

        public final MediaSessionCompat.Token getSessionToken() {
            if (isConnected()) {
                return this.l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f + ")");
        }

        public final void subscribe(String str, Bundle bundle, n nVar) {
            Bundle bundle2;
            m mVar = this.j.get(str);
            if (mVar == null) {
                mVar = new m();
                this.j.put(str, mVar);
            }
            if (bundle == null) {
                bundle2 = null;
            } else {
                bundle2 = new Bundle(bundle);
            }
            mVar.putCallback(bundle2, nVar);
            if (isConnected()) {
                try {
                    this.h.a(str, nVar.f54b, bundle2, this.i);
                } catch (RemoteException unused) {
                }
            }
        }

        public final void unsubscribe(String str, n nVar) {
            m mVar = this.j.get(str);
            if (mVar != null) {
                if (nVar == null) {
                    try {
                        if (isConnected()) {
                            this.h.a(str, (IBinder) null, this.i);
                        }
                    } catch (RemoteException unused) {
                    }
                } else {
                    List<n> callbacks = mVar.getCallbacks();
                    List<Bundle> optionsList = mVar.getOptionsList();
                    for (int size = callbacks.size() - 1; size >= 0; size--) {
                        if (callbacks.get(size) == nVar) {
                            if (isConnected()) {
                                this.h.a(str, nVar.f54b, this.i);
                            }
                            callbacks.remove(size);
                            optionsList.remove(size);
                        }
                    }
                }
                if (mVar.isEmpty() || nVar == null) {
                    this.j.remove(str);
                }
            }
        }

        public final void getItem(final String str, final d dVar) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("mediaId is empty");
            } else if (dVar == null) {
                throw new IllegalArgumentException("cb is null");
            } else if (!isConnected()) {
                this.e.post(new Runnable() {
                    public final void run() {
                        dVar.onError(str);
                    }
                });
            } else {
                try {
                    this.h.a(str, (ResultReceiver) new ItemReceiver(str, dVar, this.e), this.i);
                } catch (RemoteException unused) {
                    this.e.post(new Runnable() {
                        public final void run() {
                            dVar.onError(str);
                        }
                    });
                }
            }
        }

        public final void search(final String str, final Bundle bundle, final k kVar) {
            if (isConnected()) {
                try {
                    this.h.a(str, bundle, (ResultReceiver) new SearchResultReceiver(str, bundle, kVar, this.e), this.i);
                } catch (RemoteException unused) {
                    this.e.post(new Runnable() {
                        public final void run() {
                            kVar.onError(str, bundle);
                        }
                    });
                }
            } else {
                throw new IllegalStateException("search() called while not connected (state=" + a(this.f) + ")");
            }
        }

        public final void sendCustomAction(final String str, final Bundle bundle, final c cVar) {
            if (isConnected()) {
                try {
                    this.h.b(str, bundle, new CustomActionResultReceiver(str, bundle, cVar, this.e), this.i);
                } catch (RemoteException unused) {
                    StringBuilder sb = new StringBuilder("Remote error sending a custom action: action=");
                    sb.append(str);
                    sb.append(", extras=");
                    sb.append(bundle);
                    if (cVar != null) {
                        this.e.post(new Runnable() {
                            public final void run() {
                                cVar.onError(str, bundle, null);
                            }
                        });
                    }
                }
            } else {
                throw new IllegalStateException("Cannot send a custom action (" + str + ") with extras " + bundle + " because the browser is not connected to the service.");
            }
        }

        public final void onServiceConnected(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (a(messenger, "onConnect")) {
                if (this.f != 2) {
                    StringBuilder sb = new StringBuilder("onConnect from service while mState=");
                    sb.append(a(this.f));
                    sb.append("... ignoring");
                    return;
                }
                this.k = str;
                this.l = token;
                this.m = bundle;
                this.f = 3;
                if (MediaBrowserCompat.f7a) {
                    b();
                }
                this.c.onConnected();
                try {
                    for (Map.Entry next : this.j.entrySet()) {
                        String str2 = (String) next.getKey();
                        m mVar = (m) next.getValue();
                        List<n> callbacks = mVar.getCallbacks();
                        List<Bundle> optionsList = mVar.getOptionsList();
                        for (int i2 = 0; i2 < callbacks.size(); i2++) {
                            this.h.a(str2, callbacks.get(i2).f54b, optionsList.get(i2), this.i);
                        }
                    }
                } catch (RemoteException unused) {
                }
            }
        }

        public final void onConnectionFailed(Messenger messenger) {
            new StringBuilder("onConnectFailed for ").append(this.f33b);
            if (a(messenger, "onConnectFailed")) {
                if (this.f != 2) {
                    StringBuilder sb = new StringBuilder("onConnect from service while mState=");
                    sb.append(a(this.f));
                    sb.append("... ignoring");
                    return;
                }
                a();
                this.c.onConnectionFailed();
            }
        }

        public final void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (a(messenger, "onLoadChildren")) {
                if (MediaBrowserCompat.f7a) {
                    StringBuilder sb = new StringBuilder("onLoadChildren for ");
                    sb.append(this.f33b);
                    sb.append(" id=");
                    sb.append(str);
                }
                m mVar = this.j.get(str);
                if (mVar == null) {
                    boolean z = MediaBrowserCompat.f7a;
                    return;
                }
                n callback = mVar.getCallback(bundle);
                if (callback != null) {
                    if (bundle == null) {
                        if (list == null) {
                            callback.onError(str);
                            return;
                        }
                        this.n = bundle2;
                        callback.onChildrenLoaded(str, list);
                        this.n = null;
                    } else if (list == null) {
                        callback.onError(str, bundle);
                    } else {
                        this.n = bundle2;
                        callback.onChildrenLoaded(str, list, bundle);
                        this.n = null;
                    }
                }
            }
        }

        public final Bundle getNotifyChildrenChangedOptions() {
            return this.n;
        }

        private static String a(int i2) {
            if (i2 == 0) {
                return "CONNECT_STATE_DISCONNECTING";
            }
            if (i2 == 1) {
                return "CONNECT_STATE_DISCONNECTED";
            }
            if (i2 == 2) {
                return "CONNECT_STATE_CONNECTING";
            }
            if (i2 != 3) {
                return i2 != 4 ? "UNKNOWN/".concat(String.valueOf(i2)) : "CONNECT_STATE_SUSPENDED";
            }
            return "CONNECT_STATE_CONNECTED";
        }

        private boolean a(Messenger messenger, String str) {
            if (this.i == messenger) {
                int i2 = this.f;
                if (!(i2 == 0 || i2 == 1)) {
                    return true;
                }
            }
            int i3 = this.f;
            if (!(i3 == 0 || i3 == 1)) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" for ");
                sb.append(this.f33b);
                sb.append(" with mCallbacksMessenger=");
                sb.append(this.i);
                sb.append(" this=");
                sb.append(this);
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            new StringBuilder("  mServiceComponent=").append(this.f33b);
            new StringBuilder("  mCallback=").append(this.c);
            new StringBuilder("  mRootHints=").append(this.d);
            new StringBuilder("  mState=").append(a(this.f));
            new StringBuilder("  mServiceConnection=").append(this.g);
            new StringBuilder("  mServiceBinderWrapper=").append(this.h);
            new StringBuilder("  mCallbacksMessenger=").append(this.i);
            new StringBuilder("  mRootId=").append(this.k);
            new StringBuilder("  mMediaSessionToken=").append(this.l);
        }
    }

    interface j {
        void onConnectionFailed(Messenger messenger);

        void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);

        void onServiceConnected(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);
    }

    public static abstract class k {
        public void onError(String str, Bundle bundle) {
        }

        public void onSearchResult(String str, Bundle bundle, List<MediaItem> list) {
        }
    }

    static class l {

        /* renamed from: a  reason: collision with root package name */
        Bundle f49a;

        /* renamed from: b  reason: collision with root package name */
        private Messenger f50b;

        public l(IBinder iBinder, Bundle bundle) {
            this.f50b = new Messenger(iBinder);
            this.f49a = bundle;
        }

        /* access modifiers changed from: package-private */
        public final void a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            BundleCompat.putBinder(bundle2, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, iBinder);
            bundle2.putBundle(MediaBrowserProtocol.DATA_OPTIONS, bundle);
            a(3, bundle2, messenger);
        }

        /* access modifiers changed from: package-private */
        public final void a(String str, IBinder iBinder, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            BundleCompat.putBinder(bundle, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, iBinder);
            a(4, bundle, messenger);
        }

        /* access modifiers changed from: package-private */
        public final void a(String str, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            a(5, bundle, messenger);
        }

        /* access modifiers changed from: package-private */
        public final void a(String str, Bundle bundle, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_SEARCH_QUERY, str);
            bundle2.putBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS, bundle);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            a(8, bundle2, messenger);
        }

        /* access modifiers changed from: package-private */
        public final void b(String str, Bundle bundle, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_CUSTOM_ACTION, str);
            bundle2.putBundle(MediaBrowserProtocol.DATA_CUSTOM_ACTION_EXTRAS, bundle);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            a(9, bundle2, messenger);
        }

        /* access modifiers changed from: package-private */
        public final void a(int i, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f50b.send(obtain);
        }
    }

    static class m {

        /* renamed from: a  reason: collision with root package name */
        private final List<n> f51a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<Bundle> f52b = new ArrayList();

        public final boolean isEmpty() {
            return this.f51a.isEmpty();
        }

        public final List<Bundle> getOptionsList() {
            return this.f52b;
        }

        public final List<n> getCallbacks() {
            return this.f51a;
        }

        public final n getCallback(Bundle bundle) {
            for (int i = 0; i < this.f52b.size(); i++) {
                if (MediaBrowserCompatUtils.areSameOptions(this.f52b.get(i), bundle)) {
                    return this.f51a.get(i);
                }
            }
            return null;
        }

        public final void putCallback(Bundle bundle, n nVar) {
            for (int i = 0; i < this.f52b.size(); i++) {
                if (MediaBrowserCompatUtils.areSameOptions(this.f52b.get(i), bundle)) {
                    this.f51a.set(i, nVar);
                    return;
                }
            }
            this.f51a.add(nVar);
            this.f52b.add(bundle);
        }
    }

    public static abstract class n {

        /* renamed from: a  reason: collision with root package name */
        final Object f53a;

        /* renamed from: b  reason: collision with root package name */
        final IBinder f54b = new Binder();
        WeakReference<m> c;

        class a implements a.d {
            a() {
            }

            public void onChildrenLoaded(String str, List<?> list) {
                List<MediaItem> list2;
                m mVar = n.this.c == null ? null : (m) n.this.c.get();
                if (mVar == null) {
                    n.this.onChildrenLoaded(str, MediaItem.fromMediaItemList(list));
                    return;
                }
                List<MediaItem> fromMediaItemList = MediaItem.fromMediaItemList(list);
                List<n> callbacks = mVar.getCallbacks();
                List<Bundle> optionsList = mVar.getOptionsList();
                for (int i = 0; i < callbacks.size(); i++) {
                    Bundle bundle = optionsList.get(i);
                    if (bundle == null) {
                        n.this.onChildrenLoaded(str, fromMediaItemList);
                    } else {
                        n nVar = n.this;
                        if (fromMediaItemList == null) {
                            list2 = null;
                        } else {
                            int i2 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
                            int i3 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
                            if (i2 == -1 && i3 == -1) {
                                list2 = fromMediaItemList;
                            } else {
                                int i4 = i3 * i2;
                                int i5 = i4 + i3;
                                if (i2 < 0 || i3 <= 0 || i4 >= fromMediaItemList.size()) {
                                    list2 = Collections.emptyList();
                                } else {
                                    if (i5 > fromMediaItemList.size()) {
                                        i5 = fromMediaItemList.size();
                                    }
                                    list2 = fromMediaItemList.subList(i4, i5);
                                }
                            }
                        }
                        nVar.onChildrenLoaded(str, list2, bundle);
                    }
                }
            }

            public void onError(String str) {
                n.this.onError(str);
            }
        }

        class b extends a implements c.a {
            b() {
                super();
            }

            public final void onChildrenLoaded(String str, List<?> list, Bundle bundle) {
                n.this.onChildrenLoaded(str, MediaItem.fromMediaItemList(list), bundle);
            }

            public final void onError(String str, Bundle bundle) {
                n.this.onError(str, bundle);
            }
        }

        public void onChildrenLoaded(String str, List<MediaItem> list) {
        }

        public void onChildrenLoaded(String str, List<MediaItem> list, Bundle bundle) {
        }

        public void onError(String str) {
        }

        public void onError(String str, Bundle bundle) {
        }

        public n() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f53a = new c.b(new b());
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f53a = a.createSubscriptionCallback(new a());
            } else {
                this.f53a = null;
            }
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, b bVar, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f8b = new h(context, componentName, bVar, bundle);
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.f8b = new g(context, componentName, bVar, bundle);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f8b = new f(context, componentName, bVar, bundle);
        } else {
            this.f8b = new i(context, componentName, bVar, bundle);
        }
    }

    public final void connect() {
        this.f8b.connect();
    }

    public final void disconnect() {
        this.f8b.disconnect();
    }

    public final boolean isConnected() {
        return this.f8b.isConnected();
    }

    public final ComponentName getServiceComponent() {
        return this.f8b.getServiceComponent();
    }

    public final String getRoot() {
        return this.f8b.getRoot();
    }

    public final Bundle getExtras() {
        return this.f8b.getExtras();
    }

    public final MediaSessionCompat.Token getSessionToken() {
        return this.f8b.getSessionToken();
    }

    public final void subscribe(String str, n nVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        } else if (nVar != null) {
            this.f8b.subscribe(str, null, nVar);
        } else {
            throw new IllegalArgumentException("callback is null");
        }
    }

    public final void subscribe(String str, Bundle bundle, n nVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        } else if (nVar == null) {
            throw new IllegalArgumentException("callback is null");
        } else if (bundle != null) {
            this.f8b.subscribe(str, bundle, nVar);
        } else {
            throw new IllegalArgumentException("options are null");
        }
    }

    public final void unsubscribe(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f8b.unsubscribe(str, null);
            return;
        }
        throw new IllegalArgumentException("parentId is empty");
    }

    public final void unsubscribe(String str, n nVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        } else if (nVar != null) {
            this.f8b.unsubscribe(str, nVar);
        } else {
            throw new IllegalArgumentException("callback is null");
        }
    }

    public final void getItem(String str, d dVar) {
        this.f8b.getItem(str, dVar);
    }

    public final void search(String str, Bundle bundle, k kVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("query cannot be empty");
        } else if (kVar != null) {
            this.f8b.search(str, bundle, kVar);
        } else {
            throw new IllegalArgumentException("callback cannot be null");
        }
    }

    public final void sendCustomAction(String str, Bundle bundle, c cVar) {
        if (!TextUtils.isEmpty(str)) {
            this.f8b.sendCustomAction(str, bundle, cVar);
            return;
        }
        throw new IllegalArgumentException("action cannot be empty");
    }

    public final Bundle getNotifyChildrenChangedOptions() {
        return this.f8b.getNotifyChildrenChangedOptions();
    }
}
