package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.b;
import android.support.v4.media.session.c;
import android.support.v4.media.session.d;
import android.support.v4.media.session.e;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.core.app.BundleCompat;
import androidx.core.app.ComponentActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public final class MediaControllerCompat {
    public static final String COMMAND_ADD_QUEUE_ITEM = "android.support.v4.media.session.command.ADD_QUEUE_ITEM";
    public static final String COMMAND_ADD_QUEUE_ITEM_AT = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT";
    public static final String COMMAND_ARGUMENT_INDEX = "android.support.v4.media.session.command.ARGUMENT_INDEX";
    public static final String COMMAND_ARGUMENT_MEDIA_DESCRIPTION = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION";
    public static final String COMMAND_GET_EXTRA_BINDER = "android.support.v4.media.session.command.GET_EXTRA_BINDER";
    public static final String COMMAND_REMOVE_QUEUE_ITEM = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM";
    public static final String COMMAND_REMOVE_QUEUE_ITEM_AT = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT";

    /* renamed from: a  reason: collision with root package name */
    private final c f69a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaSessionCompat.Token f70b;
    private final HashSet<a> c = new HashSet<>();

    static class MediaControllerImplApi21 implements c {

        /* renamed from: a  reason: collision with root package name */
        protected final Object f71a;

        /* renamed from: b  reason: collision with root package name */
        final Object f72b = new Object();
        final List<a> c = new ArrayList();
        HashMap<a, a> d = new HashMap<>();
        final MediaSessionCompat.Token e;

        static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: a  reason: collision with root package name */
            private WeakReference<MediaControllerImplApi21> f73a;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f73a = new WeakReference<>(mediaControllerImplApi21);
            }

            /* access modifiers changed from: protected */
            public void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = (MediaControllerImplApi21) this.f73a.get();
                if (mediaControllerImplApi21 != null && bundle != null) {
                    synchronized (mediaControllerImplApi21.f72b) {
                        mediaControllerImplApi21.e.setExtraBinder(b.a.asInterface(BundleCompat.getBinder(bundle, MediaSessionCompat.KEY_EXTRA_BINDER)));
                        mediaControllerImplApi21.e.setSessionToken2Bundle(bundle.getBundle(MediaSessionCompat.KEY_SESSION_TOKEN2_BUNDLE));
                        if (mediaControllerImplApi21.e.getExtraBinder() != null) {
                            for (a next : mediaControllerImplApi21.c) {
                                a aVar = new a(next);
                                mediaControllerImplApi21.d.put(next, aVar);
                                next.c = aVar;
                                try {
                                    mediaControllerImplApi21.e.getExtraBinder().registerCallbackListener(aVar);
                                    next.a(13, null, null);
                                } catch (RemoteException unused) {
                                }
                            }
                            mediaControllerImplApi21.c.clear();
                        }
                    }
                }
            }
        }

        static class a extends a.c {
            a(a aVar) {
                super(aVar);
            }

            public final void onSessionDestroyed() throws RemoteException {
                throw new AssertionError();
            }

            public final void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            public final void onQueueChanged(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }

            public final void onQueueTitleChanged(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            public final void onExtrasChanged(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            public final void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) throws RemoteException {
            this.e = token;
            this.f71a = c.fromToken(context, this.e.getToken());
            if (this.f71a == null) {
                throw new RemoteException();
            } else if (this.e.getExtraBinder() == null) {
                sendCommand(MediaControllerCompat.COMMAND_GET_EXTRA_BINDER, null, new ExtraBinderRequestResultReceiver(this));
            }
        }

        public final void registerCallback(a aVar, Handler handler) {
            c.registerCallback(this.f71a, aVar.f74a, handler);
            synchronized (this.f72b) {
                if (this.e.getExtraBinder() != null) {
                    a aVar2 = new a(aVar);
                    this.d.put(aVar, aVar2);
                    aVar.c = aVar2;
                    try {
                        this.e.getExtraBinder().registerCallbackListener(aVar2);
                        aVar.a(13, null, null);
                    } catch (RemoteException unused) {
                    }
                } else {
                    aVar.c = null;
                    this.c.add(aVar);
                }
            }
        }

        public final void unregisterCallback(a aVar) {
            c.unregisterCallback(this.f71a, aVar.f74a);
            synchronized (this.f72b) {
                if (this.e.getExtraBinder() != null) {
                    try {
                        a remove = this.d.remove(aVar);
                        if (remove != null) {
                            aVar.c = null;
                            this.e.getExtraBinder().unregisterCallbackListener(remove);
                        }
                    } catch (RemoteException unused) {
                    }
                } else {
                    this.c.remove(aVar);
                }
            }
        }

        public boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
            return c.dispatchMediaButtonEvent(this.f71a, keyEvent);
        }

        public h getTransportControls() {
            Object transportControls = c.getTransportControls(this.f71a);
            if (transportControls != null) {
                return new i(transportControls);
            }
            return null;
        }

        public PlaybackStateCompat getPlaybackState() {
            if (this.e.getExtraBinder() != null) {
                try {
                    return this.e.getExtraBinder().getPlaybackState();
                } catch (RemoteException unused) {
                }
            }
            Object playbackState = c.getPlaybackState(this.f71a);
            if (playbackState != null) {
                return PlaybackStateCompat.fromPlaybackState(playbackState);
            }
            return null;
        }

        public MediaMetadataCompat getMetadata() {
            Object metadata = c.getMetadata(this.f71a);
            if (metadata != null) {
                return MediaMetadataCompat.fromMediaMetadata(metadata);
            }
            return null;
        }

        public List<MediaSessionCompat.QueueItem> getQueue() {
            List<Object> queue = c.getQueue(this.f71a);
            if (queue != null) {
                return MediaSessionCompat.QueueItem.fromQueueItemList(queue);
            }
            return null;
        }

        public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            if ((getFlags() & 4) != 0) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION, mediaDescriptionCompat);
                sendCommand(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM, bundle, null);
                return;
            }
            throw new UnsupportedOperationException("This session doesn't support queue management operations");
        }

        public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if ((getFlags() & 4) != 0) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION, mediaDescriptionCompat);
                bundle.putInt(MediaControllerCompat.COMMAND_ARGUMENT_INDEX, i);
                sendCommand(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM_AT, bundle, null);
                return;
            }
            throw new UnsupportedOperationException("This session doesn't support queue management operations");
        }

        public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            if ((getFlags() & 4) != 0) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION, mediaDescriptionCompat);
                sendCommand(MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM, bundle, null);
                return;
            }
            throw new UnsupportedOperationException("This session doesn't support queue management operations");
        }

        public CharSequence getQueueTitle() {
            return c.getQueueTitle(this.f71a);
        }

        public Bundle getExtras() {
            return c.getExtras(this.f71a);
        }

        public int getRatingType() {
            if (Build.VERSION.SDK_INT < 22 && this.e.getExtraBinder() != null) {
                try {
                    return this.e.getExtraBinder().getRatingType();
                } catch (RemoteException unused) {
                }
            }
            return c.getRatingType(this.f71a);
        }

        public boolean isCaptioningEnabled() {
            if (this.e.getExtraBinder() != null) {
                try {
                    return this.e.getExtraBinder().isCaptioningEnabled();
                } catch (RemoteException unused) {
                }
            }
            return false;
        }

        public int getRepeatMode() {
            if (this.e.getExtraBinder() != null) {
                try {
                    return this.e.getExtraBinder().getRepeatMode();
                } catch (RemoteException unused) {
                }
            }
            return -1;
        }

        public int getShuffleMode() {
            if (this.e.getExtraBinder() != null) {
                try {
                    return this.e.getExtraBinder().getShuffleMode();
                } catch (RemoteException unused) {
                }
            }
            return -1;
        }

        public long getFlags() {
            return c.getFlags(this.f71a);
        }

        public g getPlaybackInfo() {
            Object playbackInfo = c.getPlaybackInfo(this.f71a);
            if (playbackInfo == null) {
                return null;
            }
            g gVar = new g(c.C0008c.getPlaybackType(playbackInfo), c.C0008c.getLegacyAudioStream(playbackInfo), c.C0008c.getVolumeControl(playbackInfo), c.C0008c.getMaxVolume(playbackInfo), c.C0008c.getCurrentVolume(playbackInfo));
            return gVar;
        }

        public PendingIntent getSessionActivity() {
            return c.getSessionActivity(this.f71a);
        }

        public void setVolumeTo(int i, int i2) {
            c.setVolumeTo(this.f71a, i, i2);
        }

        public void adjustVolume(int i, int i2) {
            c.adjustVolume(this.f71a, i, i2);
        }

        public void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            c.sendCommand(this.f71a, str, bundle, resultReceiver);
        }

        public boolean isSessionReady() {
            return this.e.getExtraBinder() != null;
        }

        public String getPackageName() {
            return c.getPackageName(this.f71a);
        }

        public Object getMediaController() {
            return this.f71a;
        }
    }

    public static abstract class a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        final Object f74a;

        /* renamed from: b  reason: collision with root package name */
        C0003a f75b;
        a c;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a  reason: collision with other inner class name */
        class C0003a extends Handler {

            /* renamed from: a  reason: collision with root package name */
            boolean f76a = false;

            C0003a(Looper looper) {
                super(looper);
            }

            public final void handleMessage(Message message) {
                if (this.f76a) {
                    switch (message.what) {
                        case 1:
                            Bundle data = message.getData();
                            MediaSessionCompat.ensureClassLoader(data);
                            a.this.onSessionEvent((String) message.obj, data);
                            break;
                        case 2:
                            a.this.onPlaybackStateChanged((PlaybackStateCompat) message.obj);
                            return;
                        case 3:
                            a.this.onMetadataChanged((MediaMetadataCompat) message.obj);
                            return;
                        case 4:
                            a.this.onAudioInfoChanged((g) message.obj);
                            return;
                        case 5:
                            a.this.onQueueChanged((List) message.obj);
                            return;
                        case 6:
                            a.this.onQueueTitleChanged((CharSequence) message.obj);
                            return;
                        case 7:
                            Bundle bundle = (Bundle) message.obj;
                            MediaSessionCompat.ensureClassLoader(bundle);
                            a.this.onExtrasChanged(bundle);
                            return;
                        case 8:
                            a.this.onSessionDestroyed();
                            return;
                        case 9:
                            a.this.onRepeatModeChanged(((Integer) message.obj).intValue());
                            return;
                        case 11:
                            a.this.onCaptioningEnabledChanged(((Boolean) message.obj).booleanValue());
                            return;
                        case 12:
                            a.this.onShuffleModeChanged(((Integer) message.obj).intValue());
                            return;
                        case 13:
                            a.this.onSessionReady();
                            break;
                    }
                }
            }
        }

        static class b implements c.a {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f78a;

            b(a aVar) {
                this.f78a = new WeakReference<>(aVar);
            }

            public final void onSessionDestroyed() {
                a aVar = (a) this.f78a.get();
                if (aVar != null) {
                    aVar.onSessionDestroyed();
                }
            }

            public final void onSessionEvent(String str, Bundle bundle) {
                a aVar = (a) this.f78a.get();
                if (aVar == null) {
                    return;
                }
                if (aVar.c == null || Build.VERSION.SDK_INT >= 23) {
                    aVar.onSessionEvent(str, bundle);
                }
            }

            public final void onPlaybackStateChanged(Object obj) {
                a aVar = (a) this.f78a.get();
                if (aVar != null && aVar.c == null) {
                    aVar.onPlaybackStateChanged(PlaybackStateCompat.fromPlaybackState(obj));
                }
            }

            public final void onMetadataChanged(Object obj) {
                a aVar = (a) this.f78a.get();
                if (aVar != null) {
                    aVar.onMetadataChanged(MediaMetadataCompat.fromMediaMetadata(obj));
                }
            }

            public final void onQueueChanged(List<?> list) {
                a aVar = (a) this.f78a.get();
                if (aVar != null) {
                    aVar.onQueueChanged(MediaSessionCompat.QueueItem.fromQueueItemList(list));
                }
            }

            public final void onQueueTitleChanged(CharSequence charSequence) {
                a aVar = (a) this.f78a.get();
                if (aVar != null) {
                    aVar.onQueueTitleChanged(charSequence);
                }
            }

            public final void onExtrasChanged(Bundle bundle) {
                a aVar = (a) this.f78a.get();
                if (aVar != null) {
                    aVar.onExtrasChanged(bundle);
                }
            }

            public final void onAudioInfoChanged(int i, int i2, int i3, int i4, int i5) {
                a aVar = (a) this.f78a.get();
                if (aVar != null) {
                    g gVar = new g(i, i2, i3, i4, i5);
                    aVar.onAudioInfoChanged(gVar);
                }
            }
        }

        static class c extends a.C0005a {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f79a;

            public void onShuffleModeChangedRemoved(boolean z) throws RemoteException {
            }

            c(a aVar) {
                this.f79a = new WeakReference<>(aVar);
            }

            public void onEvent(String str, Bundle bundle) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(1, str, bundle);
                }
            }

            public void onSessionDestroyed() throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(8, null, null);
                }
            }

            public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(2, playbackStateCompat, null);
                }
            }

            public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(3, mediaMetadataCompat, null);
                }
            }

            public void onQueueChanged(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(5, list, null);
                }
            }

            public void onQueueTitleChanged(CharSequence charSequence) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(6, charSequence, null);
                }
            }

            public void onCaptioningEnabledChanged(boolean z) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(11, Boolean.valueOf(z), null);
                }
            }

            public void onRepeatModeChanged(int i) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(9, Integer.valueOf(i), null);
                }
            }

            public void onShuffleModeChanged(int i) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(12, Integer.valueOf(i), null);
                }
            }

            public void onExtrasChanged(Bundle bundle) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(7, bundle, null);
                }
            }

            public void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(4, parcelableVolumeInfo != null ? new g(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioStream, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume) : null, null);
                }
            }

            public void onSessionReady() throws RemoteException {
                a aVar = (a) this.f79a.get();
                if (aVar != null) {
                    aVar.a(13, null, null);
                }
            }
        }

        public void onAudioInfoChanged(g gVar) {
        }

        public void onCaptioningEnabledChanged(boolean z) {
        }

        public void onExtrasChanged(Bundle bundle) {
        }

        public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
        }

        public void onQueueChanged(List<MediaSessionCompat.QueueItem> list) {
        }

        public void onQueueTitleChanged(CharSequence charSequence) {
        }

        public void onRepeatModeChanged(int i) {
        }

        public void onSessionDestroyed() {
        }

        public void onSessionEvent(String str, Bundle bundle) {
        }

        public void onSessionReady() {
        }

        public void onShuffleModeChanged(int i) {
        }

        public a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f74a = c.createCallback(new b(this));
                return;
            }
            c cVar = new c(this);
            this.c = cVar;
            this.f74a = cVar;
        }

        public a getIControllerCallback() {
            return this.c;
        }

        public void binderDied() {
            a(8, null, null);
        }

        /* access modifiers changed from: package-private */
        public final void a(Handler handler) {
            if (handler == null) {
                C0003a aVar = this.f75b;
                if (aVar != null) {
                    aVar.f76a = false;
                    aVar.removeCallbacksAndMessages(null);
                    this.f75b = null;
                }
            } else {
                this.f75b = new C0003a(handler.getLooper());
                this.f75b.f76a = true;
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(int i, Object obj, Bundle bundle) {
            C0003a aVar = this.f75b;
            if (aVar != null) {
                Message obtainMessage = aVar.obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }
    }

    static class b extends ComponentActivity.ExtraData {

        /* renamed from: a  reason: collision with root package name */
        final MediaControllerCompat f80a;

        b(MediaControllerCompat mediaControllerCompat) {
            this.f80a = mediaControllerCompat;
        }
    }

    interface c {
        void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat);

        void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i);

        void adjustVolume(int i, int i2);

        boolean dispatchMediaButtonEvent(KeyEvent keyEvent);

        Bundle getExtras();

        long getFlags();

        Object getMediaController();

        MediaMetadataCompat getMetadata();

        String getPackageName();

        g getPlaybackInfo();

        PlaybackStateCompat getPlaybackState();

        List<MediaSessionCompat.QueueItem> getQueue();

        CharSequence getQueueTitle();

        int getRatingType();

        int getRepeatMode();

        PendingIntent getSessionActivity();

        int getShuffleMode();

        h getTransportControls();

        boolean isCaptioningEnabled();

        boolean isSessionReady();

        void registerCallback(a aVar, Handler handler);

        void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat);

        void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver);

        void setVolumeTo(int i, int i2);

        void unregisterCallback(a aVar);
    }

    static class d extends MediaControllerImplApi21 {
        public d(Context context, MediaSessionCompat.Token token) throws RemoteException {
            super(context, token);
        }

        public h getTransportControls() {
            Object transportControls = c.getTransportControls(this.f71a);
            if (transportControls != null) {
                return new j(transportControls);
            }
            return null;
        }
    }

    static class e extends d {
        public e(Context context, MediaSessionCompat.Token token) throws RemoteException {
            super(context, token);
        }

        public final h getTransportControls() {
            Object transportControls = c.getTransportControls(this.f71a);
            if (transportControls != null) {
                return new k(transportControls);
            }
            return null;
        }
    }

    static class f implements c {

        /* renamed from: a  reason: collision with root package name */
        private b f81a;

        /* renamed from: b  reason: collision with root package name */
        private h f82b;

        public final Object getMediaController() {
            return null;
        }

        public final boolean isSessionReady() {
            return true;
        }

        public f(MediaSessionCompat.Token token) {
            this.f81a = b.a.asInterface((IBinder) token.getToken());
        }

        public final void registerCallback(a aVar, Handler handler) {
            if (aVar != null) {
                try {
                    this.f81a.asBinder().linkToDeath(aVar, 0);
                    this.f81a.registerCallbackListener((a) aVar.f74a);
                    aVar.a(13, null, null);
                } catch (RemoteException unused) {
                    aVar.a(8, null, null);
                }
            } else {
                throw new IllegalArgumentException("callback may not be null.");
            }
        }

        public final void unregisterCallback(a aVar) {
            if (aVar != null) {
                try {
                    this.f81a.unregisterCallbackListener((a) aVar.f74a);
                    this.f81a.asBinder().unlinkToDeath(aVar, 0);
                } catch (RemoteException unused) {
                }
            } else {
                throw new IllegalArgumentException("callback may not be null.");
            }
        }

        public final boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f81a.sendMediaButton(keyEvent);
                } catch (RemoteException unused) {
                }
                return false;
            }
            throw new IllegalArgumentException("event may not be null.");
        }

        public final h getTransportControls() {
            if (this.f82b == null) {
                this.f82b = new l(this.f81a);
            }
            return this.f82b;
        }

        public final PlaybackStateCompat getPlaybackState() {
            try {
                return this.f81a.getPlaybackState();
            } catch (RemoteException unused) {
                return null;
            }
        }

        public final MediaMetadataCompat getMetadata() {
            try {
                return this.f81a.getMetadata();
            } catch (RemoteException unused) {
                return null;
            }
        }

        public final List<MediaSessionCompat.QueueItem> getQueue() {
            try {
                return this.f81a.getQueue();
            } catch (RemoteException unused) {
                return null;
            }
        }

        public final void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            try {
                if ((this.f81a.getFlags() & 4) != 0) {
                    this.f81a.addQueueItem(mediaDescriptionCompat);
                    return;
                }
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            } catch (RemoteException unused) {
            }
        }

        public final void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            try {
                if ((this.f81a.getFlags() & 4) != 0) {
                    this.f81a.addQueueItemAt(mediaDescriptionCompat, i);
                    return;
                }
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            } catch (RemoteException unused) {
            }
        }

        public final void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            try {
                if ((this.f81a.getFlags() & 4) != 0) {
                    this.f81a.removeQueueItem(mediaDescriptionCompat);
                    return;
                }
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            } catch (RemoteException unused) {
            }
        }

        public final CharSequence getQueueTitle() {
            try {
                return this.f81a.getQueueTitle();
            } catch (RemoteException unused) {
                return null;
            }
        }

        public final Bundle getExtras() {
            try {
                return this.f81a.getExtras();
            } catch (RemoteException unused) {
                return null;
            }
        }

        public final int getRatingType() {
            try {
                return this.f81a.getRatingType();
            } catch (RemoteException unused) {
                return 0;
            }
        }

        public final boolean isCaptioningEnabled() {
            try {
                return this.f81a.isCaptioningEnabled();
            } catch (RemoteException unused) {
                return false;
            }
        }

        public final int getRepeatMode() {
            try {
                return this.f81a.getRepeatMode();
            } catch (RemoteException unused) {
                return -1;
            }
        }

        public final int getShuffleMode() {
            try {
                return this.f81a.getShuffleMode();
            } catch (RemoteException unused) {
                return -1;
            }
        }

        public final long getFlags() {
            try {
                return this.f81a.getFlags();
            } catch (RemoteException unused) {
                return 0;
            }
        }

        public final g getPlaybackInfo() {
            try {
                ParcelableVolumeInfo volumeAttributes = this.f81a.getVolumeAttributes();
                g gVar = new g(volumeAttributes.volumeType, volumeAttributes.audioStream, volumeAttributes.controlType, volumeAttributes.maxVolume, volumeAttributes.currentVolume);
                return gVar;
            } catch (RemoteException unused) {
                return null;
            }
        }

        public final PendingIntent getSessionActivity() {
            try {
                return this.f81a.getLaunchPendingIntent();
            } catch (RemoteException unused) {
                return null;
            }
        }

        public final void setVolumeTo(int i, int i2) {
            try {
                this.f81a.setVolumeTo(i, i2, null);
            } catch (RemoteException unused) {
            }
        }

        public final void adjustVolume(int i, int i2) {
            try {
                this.f81a.adjustVolume(i, i2, null);
            } catch (RemoteException unused) {
            }
        }

        public final void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            try {
                this.f81a.sendCommand(str, bundle, new MediaSessionCompat.ResultReceiverWrapper(resultReceiver));
            } catch (RemoteException unused) {
            }
        }

        public final String getPackageName() {
            try {
                return this.f81a.getPackageName();
            } catch (RemoteException unused) {
                return null;
            }
        }
    }

    public static final class g {
        public static final int PLAYBACK_TYPE_LOCAL = 1;
        public static final int PLAYBACK_TYPE_REMOTE = 2;

        /* renamed from: a  reason: collision with root package name */
        private final int f83a;

        /* renamed from: b  reason: collision with root package name */
        private final int f84b;
        private final int c;
        private final int d;
        private final int e;

        g(int i, int i2, int i3, int i4, int i5) {
            this.f83a = i;
            this.f84b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
        }

        public final int getPlaybackType() {
            return this.f83a;
        }

        public final int getAudioStream() {
            return this.f84b;
        }

        public final int getVolumeControl() {
            return this.c;
        }

        public final int getMaxVolume() {
            return this.d;
        }

        public final int getCurrentVolume() {
            return this.e;
        }
    }

    public static abstract class h {
        public static final String EXTRA_LEGACY_STREAM_TYPE = "android.media.session.extra.LEGACY_STREAM_TYPE";

        public abstract void fastForward();

        public abstract void pause();

        public abstract void play();

        public abstract void playFromMediaId(String str, Bundle bundle);

        public abstract void playFromSearch(String str, Bundle bundle);

        public abstract void playFromUri(Uri uri, Bundle bundle);

        public abstract void prepare();

        public abstract void prepareFromMediaId(String str, Bundle bundle);

        public abstract void prepareFromSearch(String str, Bundle bundle);

        public abstract void prepareFromUri(Uri uri, Bundle bundle);

        public abstract void rewind();

        public abstract void seekTo(long j);

        public abstract void sendCustomAction(PlaybackStateCompat.CustomAction customAction, Bundle bundle);

        public abstract void sendCustomAction(String str, Bundle bundle);

        public abstract void setCaptioningEnabled(boolean z);

        public abstract void setRating(RatingCompat ratingCompat);

        public abstract void setRating(RatingCompat ratingCompat, Bundle bundle);

        public abstract void setRepeatMode(int i);

        public abstract void setShuffleMode(int i);

        public abstract void skipToNext();

        public abstract void skipToPrevious();

        public abstract void skipToQueueItem(long j);

        public abstract void stop();

        h() {
        }
    }

    static class i extends h {

        /* renamed from: a  reason: collision with root package name */
        protected final Object f85a;

        public i(Object obj) {
            this.f85a = obj;
        }

        public void prepare() {
            sendCustomAction(MediaSessionCompat.ACTION_PREPARE, (Bundle) null);
        }

        public void prepareFromMediaId(String str, Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaSessionCompat.ACTION_ARGUMENT_MEDIA_ID, str);
            bundle2.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, bundle);
            sendCustomAction(MediaSessionCompat.ACTION_PREPARE_FROM_MEDIA_ID, bundle2);
        }

        public void prepareFromSearch(String str, Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaSessionCompat.ACTION_ARGUMENT_QUERY, str);
            bundle2.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, bundle);
            sendCustomAction(MediaSessionCompat.ACTION_PREPARE_FROM_SEARCH, bundle2);
        }

        public void prepareFromUri(Uri uri, Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI, uri);
            bundle2.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, bundle);
            sendCustomAction(MediaSessionCompat.ACTION_PREPARE_FROM_URI, bundle2);
        }

        public void play() {
            c.d.play(this.f85a);
        }

        public void pause() {
            c.d.pause(this.f85a);
        }

        public void stop() {
            c.d.stop(this.f85a);
        }

        public void seekTo(long j) {
            c.d.seekTo(this.f85a, j);
        }

        public void fastForward() {
            c.d.fastForward(this.f85a);
        }

        public void rewind() {
            c.d.rewind(this.f85a);
        }

        public void skipToNext() {
            c.d.skipToNext(this.f85a);
        }

        public void skipToPrevious() {
            c.d.skipToPrevious(this.f85a);
        }

        public void setRating(RatingCompat ratingCompat) {
            c.d.setRating(this.f85a, ratingCompat != null ? ratingCompat.getRating() : null);
        }

        public void setRating(RatingCompat ratingCompat, Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MediaSessionCompat.ACTION_ARGUMENT_RATING, ratingCompat);
            bundle2.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, bundle);
            sendCustomAction(MediaSessionCompat.ACTION_SET_RATING, bundle2);
        }

        public void setCaptioningEnabled(boolean z) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(MediaSessionCompat.ACTION_ARGUMENT_CAPTIONING_ENABLED, z);
            sendCustomAction(MediaSessionCompat.ACTION_SET_CAPTIONING_ENABLED, bundle);
        }

        public void setRepeatMode(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt(MediaSessionCompat.ACTION_ARGUMENT_REPEAT_MODE, i);
            sendCustomAction(MediaSessionCompat.ACTION_SET_REPEAT_MODE, bundle);
        }

        public void setShuffleMode(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt(MediaSessionCompat.ACTION_ARGUMENT_SHUFFLE_MODE, i);
            sendCustomAction(MediaSessionCompat.ACTION_SET_SHUFFLE_MODE, bundle);
        }

        public void playFromMediaId(String str, Bundle bundle) {
            c.d.playFromMediaId(this.f85a, str, bundle);
        }

        public void playFromSearch(String str, Bundle bundle) {
            c.d.playFromSearch(this.f85a, str, bundle);
        }

        public void playFromUri(Uri uri, Bundle bundle) {
            if (uri == null || Uri.EMPTY.equals(uri)) {
                throw new IllegalArgumentException("You must specify a non-empty Uri for playFromUri.");
            }
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI, uri);
            bundle2.putBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS, bundle);
            sendCustomAction(MediaSessionCompat.ACTION_PLAY_FROM_URI, bundle2);
        }

        public void skipToQueueItem(long j) {
            c.d.skipToQueueItem(this.f85a, j);
        }

        public void sendCustomAction(PlaybackStateCompat.CustomAction customAction, Bundle bundle) {
            MediaControllerCompat.a(customAction.getAction(), bundle);
            c.d.sendCustomAction(this.f85a, customAction.getAction(), bundle);
        }

        public void sendCustomAction(String str, Bundle bundle) {
            MediaControllerCompat.a(str, bundle);
            c.d.sendCustomAction(this.f85a, str, bundle);
        }
    }

    static class j extends i {
        public j(Object obj) {
            super(obj);
        }

        public void playFromUri(Uri uri, Bundle bundle) {
            d.a.playFromUri(this.f85a, uri, bundle);
        }
    }

    static class k extends j {
        public k(Object obj) {
            super(obj);
        }

        public final void prepare() {
            e.a.prepare(this.f85a);
        }

        public final void prepareFromMediaId(String str, Bundle bundle) {
            e.a.prepareFromMediaId(this.f85a, str, bundle);
        }

        public final void prepareFromSearch(String str, Bundle bundle) {
            e.a.prepareFromSearch(this.f85a, str, bundle);
        }

        public final void prepareFromUri(Uri uri, Bundle bundle) {
            e.a.prepareFromUri(this.f85a, uri, bundle);
        }
    }

    static class l extends h {

        /* renamed from: a  reason: collision with root package name */
        private b f86a;

        public l(b bVar) {
            this.f86a = bVar;
        }

        public final void prepare() {
            try {
                this.f86a.prepare();
            } catch (RemoteException unused) {
            }
        }

        public final void prepareFromMediaId(String str, Bundle bundle) {
            try {
                this.f86a.prepareFromMediaId(str, bundle);
            } catch (RemoteException unused) {
            }
        }

        public final void prepareFromSearch(String str, Bundle bundle) {
            try {
                this.f86a.prepareFromSearch(str, bundle);
            } catch (RemoteException unused) {
            }
        }

        public final void prepareFromUri(Uri uri, Bundle bundle) {
            try {
                this.f86a.prepareFromUri(uri, bundle);
            } catch (RemoteException unused) {
            }
        }

        public final void play() {
            try {
                this.f86a.play();
            } catch (RemoteException unused) {
            }
        }

        public final void playFromMediaId(String str, Bundle bundle) {
            try {
                this.f86a.playFromMediaId(str, bundle);
            } catch (RemoteException unused) {
            }
        }

        public final void playFromSearch(String str, Bundle bundle) {
            try {
                this.f86a.playFromSearch(str, bundle);
            } catch (RemoteException unused) {
            }
        }

        public final void playFromUri(Uri uri, Bundle bundle) {
            try {
                this.f86a.playFromUri(uri, bundle);
            } catch (RemoteException unused) {
            }
        }

        public final void skipToQueueItem(long j) {
            try {
                this.f86a.skipToQueueItem(j);
            } catch (RemoteException unused) {
            }
        }

        public final void pause() {
            try {
                this.f86a.pause();
            } catch (RemoteException unused) {
            }
        }

        public final void stop() {
            try {
                this.f86a.stop();
            } catch (RemoteException unused) {
            }
        }

        public final void seekTo(long j) {
            try {
                this.f86a.seekTo(j);
            } catch (RemoteException unused) {
            }
        }

        public final void fastForward() {
            try {
                this.f86a.fastForward();
            } catch (RemoteException unused) {
            }
        }

        public final void skipToNext() {
            try {
                this.f86a.next();
            } catch (RemoteException unused) {
            }
        }

        public final void rewind() {
            try {
                this.f86a.rewind();
            } catch (RemoteException unused) {
            }
        }

        public final void skipToPrevious() {
            try {
                this.f86a.previous();
            } catch (RemoteException unused) {
            }
        }

        public final void setRating(RatingCompat ratingCompat) {
            try {
                this.f86a.rate(ratingCompat);
            } catch (RemoteException unused) {
            }
        }

        public final void setRating(RatingCompat ratingCompat, Bundle bundle) {
            try {
                this.f86a.rateWithExtras(ratingCompat, bundle);
            } catch (RemoteException unused) {
            }
        }

        public final void setCaptioningEnabled(boolean z) {
            try {
                this.f86a.setCaptioningEnabled(z);
            } catch (RemoteException unused) {
            }
        }

        public final void setRepeatMode(int i) {
            try {
                this.f86a.setRepeatMode(i);
            } catch (RemoteException unused) {
            }
        }

        public final void setShuffleMode(int i) {
            try {
                this.f86a.setShuffleMode(i);
            } catch (RemoteException unused) {
            }
        }

        public final void sendCustomAction(PlaybackStateCompat.CustomAction customAction, Bundle bundle) {
            sendCustomAction(customAction.getAction(), bundle);
        }

        public final void sendCustomAction(String str, Bundle bundle) {
            MediaControllerCompat.a(str, bundle);
            try {
                this.f86a.sendCustomAction(str, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    public static void setMediaController(Activity activity, MediaControllerCompat mediaControllerCompat) {
        if (activity instanceof ComponentActivity) {
            ((ComponentActivity) activity).putExtraData(new b(mediaControllerCompat));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Object obj = null;
            if (mediaControllerCompat != null) {
                obj = c.fromToken(activity, mediaControllerCompat.getSessionToken().getToken());
            }
            c.setMediaController(activity, obj);
        }
    }

    public static MediaControllerCompat getMediaController(Activity activity) {
        if (activity instanceof ComponentActivity) {
            b bVar = (b) ((ComponentActivity) activity).getExtraData(b.class);
            if (bVar != null) {
                return bVar.f80a;
            }
            return null;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Object mediaController = c.getMediaController(activity);
            if (mediaController == null) {
                return null;
            }
            try {
                return new MediaControllerCompat((Context) activity, MediaSessionCompat.Token.fromToken(c.getSessionToken(mediaController)));
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    static void a(String str, Bundle bundle) {
        if (str != null) {
            char c2 = 65535;
            int hashCode = str.hashCode();
            if (hashCode != -1348483723) {
                if (hashCode == 503011406 && str.equals(MediaSessionCompat.ACTION_UNFOLLOW)) {
                    c2 = 1;
                }
            } else if (str.equals(MediaSessionCompat.ACTION_FOLLOW)) {
                c2 = 0;
            }
            if ((c2 == 0 || c2 == 1) && (bundle == null || !bundle.containsKey(MediaSessionCompat.ARGUMENT_MEDIA_ATTRIBUTE))) {
                throw new IllegalArgumentException("An extra field android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE is required for this action " + str + ".");
            }
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        c cVar;
        if (mediaSessionCompat != null) {
            this.f70b = mediaSessionCompat.getSessionToken();
            try {
                if (Build.VERSION.SDK_INT >= 24) {
                    cVar = new e(context, this.f70b);
                } else if (Build.VERSION.SDK_INT >= 23) {
                    cVar = new d(context, this.f70b);
                } else {
                    cVar = Build.VERSION.SDK_INT >= 21 ? new MediaControllerImplApi21(context, this.f70b) : new f(this.f70b);
                }
            } catch (RemoteException unused) {
                cVar = null;
            }
            this.f69a = cVar;
            return;
        }
        throw new IllegalArgumentException("session must not be null");
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) throws RemoteException {
        if (token != null) {
            this.f70b = token;
            if (Build.VERSION.SDK_INT >= 24) {
                this.f69a = new e(context, token);
            } else if (Build.VERSION.SDK_INT >= 23) {
                this.f69a = new d(context, token);
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f69a = new MediaControllerImplApi21(context, token);
            } else {
                this.f69a = new f(token);
            }
        } else {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
    }

    public final h getTransportControls() {
        return this.f69a.getTransportControls();
    }

    public final boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f69a.dispatchMediaButtonEvent(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    public final PlaybackStateCompat getPlaybackState() {
        return this.f69a.getPlaybackState();
    }

    public final MediaMetadataCompat getMetadata() {
        return this.f69a.getMetadata();
    }

    public final List<MediaSessionCompat.QueueItem> getQueue() {
        return this.f69a.getQueue();
    }

    public final void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        this.f69a.addQueueItem(mediaDescriptionCompat);
    }

    public final void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
        this.f69a.addQueueItem(mediaDescriptionCompat, i2);
    }

    public final void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        this.f69a.removeQueueItem(mediaDescriptionCompat);
    }

    @Deprecated
    public final void removeQueueItemAt(int i2) {
        List<MediaSessionCompat.QueueItem> queue = getQueue();
        if (queue != null && i2 >= 0 && i2 < queue.size()) {
            MediaSessionCompat.QueueItem queueItem = queue.get(i2);
            if (queueItem != null) {
                removeQueueItem(queueItem.getDescription());
            }
        }
    }

    public final CharSequence getQueueTitle() {
        return this.f69a.getQueueTitle();
    }

    public final Bundle getExtras() {
        return this.f69a.getExtras();
    }

    public final int getRatingType() {
        return this.f69a.getRatingType();
    }

    public final boolean isCaptioningEnabled() {
        return this.f69a.isCaptioningEnabled();
    }

    public final int getRepeatMode() {
        return this.f69a.getRepeatMode();
    }

    public final int getShuffleMode() {
        return this.f69a.getShuffleMode();
    }

    public final long getFlags() {
        return this.f69a.getFlags();
    }

    public final g getPlaybackInfo() {
        return this.f69a.getPlaybackInfo();
    }

    public final PendingIntent getSessionActivity() {
        return this.f69a.getSessionActivity();
    }

    public final MediaSessionCompat.Token getSessionToken() {
        return this.f70b;
    }

    public final Bundle getSessionToken2Bundle() {
        return this.f70b.getSessionToken2Bundle();
    }

    public final void setVolumeTo(int i2, int i3) {
        this.f69a.setVolumeTo(i2, i3);
    }

    public final void adjustVolume(int i2, int i3) {
        this.f69a.adjustVolume(i2, i3);
    }

    public final void registerCallback(a aVar) {
        registerCallback(aVar, null);
    }

    public final void registerCallback(a aVar, Handler handler) {
        if (aVar != null) {
            if (handler == null) {
                handler = new Handler();
            }
            aVar.a(handler);
            this.f69a.registerCallback(aVar, handler);
            this.c.add(aVar);
            return;
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    public final void unregisterCallback(a aVar) {
        if (aVar != null) {
            try {
                this.c.remove(aVar);
                this.f69a.unregisterCallback(aVar);
            } finally {
                aVar.a(null);
            }
        } else {
            throw new IllegalArgumentException("callback must not be null");
        }
    }

    public final void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        if (!TextUtils.isEmpty(str)) {
            this.f69a.sendCommand(str, bundle, resultReceiver);
            return;
        }
        throw new IllegalArgumentException("command must neither be null nor empty");
    }

    public final boolean isSessionReady() {
        return this.f69a.isSessionReady();
    }

    public final String getPackageName() {
        return this.f69a.getPackageName();
    }

    public final Object getMediaController() {
        return this.f69a.getMediaController();
    }
}
