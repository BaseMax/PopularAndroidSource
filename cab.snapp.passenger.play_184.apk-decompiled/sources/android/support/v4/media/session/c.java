package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.List;

final class c {

    public interface a {
        void onAudioInfoChanged(int i, int i2, int i3, int i4, int i5);

        void onExtrasChanged(Bundle bundle);

        void onMetadataChanged(Object obj);

        void onPlaybackStateChanged(Object obj);

        void onQueueChanged(List<?> list);

        void onQueueTitleChanged(CharSequence charSequence);

        void onSessionDestroyed();

        void onSessionEvent(String str, Bundle bundle);
    }

    static class b<T extends a> extends MediaController.Callback {

        /* renamed from: a  reason: collision with root package name */
        protected final T f120a;

        public b(T t) {
            this.f120a = t;
        }

        public final void onSessionDestroyed() {
            this.f120a.onSessionDestroyed();
        }

        public final void onSessionEvent(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.f120a.onSessionEvent(str, bundle);
        }

        public final void onPlaybackStateChanged(PlaybackState playbackState) {
            this.f120a.onPlaybackStateChanged(playbackState);
        }

        public final void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.f120a.onMetadataChanged(mediaMetadata);
        }

        public final void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.f120a.onQueueChanged(list);
        }

        public final void onQueueTitleChanged(CharSequence charSequence) {
            this.f120a.onQueueTitleChanged(charSequence);
        }

        public final void onExtrasChanged(Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.f120a.onExtrasChanged(bundle);
        }

        public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            this.f120a.onAudioInfoChanged(playbackInfo.getPlaybackType(), C0008c.getLegacyAudioStream(playbackInfo), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }
    }

    /* renamed from: android.support.v4.media.session.c$c  reason: collision with other inner class name */
    public static class C0008c {
        public static int getPlaybackType(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getPlaybackType();
        }

        public static AudioAttributes getAudioAttributes(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getAudioAttributes();
        }

        public static int getLegacyAudioStream(Object obj) {
            AudioAttributes audioAttributes = getAudioAttributes(obj);
            if ((audioAttributes.getFlags() & 1) == 1) {
                return 7;
            }
            if ((audioAttributes.getFlags() & 4) == 4) {
                return 6;
            }
            switch (audioAttributes.getUsage()) {
                case 1:
                case 11:
                case 12:
                case 14:
                    return 3;
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                case 13:
                    return 1;
                default:
                    return 3;
            }
        }

        public static int getVolumeControl(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getVolumeControl();
        }

        public static int getMaxVolume(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getMaxVolume();
        }

        public static int getCurrentVolume(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getCurrentVolume();
        }

        private C0008c() {
        }
    }

    public static class d {
        public static void play(Object obj) {
            ((MediaController.TransportControls) obj).play();
        }

        public static void pause(Object obj) {
            ((MediaController.TransportControls) obj).pause();
        }

        public static void stop(Object obj) {
            ((MediaController.TransportControls) obj).stop();
        }

        public static void seekTo(Object obj, long j) {
            ((MediaController.TransportControls) obj).seekTo(j);
        }

        public static void fastForward(Object obj) {
            ((MediaController.TransportControls) obj).fastForward();
        }

        public static void rewind(Object obj) {
            ((MediaController.TransportControls) obj).rewind();
        }

        public static void skipToNext(Object obj) {
            ((MediaController.TransportControls) obj).skipToNext();
        }

        public static void skipToPrevious(Object obj) {
            ((MediaController.TransportControls) obj).skipToPrevious();
        }

        public static void setRating(Object obj, Object obj2) {
            ((MediaController.TransportControls) obj).setRating((Rating) obj2);
        }

        public static void playFromMediaId(Object obj, String str, Bundle bundle) {
            ((MediaController.TransportControls) obj).playFromMediaId(str, bundle);
        }

        public static void playFromSearch(Object obj, String str, Bundle bundle) {
            ((MediaController.TransportControls) obj).playFromSearch(str, bundle);
        }

        public static void skipToQueueItem(Object obj, long j) {
            ((MediaController.TransportControls) obj).skipToQueueItem(j);
        }

        public static void sendCustomAction(Object obj, String str, Bundle bundle) {
            ((MediaController.TransportControls) obj).sendCustomAction(str, bundle);
        }

        private d() {
        }
    }

    public static Object fromToken(Context context, Object obj) {
        return new MediaController(context, (MediaSession.Token) obj);
    }

    public static Object createCallback(a aVar) {
        return new b(aVar);
    }

    public static void registerCallback(Object obj, Object obj2, Handler handler) {
        ((MediaController) obj).registerCallback((MediaController.Callback) obj2, handler);
    }

    public static void unregisterCallback(Object obj, Object obj2) {
        ((MediaController) obj).unregisterCallback((MediaController.Callback) obj2);
    }

    public static void setMediaController(Activity activity, Object obj) {
        activity.setMediaController((MediaController) obj);
    }

    public static Object getMediaController(Activity activity) {
        return activity.getMediaController();
    }

    public static Object getSessionToken(Object obj) {
        return ((MediaController) obj).getSessionToken();
    }

    public static Object getTransportControls(Object obj) {
        return ((MediaController) obj).getTransportControls();
    }

    public static Object getPlaybackState(Object obj) {
        return ((MediaController) obj).getPlaybackState();
    }

    public static Object getMetadata(Object obj) {
        return ((MediaController) obj).getMetadata();
    }

    public static List<Object> getQueue(Object obj) {
        List<MediaSession.QueueItem> queue = ((MediaController) obj).getQueue();
        if (queue == null) {
            return null;
        }
        return new ArrayList(queue);
    }

    public static CharSequence getQueueTitle(Object obj) {
        return ((MediaController) obj).getQueueTitle();
    }

    public static Bundle getExtras(Object obj) {
        return ((MediaController) obj).getExtras();
    }

    public static int getRatingType(Object obj) {
        return ((MediaController) obj).getRatingType();
    }

    public static long getFlags(Object obj) {
        return ((MediaController) obj).getFlags();
    }

    public static Object getPlaybackInfo(Object obj) {
        return ((MediaController) obj).getPlaybackInfo();
    }

    public static PendingIntent getSessionActivity(Object obj) {
        return ((MediaController) obj).getSessionActivity();
    }

    public static boolean dispatchMediaButtonEvent(Object obj, KeyEvent keyEvent) {
        return ((MediaController) obj).dispatchMediaButtonEvent(keyEvent);
    }

    public static void setVolumeTo(Object obj, int i, int i2) {
        ((MediaController) obj).setVolumeTo(i, i2);
    }

    public static void adjustVolume(Object obj, int i, int i2) {
        ((MediaController) obj).adjustVolume(i, i2);
    }

    public static void sendCommand(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        ((MediaController) obj).sendCommand(str, bundle, resultReceiver);
    }

    public static String getPackageName(Object obj) {
        return ((MediaController) obj).getPackageName();
    }

    private c() {
    }
}
