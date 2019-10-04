package android.support.v4.media.session;

import a.a.b.b.a.a;
import a.a.b.b.a.b;
import a.a.b.b.a.c;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.KeyEvent;
import b.i.a.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public final class MediaControllerCompat {

    /* renamed from: a  reason: collision with root package name */
    public final c f99a;

    /* renamed from: b  reason: collision with root package name */
    public final MediaSessionCompat.Token f100b;

    /* renamed from: c  reason: collision with root package name */
    public final HashSet<a> f101c = new HashSet<>();

    static class MediaControllerImplApi21 implements c {

        /* renamed from: a  reason: collision with root package name */
        public final Object f102a;

        /* renamed from: b  reason: collision with root package name */
        public final Object f103b = new Object();

        /* renamed from: c  reason: collision with root package name */
        public final List<a> f104c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        public HashMap<a, a> f105d = new HashMap<>();

        /* renamed from: e  reason: collision with root package name */
        public final MediaSessionCompat.Token f106e;

        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: a  reason: collision with root package name */
            public WeakReference<MediaControllerImplApi21> f107a;

            public ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f107a = new WeakReference<>(mediaControllerImplApi21);
            }

            public void onReceiveResult(int i2, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = (MediaControllerImplApi21) this.f107a.get();
                if (mediaControllerImplApi21 != null && bundle != null) {
                    synchronized (mediaControllerImplApi21.f103b) {
                        mediaControllerImplApi21.f106e.a(b.a.a(b.i.a.j.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                        mediaControllerImplApi21.f106e.a(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
                        mediaControllerImplApi21.d();
                    }
                }
            }
        }

        private static class a extends a.c {
            public a(a aVar) {
                super(aVar);
            }

            public void a() {
                throw new AssertionError();
            }

            public void a(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            public void a(List<MediaSessionCompat.QueueItem> list) {
                throw new AssertionError();
            }

            public void a(CharSequence charSequence) {
                throw new AssertionError();
            }

            public void a(Bundle bundle) {
                throw new AssertionError();
            }

            public void a(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f106e = token;
            this.f102a = a.a.b.b.a.c.a(context, this.f106e.c());
            if (this.f102a == null) {
                throw new RemoteException();
            } else if (this.f106e.a() == null) {
                e();
            }
        }

        public final void a(a aVar, Handler handler) {
            a.a.b.b.a.c.a(this.f102a, aVar.f108a, handler);
            synchronized (this.f103b) {
                if (this.f106e.a() != null) {
                    a aVar2 = new a(aVar);
                    this.f105d.put(aVar, aVar2);
                    aVar.f110c = aVar2;
                    try {
                        this.f106e.a().a((a.a.b.b.a.a) aVar2);
                        aVar.a(13, null, null);
                    } catch (RemoteException e2) {
                        Log.e("MediaControllerCompat", "Dead object in registerCallback.", e2);
                    }
                } else {
                    aVar.f110c = null;
                    this.f104c.add(aVar);
                }
            }
        }

        public PlaybackStateCompat b() {
            if (this.f106e.a() != null) {
                try {
                    return this.f106e.a().b();
                } catch (RemoteException e2) {
                    Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e2);
                }
            }
            Object b2 = a.a.b.b.a.c.b(this.f102a);
            return b2 != null ? PlaybackStateCompat.a(b2) : null;
        }

        public MediaMetadataCompat c() {
            Object a2 = a.a.b.b.a.c.a(this.f102a);
            if (a2 != null) {
                return MediaMetadataCompat.a(a2);
            }
            return null;
        }

        public void d() {
            if (this.f106e.a() != null) {
                for (a next : this.f104c) {
                    a aVar = new a(next);
                    this.f105d.put(next, aVar);
                    next.f110c = aVar;
                    try {
                        this.f106e.a().a((a.a.b.b.a.a) aVar);
                        next.a(13, null, null);
                    } catch (RemoteException e2) {
                        Log.e("MediaControllerCompat", "Dead object in registerCallback.", e2);
                    }
                }
                this.f104c.clear();
            }
        }

        public final void e() {
            a("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }

        public final void a(a aVar) {
            a.a.b.b.a.c.a(this.f102a, aVar.f108a);
            synchronized (this.f103b) {
                if (this.f106e.a() != null) {
                    try {
                        a remove = this.f105d.remove(aVar);
                        if (remove != null) {
                            aVar.f110c = null;
                            this.f106e.a().b((a.a.b.b.a.a) remove);
                        }
                    } catch (RemoteException e2) {
                        Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e2);
                    }
                } else {
                    this.f104c.remove(aVar);
                }
            }
        }

        public boolean a(KeyEvent keyEvent) {
            return a.a.b.b.a.c.a(this.f102a, keyEvent);
        }

        public h a() {
            Object d2 = a.a.b.b.a.c.d(this.f102a);
            if (d2 != null) {
                return new i(d2);
            }
            return null;
        }

        public void a(String str, Bundle bundle, ResultReceiver resultReceiver) {
            a.a.b.b.a.c.a(this.f102a, str, bundle, resultReceiver);
        }
    }

    public static abstract class a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        public final Object f108a;

        /* renamed from: b  reason: collision with root package name */
        public C0009a f109b;

        /* renamed from: c  reason: collision with root package name */
        public a.a.b.b.a.a f110c;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a  reason: collision with other inner class name */
        private class C0009a extends Handler {

            /* renamed from: a  reason: collision with root package name */
            public boolean f111a = false;

            public C0009a(Looper looper) {
                super(looper);
            }

            public void handleMessage(Message message) {
                if (this.f111a) {
                    switch (message.what) {
                        case 1:
                            Bundle data = message.getData();
                            MediaSessionCompat.a(data);
                            a.this.a((String) message.obj, data);
                            break;
                        case 2:
                            a.this.a((PlaybackStateCompat) message.obj);
                            break;
                        case 3:
                            a.this.a((MediaMetadataCompat) message.obj);
                            break;
                        case 4:
                            a.this.a((g) message.obj);
                            break;
                        case 5:
                            a.this.a((List<MediaSessionCompat.QueueItem>) (List) message.obj);
                            break;
                        case 6:
                            a.this.a((CharSequence) message.obj);
                            break;
                        case 7:
                            Bundle bundle = (Bundle) message.obj;
                            MediaSessionCompat.a(bundle);
                            a.this.a(bundle);
                            break;
                        case 8:
                            a.this.a();
                            break;
                        case 9:
                            a.this.a(((Integer) message.obj).intValue());
                            break;
                        case 11:
                            a.this.a(((Boolean) message.obj).booleanValue());
                            break;
                        case 12:
                            a.this.b(((Integer) message.obj).intValue());
                            break;
                        case 13:
                            a.this.b();
                            break;
                    }
                }
            }
        }

        private static class b implements c.a {

            /* renamed from: a  reason: collision with root package name */
            public final WeakReference<a> f113a;

            public b(a aVar) {
                this.f113a = new WeakReference<>(aVar);
            }

            public void a() {
                a aVar = (a) this.f113a.get();
                if (aVar != null) {
                    aVar.a();
                }
            }

            public void b(Object obj) {
                a aVar = (a) this.f113a.get();
                if (aVar != null && aVar.f110c == null) {
                    aVar.a(PlaybackStateCompat.a(obj));
                }
            }

            public void a(String str, Bundle bundle) {
                a aVar = (a) this.f113a.get();
                if (aVar == null) {
                    return;
                }
                if (aVar.f110c == null || Build.VERSION.SDK_INT >= 23) {
                    aVar.a(str, bundle);
                }
            }

            public void a(Object obj) {
                a aVar = (a) this.f113a.get();
                if (aVar != null) {
                    aVar.a(MediaMetadataCompat.a(obj));
                }
            }

            public void a(List<?> list) {
                a aVar = (a) this.f113a.get();
                if (aVar != null) {
                    aVar.a(MediaSessionCompat.QueueItem.a(list));
                }
            }

            public void a(CharSequence charSequence) {
                a aVar = (a) this.f113a.get();
                if (aVar != null) {
                    aVar.a(charSequence);
                }
            }

            public void a(Bundle bundle) {
                a aVar = (a) this.f113a.get();
                if (aVar != null) {
                    aVar.a(bundle);
                }
            }

            public void a(int i2, int i3, int i4, int i5, int i6) {
                a aVar = (a) this.f113a.get();
                if (aVar != null) {
                    g gVar = new g(i2, i3, i4, i5, i6);
                    aVar.a(gVar);
                }
            }
        }

        private static class c extends a.C0002a {

            /* renamed from: a  reason: collision with root package name */
            public final WeakReference<a> f114a;

            public c(a aVar) {
                this.f114a = new WeakReference<>(aVar);
            }

            public void a() {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(8, null, null);
                }
            }

            public void b(boolean z) {
            }

            public void d(int i2) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(12, Integer.valueOf(i2), null);
                }
            }

            public void f(String str, Bundle bundle) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(1, str, bundle);
                }
            }

            public void l() {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(13, null, null);
                }
            }

            public void a(PlaybackStateCompat playbackStateCompat) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(2, playbackStateCompat, null);
                }
            }

            public void a(MediaMetadataCompat mediaMetadataCompat) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(3, mediaMetadataCompat, null);
                }
            }

            public void a(List<MediaSessionCompat.QueueItem> list) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(5, list, null);
                }
            }

            public void a(CharSequence charSequence) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(6, charSequence, null);
                }
            }

            public void a(boolean z) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(11, Boolean.valueOf(z), null);
                }
            }

            public void a(int i2) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(9, Integer.valueOf(i2), null);
                }
            }

            public void a(Bundle bundle) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(7, bundle, null);
                }
            }

            public void a(ParcelableVolumeInfo parcelableVolumeInfo) {
                a aVar = (a) this.f114a.get();
                if (aVar != null) {
                    aVar.a(4, parcelableVolumeInfo != null ? new g(parcelableVolumeInfo.f173a, parcelableVolumeInfo.f174b, parcelableVolumeInfo.f175c, parcelableVolumeInfo.f176d, parcelableVolumeInfo.f177e) : null, null);
                }
            }
        }

        public a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f108a = a.a.b.b.a.c.a((c.a) new b(this));
                return;
            }
            c cVar = new c(this);
            this.f110c = cVar;
            this.f108a = cVar;
        }

        public void a() {
        }

        public void a(int i2) {
        }

        public void a(Bundle bundle) {
        }

        public void a(Handler handler) {
            if (handler == null) {
                C0009a aVar = this.f109b;
                if (aVar != null) {
                    aVar.f111a = false;
                    aVar.removeCallbacksAndMessages(null);
                    this.f109b = null;
                    return;
                }
                return;
            }
            this.f109b = new C0009a(handler.getLooper());
            this.f109b.f111a = true;
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void a(g gVar) {
        }

        public void a(PlaybackStateCompat playbackStateCompat) {
        }

        public void a(CharSequence charSequence) {
        }

        public void a(String str, Bundle bundle) {
        }

        public void a(List<MediaSessionCompat.QueueItem> list) {
        }

        public void a(boolean z) {
        }

        public void b() {
        }

        public void b(int i2) {
        }

        public void binderDied() {
            a(8, null, null);
        }

        public void a(int i2, Object obj, Bundle bundle) {
            C0009a aVar = this.f109b;
            if (aVar != null) {
                Message obtainMessage = aVar.obtainMessage(i2, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }
    }

    private static class b extends k.a {

        /* renamed from: a  reason: collision with root package name */
        public final MediaControllerCompat f115a;

        public b(MediaControllerCompat mediaControllerCompat) {
            this.f115a = mediaControllerCompat;
        }

        public MediaControllerCompat a() {
            return this.f115a;
        }
    }

    interface c {
        h a();

        void a(a aVar);

        void a(a aVar, Handler handler);

        boolean a(KeyEvent keyEvent);

        PlaybackStateCompat b();

        MediaMetadataCompat c();
    }

    static class d extends MediaControllerImplApi21 {
        public d(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }

        public h a() {
            Object d2 = a.a.b.b.a.c.d(this.f102a);
            if (d2 != null) {
                return new j(d2);
            }
            return null;
        }
    }

    static class e extends d {
        public e(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }

        public h a() {
            Object d2 = a.a.b.b.a.c.d(this.f102a);
            if (d2 != null) {
                return new k(d2);
            }
            return null;
        }
    }

    static class f implements c {

        /* renamed from: a  reason: collision with root package name */
        public a.a.b.b.a.b f116a;

        /* renamed from: b  reason: collision with root package name */
        public h f117b;

        public f(MediaSessionCompat.Token token) {
            this.f116a = b.a.a((IBinder) token.c());
        }

        public void a(a aVar, Handler handler) {
            if (aVar != null) {
                try {
                    this.f116a.asBinder().linkToDeath(aVar, 0);
                    this.f116a.a((a.a.b.b.a.a) aVar.f108a);
                    aVar.a(13, null, null);
                } catch (RemoteException e2) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e2);
                    aVar.a(8, null, null);
                }
            } else {
                throw new IllegalArgumentException("callback may not be null.");
            }
        }

        public PlaybackStateCompat b() {
            try {
                return this.f116a.b();
            } catch (RemoteException e2) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e2);
                return null;
            }
        }

        public MediaMetadataCompat c() {
            try {
                return this.f116a.c();
            } catch (RemoteException e2) {
                Log.e("MediaControllerCompat", "Dead object in getMetadata.", e2);
                return null;
            }
        }

        public void a(a aVar) {
            if (aVar != null) {
                try {
                    this.f116a.b((a.a.b.b.a.a) aVar.f108a);
                    this.f116a.asBinder().unlinkToDeath(aVar, 0);
                } catch (RemoteException e2) {
                    Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e2);
                }
            } else {
                throw new IllegalArgumentException("callback may not be null.");
            }
        }

        public boolean a(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f116a.a(keyEvent);
                } catch (RemoteException e2) {
                    Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", e2);
                }
                return false;
            }
            throw new IllegalArgumentException("event may not be null.");
        }

        public h a() {
            if (this.f117b == null) {
                this.f117b = new l(this.f116a);
            }
            return this.f117b;
        }
    }

    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f118a;

        /* renamed from: b  reason: collision with root package name */
        public final int f119b;

        /* renamed from: c  reason: collision with root package name */
        public final int f120c;

        /* renamed from: d  reason: collision with root package name */
        public final int f121d;

        /* renamed from: e  reason: collision with root package name */
        public final int f122e;

        public g(int i2, int i3, int i4, int i5, int i6) {
            this.f118a = i2;
            this.f119b = i3;
            this.f120c = i4;
            this.f121d = i5;
            this.f122e = i6;
        }
    }

    public static abstract class h {
        public abstract void a();

        public abstract void b();

        public abstract void c();

        public abstract void d();
    }

    static class i extends h {

        /* renamed from: a  reason: collision with root package name */
        public final Object f123a;

        public i(Object obj) {
            this.f123a = obj;
        }

        public void a() {
            c.d.a(this.f123a);
        }

        public void b() {
            c.d.b(this.f123a);
        }

        public void c() {
            c.d.c(this.f123a);
        }

        public void d() {
            c.d.d(this.f123a);
        }
    }

    static class j extends i {
        public j(Object obj) {
            super(obj);
        }
    }

    static class k extends j {
        public k(Object obj) {
            super(obj);
        }
    }

    static class l extends h {

        /* renamed from: a  reason: collision with root package name */
        public a.a.b.b.a.b f124a;

        public l(a.a.b.b.a.b bVar) {
            this.f124a = bVar;
        }

        public void a() {
            try {
                this.f124a.pause();
            } catch (RemoteException e2) {
                Log.e("MediaControllerCompat", "Dead object in pause.", e2);
            }
        }

        public void b() {
            try {
                this.f124a.f();
            } catch (RemoteException e2) {
                Log.e("MediaControllerCompat", "Dead object in play.", e2);
            }
        }

        public void c() {
            try {
                this.f124a.next();
            } catch (RemoteException e2) {
                Log.e("MediaControllerCompat", "Dead object in skipToNext.", e2);
            }
        }

        public void d() {
            try {
                this.f124a.previous();
            } catch (RemoteException e2) {
                Log.e("MediaControllerCompat", "Dead object in skipToPrevious.", e2);
            }
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        c mediaControllerImplApi21;
        if (mediaSessionCompat != null) {
            this.f100b = mediaSessionCompat.b();
            f fVar = null;
            try {
                if (Build.VERSION.SDK_INT >= 24) {
                    mediaControllerImplApi21 = new e(context, this.f100b);
                } else if (Build.VERSION.SDK_INT >= 23) {
                    mediaControllerImplApi21 = new d(context, this.f100b);
                } else if (Build.VERSION.SDK_INT >= 21) {
                    mediaControllerImplApi21 = new MediaControllerImplApi21(context, this.f100b);
                } else {
                    fVar = new f(this.f100b);
                    this.f99a = fVar;
                    return;
                }
                fVar = mediaControllerImplApi21;
            } catch (RemoteException e2) {
                Log.w("MediaControllerCompat", "Failed to create MediaControllerImpl.", e2);
            }
            this.f99a = fVar;
            return;
        }
        throw new IllegalArgumentException("session must not be null");
    }

    public static void a(Activity activity, MediaControllerCompat mediaControllerCompat) {
        if (activity instanceof b.i.a.k) {
            ((b.i.a.k) activity).a((k.a) new b(mediaControllerCompat));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Object obj = null;
            if (mediaControllerCompat != null) {
                obj = a.a.b.b.a.c.a((Context) activity, mediaControllerCompat.c().c());
            }
            a.a.b.b.a.c.a(activity, obj);
        }
    }

    public PlaybackStateCompat b() {
        return this.f99a.b();
    }

    public MediaSessionCompat.Token c() {
        return this.f100b;
    }

    public h d() {
        return this.f99a.a();
    }

    public void b(a aVar) {
        if (aVar != null) {
            try {
                this.f101c.remove(aVar);
                this.f99a.a(aVar);
            } finally {
                aVar.a((Handler) null);
            }
        } else {
            throw new IllegalArgumentException("callback must not be null");
        }
    }

    public static MediaControllerCompat a(Activity activity) {
        MediaControllerCompat mediaControllerCompat = null;
        if (activity instanceof b.i.a.k) {
            b bVar = (b) ((b.i.a.k) activity).a(b.class);
            if (bVar != null) {
                mediaControllerCompat = bVar.a();
            }
            return mediaControllerCompat;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Object a2 = a.a.b.b.a.c.a(activity);
            if (a2 == null) {
                return null;
            }
            try {
                return new MediaControllerCompat((Context) activity, MediaSessionCompat.Token.a(a.a.b.b.a.c.c(a2)));
            } catch (RemoteException e2) {
                Log.e("MediaControllerCompat", "Dead object in getMediaController.", e2);
            }
        }
        return null;
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token != null) {
            this.f100b = token;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                this.f99a = new e(context, token);
            } else if (i2 >= 23) {
                this.f99a = new d(context, token);
            } else if (i2 >= 21) {
                this.f99a = new MediaControllerImplApi21(context, token);
            } else {
                this.f99a = new f(token);
            }
        } else {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f99a.a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    public MediaMetadataCompat a() {
        return this.f99a.c();
    }

    public void a(a aVar) {
        a(aVar, (Handler) null);
    }

    public void a(a aVar, Handler handler) {
        if (aVar != null) {
            if (handler == null) {
                handler = new Handler();
            }
            aVar.a(handler);
            this.f99a.a(aVar, handler);
            this.f101c.add(aVar);
            return;
        }
        throw new IllegalArgumentException("callback must not be null");
    }
}
