package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.VolumeProvider;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.ResultReceiver;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class f {

    interface a {
        void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver);

        void onCustomAction(String str, Bundle bundle);

        void onFastForward();

        boolean onMediaButtonEvent(Intent intent);

        void onPause();

        void onPlay();

        void onPlayFromMediaId(String str, Bundle bundle);

        void onPlayFromSearch(String str, Bundle bundle);

        void onRewind();

        void onSeekTo(long j);

        void onSetRating(Object obj);

        void onSetRating(Object obj, Bundle bundle);

        void onSkipToNext();

        void onSkipToPrevious();

        void onSkipToQueueItem(long j);

        void onStop();
    }

    static class b<T extends a> extends MediaSession.Callback {

        /* renamed from: a  reason: collision with root package name */
        protected final T f121a;

        public b(T t) {
            this.f121a = t;
        }

        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.f121a.onCommand(str, bundle, resultReceiver);
        }

        public boolean onMediaButtonEvent(Intent intent) {
            return this.f121a.onMediaButtonEvent(intent) || super.onMediaButtonEvent(intent);
        }

        public void onPlay() {
            this.f121a.onPlay();
        }

        public void onPlayFromMediaId(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.f121a.onPlayFromMediaId(str, bundle);
        }

        public void onPlayFromSearch(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.f121a.onPlayFromSearch(str, bundle);
        }

        public void onSkipToQueueItem(long j) {
            this.f121a.onSkipToQueueItem(j);
        }

        public void onPause() {
            this.f121a.onPause();
        }

        public void onSkipToNext() {
            this.f121a.onSkipToNext();
        }

        public void onSkipToPrevious() {
            this.f121a.onSkipToPrevious();
        }

        public void onFastForward() {
            this.f121a.onFastForward();
        }

        public void onRewind() {
            this.f121a.onRewind();
        }

        public void onStop() {
            this.f121a.onStop();
        }

        public void onSeekTo(long j) {
            this.f121a.onSeekTo(j);
        }

        public void onSetRating(Rating rating) {
            this.f121a.onSetRating(rating);
        }

        public void onCustomAction(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.f121a.onCustomAction(str, bundle);
        }
    }

    static class c {
        public static Object createItem(Object obj, long j) {
            return new MediaSession.QueueItem((MediaDescription) obj, j);
        }

        public static Object getDescription(Object obj) {
            return ((MediaSession.QueueItem) obj).getDescription();
        }

        public static long getQueueId(Object obj) {
            return ((MediaSession.QueueItem) obj).getQueueId();
        }

        private c() {
        }
    }

    public static Object createSession(Context context, String str) {
        return new MediaSession(context, str);
    }

    public static Object verifySession(Object obj) {
        if (obj instanceof MediaSession) {
            return obj;
        }
        throw new IllegalArgumentException("mediaSession is not a valid MediaSession object");
    }

    public static Object verifyToken(Object obj) {
        if (obj instanceof MediaSession.Token) {
            return obj;
        }
        throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
    }

    public static Object createCallback(a aVar) {
        return new b(aVar);
    }

    public static void setCallback(Object obj, Object obj2, Handler handler) {
        ((MediaSession) obj).setCallback((MediaSession.Callback) obj2, handler);
    }

    public static void setFlags(Object obj, int i) {
        ((MediaSession) obj).setFlags(i);
    }

    public static void setPlaybackToLocal(Object obj, int i) {
        AudioAttributes.Builder builder = new AudioAttributes.Builder();
        builder.setLegacyStreamType(i);
        ((MediaSession) obj).setPlaybackToLocal(builder.build());
    }

    public static void setPlaybackToRemote(Object obj, Object obj2) {
        ((MediaSession) obj).setPlaybackToRemote((VolumeProvider) obj2);
    }

    public static void setActive(Object obj, boolean z) {
        ((MediaSession) obj).setActive(z);
    }

    public static boolean isActive(Object obj) {
        return ((MediaSession) obj).isActive();
    }

    public static void sendSessionEvent(Object obj, String str, Bundle bundle) {
        ((MediaSession) obj).sendSessionEvent(str, bundle);
    }

    public static void release(Object obj) {
        ((MediaSession) obj).release();
    }

    public static Parcelable getSessionToken(Object obj) {
        return ((MediaSession) obj).getSessionToken();
    }

    public static void setPlaybackState(Object obj, Object obj2) {
        ((MediaSession) obj).setPlaybackState((PlaybackState) obj2);
    }

    public static void setMetadata(Object obj, Object obj2) {
        ((MediaSession) obj).setMetadata((MediaMetadata) obj2);
    }

    public static void setSessionActivity(Object obj, PendingIntent pendingIntent) {
        ((MediaSession) obj).setSessionActivity(pendingIntent);
    }

    public static void setMediaButtonReceiver(Object obj, PendingIntent pendingIntent) {
        ((MediaSession) obj).setMediaButtonReceiver(pendingIntent);
    }

    public static void setQueue(Object obj, List<Object> list) {
        if (list == null) {
            ((MediaSession) obj).setQueue(null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((MediaSession.QueueItem) it.next());
        }
        ((MediaSession) obj).setQueue(arrayList);
    }

    public static void setQueueTitle(Object obj, CharSequence charSequence) {
        ((MediaSession) obj).setQueueTitle(charSequence);
    }

    public static void setExtras(Object obj, Bundle bundle) {
        ((MediaSession) obj).setExtras(bundle);
    }

    public static boolean hasCallback(Object obj) {
        try {
            Field declaredField = obj.getClass().getDeclaredField("mCallback");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                if (declaredField.get(obj) != null) {
                    return true;
                }
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        return false;
    }

    private f() {
    }
}