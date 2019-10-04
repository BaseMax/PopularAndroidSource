package a.a.b.b.a;

import android.app.Activity;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import java.util.List;

/* compiled from: MediaControllerCompatApi21 */
public class c {

    /* compiled from: MediaControllerCompatApi21 */
    public interface a {
        void a();

        void a(int i2, int i3, int i4, int i5, int i6);

        void a(Bundle bundle);

        void a(CharSequence charSequence);

        void a(Object obj);

        void a(String str, Bundle bundle);

        void a(List<?> list);

        void b(Object obj);
    }

    /* compiled from: MediaControllerCompatApi21 */
    static class b<T extends a> extends MediaController.Callback {

        /* renamed from: a  reason: collision with root package name */
        public final T f6a;

        public b(T t) {
            this.f6a = t;
        }

        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            this.f6a.a(playbackInfo.getPlaybackType(), C0005c.b(playbackInfo), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }

        public void onExtrasChanged(Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.f6a.a(bundle);
        }

        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.f6a.a((Object) mediaMetadata);
        }

        public void onPlaybackStateChanged(PlaybackState playbackState) {
            this.f6a.b(playbackState);
        }

        public void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.f6a.a((List<?>) list);
        }

        public void onQueueTitleChanged(CharSequence charSequence) {
            this.f6a.a(charSequence);
        }

        public void onSessionDestroyed() {
            this.f6a.a();
        }

        public void onSessionEvent(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.f6a.a(str, bundle);
        }
    }

    /* renamed from: a.a.b.b.a.c$c  reason: collision with other inner class name */
    /* compiled from: MediaControllerCompatApi21 */
    public static class C0005c {
        public static AudioAttributes a(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getAudioAttributes();
        }

        public static int b(Object obj) {
            return a(a(obj));
        }

        public static int a(AudioAttributes audioAttributes) {
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
    }

    /* compiled from: MediaControllerCompatApi21 */
    public static class d {
        public static void a(Object obj) {
            ((MediaController.TransportControls) obj).pause();
        }

        public static void b(Object obj) {
            ((MediaController.TransportControls) obj).play();
        }

        public static void c(Object obj) {
            ((MediaController.TransportControls) obj).skipToNext();
        }

        public static void d(Object obj) {
            ((MediaController.TransportControls) obj).skipToPrevious();
        }
    }

    public static Object a(Context context, Object obj) {
        return new MediaController(context, (MediaSession.Token) obj);
    }

    public static Object b(Object obj) {
        return ((MediaController) obj).getPlaybackState();
    }

    public static Object c(Object obj) {
        return ((MediaController) obj).getSessionToken();
    }

    public static Object d(Object obj) {
        return ((MediaController) obj).getTransportControls();
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static void a(Object obj, Object obj2, Handler handler) {
        ((MediaController) obj).registerCallback((MediaController.Callback) obj2, handler);
    }

    public static void a(Object obj, Object obj2) {
        ((MediaController) obj).unregisterCallback((MediaController.Callback) obj2);
    }

    public static void a(Activity activity, Object obj) {
        activity.setMediaController((MediaController) obj);
    }

    public static Object a(Activity activity) {
        return activity.getMediaController();
    }

    public static Object a(Object obj) {
        return ((MediaController) obj).getMetadata();
    }

    public static boolean a(Object obj, KeyEvent keyEvent) {
        return ((MediaController) obj).dispatchMediaButtonEvent(keyEvent);
    }

    public static void a(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        ((MediaController) obj).sendCommand(str, bundle, resultReceiver);
    }
}
