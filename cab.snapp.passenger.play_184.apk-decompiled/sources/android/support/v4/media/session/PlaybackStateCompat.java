package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.media.session.j;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public final class PlaybackStateCompat implements Parcelable {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024;
    public static final long ACTION_PLAY_FROM_SEARCH = 2048;
    public static final long ACTION_PLAY_FROM_URI = 8192;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_PREPARE = 16384;
    public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768;
    public static final long ACTION_PREPARE_FROM_SEARCH = 65536;
    public static final long ACTION_PREPARE_FROM_URI = 131072;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SEEK_TO = 256;
    public static final long ACTION_SET_CAPTIONING_ENABLED = 1048576;
    public static final long ACTION_SET_RATING = 128;
    public static final long ACTION_SET_REPEAT_MODE = 262144;
    public static final long ACTION_SET_SHUFFLE_MODE = 2097152;
    @Deprecated
    public static final long ACTION_SET_SHUFFLE_MODE_ENABLED = 524288;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096;
    public static final long ACTION_STOP = 1;
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() {
        public final PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        public final PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };
    public static final int ERROR_CODE_ACTION_ABORTED = 10;
    public static final int ERROR_CODE_APP_ERROR = 1;
    public static final int ERROR_CODE_AUTHENTICATION_EXPIRED = 3;
    public static final int ERROR_CODE_CONCURRENT_STREAM_LIMIT = 5;
    public static final int ERROR_CODE_CONTENT_ALREADY_PLAYING = 8;
    public static final int ERROR_CODE_END_OF_QUEUE = 11;
    public static final int ERROR_CODE_NOT_AVAILABLE_IN_REGION = 7;
    public static final int ERROR_CODE_NOT_SUPPORTED = 2;
    public static final int ERROR_CODE_PARENTAL_CONTROL_RESTRICTED = 6;
    public static final int ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED = 4;
    public static final int ERROR_CODE_SKIP_LIMIT_REACHED = 9;
    public static final int ERROR_CODE_UNKNOWN_ERROR = 0;
    public static final long PLAYBACK_POSITION_UNKNOWN = -1;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_GROUP = 3;
    public static final int REPEAT_MODE_INVALID = -1;
    public static final int REPEAT_MODE_NONE = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int SHUFFLE_MODE_ALL = 1;
    public static final int SHUFFLE_MODE_GROUP = 2;
    public static final int SHUFFLE_MODE_INVALID = -1;
    public static final int SHUFFLE_MODE_NONE = 0;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;

    /* renamed from: a  reason: collision with root package name */
    final int f112a;

    /* renamed from: b  reason: collision with root package name */
    final long f113b;
    final long c;
    final float d;
    final long e;
    final int f;
    final CharSequence g;
    final long h;
    List<CustomAction> i;
    final long j;
    final Bundle k;
    private Object l;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() {
            public final CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            public final CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final String f114a;

        /* renamed from: b  reason: collision with root package name */
        private final CharSequence f115b;
        private final int c;
        private final Bundle d;
        private Object e;

        public final int describeContents() {
            return 0;
        }

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f114a = str;
            this.f115b = charSequence;
            this.c = i;
            this.d = bundle;
        }

        CustomAction(Parcel parcel) {
            this.f114a = parcel.readString();
            this.f115b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.c = parcel.readInt();
            this.d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f114a);
            TextUtils.writeToParcel(this.f115b, parcel, i);
            parcel.writeInt(this.c);
            parcel.writeBundle(this.d);
        }

        public static CustomAction fromCustomAction(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(j.a.getAction(obj), j.a.getName(obj), j.a.getIcon(obj), j.a.getExtras(obj));
            customAction.e = obj;
            return customAction;
        }

        public final Object getCustomAction() {
            if (this.e != null || Build.VERSION.SDK_INT < 21) {
                return this.e;
            }
            this.e = j.a.newInstance(this.f114a, this.f115b, this.c, this.d);
            return this.e;
        }

        public final String getAction() {
            return this.f114a;
        }

        public final CharSequence getName() {
            return this.f115b;
        }

        public final int getIcon() {
            return this.c;
        }

        public final Bundle getExtras() {
            return this.d;
        }

        public final String toString() {
            return "Action:mName='" + this.f115b + ", mIcon=" + this.c + ", mExtras=" + this.d;
        }
    }

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<CustomAction> f116a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private int f117b;
        private long c;
        private long d;
        private float e;
        private long f;
        private int g;
        private CharSequence h;
        private long i;
        private long j = -1;
        private Bundle k;

        public a() {
        }

        public a(PlaybackStateCompat playbackStateCompat) {
            this.f117b = playbackStateCompat.f112a;
            this.c = playbackStateCompat.f113b;
            this.e = playbackStateCompat.d;
            this.i = playbackStateCompat.h;
            this.d = playbackStateCompat.c;
            this.f = playbackStateCompat.e;
            this.g = playbackStateCompat.f;
            this.h = playbackStateCompat.g;
            if (playbackStateCompat.i != null) {
                this.f116a.addAll(playbackStateCompat.i);
            }
            this.j = playbackStateCompat.j;
            this.k = playbackStateCompat.k;
        }

        public final a setState(int i2, long j2, float f2) {
            return setState(i2, j2, f2, SystemClock.elapsedRealtime());
        }

        public final a setState(int i2, long j2, float f2, long j3) {
            this.f117b = i2;
            this.c = j2;
            this.i = j3;
            this.e = f2;
            return this;
        }

        public final a setBufferedPosition(long j2) {
            this.d = j2;
            return this;
        }

        public final a setActions(long j2) {
            this.f = j2;
            return this;
        }

        public final a addCustomAction(String str, String str2, int i2) {
            return addCustomAction(new CustomAction(str, str2, i2, null));
        }

        public final a addCustomAction(CustomAction customAction) {
            if (customAction != null) {
                this.f116a.add(customAction);
                return this;
            }
            throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackStateCompat.");
        }

        public final a setActiveQueueItemId(long j2) {
            this.j = j2;
            return this;
        }

        public final a setErrorMessage(CharSequence charSequence) {
            this.h = charSequence;
            return this;
        }

        public final a setErrorMessage(int i2, CharSequence charSequence) {
            this.g = i2;
            this.h = charSequence;
            return this;
        }

        public final a setExtras(Bundle bundle) {
            this.k = bundle;
            return this;
        }

        public final PlaybackStateCompat build() {
            PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(this.f117b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.f116a, this.j, this.k);
            return playbackStateCompat;
        }
    }

    public static int toKeyCode(long j2) {
        if (j2 == 4) {
            return 126;
        }
        if (j2 == 2) {
            return 127;
        }
        if (j2 == 32) {
            return 87;
        }
        if (j2 == 16) {
            return 88;
        }
        if (j2 == 1) {
            return 86;
        }
        if (j2 == 64) {
            return 90;
        }
        if (j2 == 8) {
            return 89;
        }
        return j2 == 512 ? 85 : 0;
    }

    public final int describeContents() {
        return 0;
    }

    PlaybackStateCompat(int i2, long j2, long j3, float f2, long j4, int i3, CharSequence charSequence, long j5, List<CustomAction> list, long j6, Bundle bundle) {
        this.f112a = i2;
        this.f113b = j2;
        this.c = j3;
        this.d = f2;
        this.e = j4;
        this.f = i3;
        this.g = charSequence;
        this.h = j5;
        this.i = new ArrayList(list);
        this.j = j6;
        this.k = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f112a = parcel.readInt();
        this.f113b = parcel.readLong();
        this.d = parcel.readFloat();
        this.h = parcel.readLong();
        this.c = parcel.readLong();
        this.e = parcel.readLong();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.j = parcel.readLong();
        this.k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f = parcel.readInt();
    }

    public final String toString() {
        return "PlaybackState {" + "state=" + this.f112a + ", position=" + this.f113b + ", buffered position=" + this.c + ", speed=" + this.d + ", updated=" + this.h + ", actions=" + this.e + ", error code=" + this.f + ", error message=" + this.g + ", custom actions=" + this.i + ", active item id=" + this.j + "}";
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f112a);
        parcel.writeLong(this.f113b);
        parcel.writeFloat(this.d);
        parcel.writeLong(this.h);
        parcel.writeLong(this.c);
        parcel.writeLong(this.e);
        TextUtils.writeToParcel(this.g, parcel, i2);
        parcel.writeTypedList(this.i);
        parcel.writeLong(this.j);
        parcel.writeBundle(this.k);
        parcel.writeInt(this.f);
    }

    public final int getState() {
        return this.f112a;
    }

    public final long getPosition() {
        return this.f113b;
    }

    public final long getLastPositionUpdateTime() {
        return this.h;
    }

    public final long getCurrentPosition(Long l2) {
        return Math.max(0, this.f113b + ((long) (this.d * ((float) (l2 != null ? l2.longValue() : SystemClock.elapsedRealtime() - this.h)))));
    }

    public final long getBufferedPosition() {
        return this.c;
    }

    public final float getPlaybackSpeed() {
        return this.d;
    }

    public final long getActions() {
        return this.e;
    }

    public final List<CustomAction> getCustomActions() {
        return this.i;
    }

    public final int getErrorCode() {
        return this.f;
    }

    public final CharSequence getErrorMessage() {
        return this.g;
    }

    public final long getActiveQueueItemId() {
        return this.j;
    }

    public final Bundle getExtras() {
        return this.k;
    }

    public static PlaybackStateCompat fromPlaybackState(Object obj) {
        ArrayList arrayList;
        Object obj2 = obj;
        Bundle bundle = null;
        if (obj2 == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> customActions = j.getCustomActions(obj);
        if (customActions != null) {
            ArrayList arrayList2 = new ArrayList(customActions.size());
            for (Object fromCustomAction : customActions) {
                arrayList2.add(CustomAction.fromCustomAction(fromCustomAction));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        if (Build.VERSION.SDK_INT >= 22) {
            bundle = k.getExtras(obj);
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(j.getState(obj), j.getPosition(obj), j.getBufferedPosition(obj), j.getPlaybackSpeed(obj), j.getActions(obj), 0, j.getErrorMessage(obj), j.getLastPositionUpdateTime(obj), arrayList, j.getActiveQueueItemId(obj), bundle);
        playbackStateCompat.l = obj2;
        return playbackStateCompat;
    }

    public final Object getPlaybackState() {
        if (this.l == null && Build.VERSION.SDK_INT >= 21) {
            ArrayList arrayList = null;
            List<CustomAction> list = this.i;
            if (list != null) {
                arrayList = new ArrayList(list.size());
                for (CustomAction customAction : this.i) {
                    arrayList.add(customAction.getCustomAction());
                }
            }
            ArrayList arrayList2 = arrayList;
            if (Build.VERSION.SDK_INT >= 22) {
                this.l = k.newInstance(this.f112a, this.f113b, this.c, this.d, this.e, this.g, this.h, arrayList2, this.j, this.k);
            } else {
                this.l = j.newInstance(this.f112a, this.f113b, this.c, this.d, this.e, this.g, this.h, arrayList2, this.j);
            }
        }
        return this.l;
    }
}
