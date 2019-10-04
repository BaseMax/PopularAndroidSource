package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.Rating;
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
import android.support.v4.media.session.b;
import android.support.v4.media.session.f;
import android.support.v4.media.session.h;
import android.support.v4.media.session.i;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaSessionManager;
import androidx.media.VolumeProviderCompat;
import androidx.media.session.MediaButtonReceiver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaSessionCompat {
    public static final String ACTION_ARGUMENT_CAPTIONING_ENABLED = "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED";
    public static final String ACTION_ARGUMENT_EXTRAS = "android.support.v4.media.session.action.ARGUMENT_EXTRAS";
    public static final String ACTION_ARGUMENT_MEDIA_ID = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID";
    public static final String ACTION_ARGUMENT_QUERY = "android.support.v4.media.session.action.ARGUMENT_QUERY";
    public static final String ACTION_ARGUMENT_RATING = "android.support.v4.media.session.action.ARGUMENT_RATING";
    public static final String ACTION_ARGUMENT_REPEAT_MODE = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE";
    public static final String ACTION_ARGUMENT_SHUFFLE_MODE = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE";
    public static final String ACTION_ARGUMENT_URI = "android.support.v4.media.session.action.ARGUMENT_URI";
    public static final String ACTION_FLAG_AS_INAPPROPRIATE = "android.support.v4.media.session.action.FLAG_AS_INAPPROPRIATE";
    public static final String ACTION_FOLLOW = "android.support.v4.media.session.action.FOLLOW";
    public static final String ACTION_PLAY_FROM_URI = "android.support.v4.media.session.action.PLAY_FROM_URI";
    public static final String ACTION_PREPARE = "android.support.v4.media.session.action.PREPARE";
    public static final String ACTION_PREPARE_FROM_MEDIA_ID = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID";
    public static final String ACTION_PREPARE_FROM_SEARCH = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH";
    public static final String ACTION_PREPARE_FROM_URI = "android.support.v4.media.session.action.PREPARE_FROM_URI";
    public static final String ACTION_SET_CAPTIONING_ENABLED = "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED";
    public static final String ACTION_SET_RATING = "android.support.v4.media.session.action.SET_RATING";
    public static final String ACTION_SET_REPEAT_MODE = "android.support.v4.media.session.action.SET_REPEAT_MODE";
    public static final String ACTION_SET_SHUFFLE_MODE = "android.support.v4.media.session.action.SET_SHUFFLE_MODE";
    public static final String ACTION_SKIP_AD = "android.support.v4.media.session.action.SKIP_AD";
    public static final String ACTION_UNFOLLOW = "android.support.v4.media.session.action.UNFOLLOW";
    public static final String ARGUMENT_MEDIA_ATTRIBUTE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE";
    public static final String ARGUMENT_MEDIA_ATTRIBUTE_VALUE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE_VALUE";
    public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
    public static final int FLAG_HANDLES_QUEUE_COMMANDS = 4;
    public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;
    public static final String KEY_EXTRA_BINDER = "android.support.v4.media.session.EXTRA_BINDER";
    public static final String KEY_SESSION_TOKEN2_BUNDLE = "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE";
    public static final String KEY_TOKEN = "android.support.v4.media.session.TOKEN";
    public static final int MEDIA_ATTRIBUTE_ALBUM = 1;
    public static final int MEDIA_ATTRIBUTE_ARTIST = 0;
    public static final int MEDIA_ATTRIBUTE_PLAYLIST = 2;

    /* renamed from: a  reason: collision with root package name */
    static int f87a;

    /* renamed from: b  reason: collision with root package name */
    private final b f88b;
    private final MediaControllerCompat c;
    private final ArrayList<h> d;

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator<QueueItem>() {
            public final QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            public final QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        };
        public static final int UNKNOWN_ID = -1;

        /* renamed from: a  reason: collision with root package name */
        private final MediaDescriptionCompat f92a;

        /* renamed from: b  reason: collision with root package name */
        private final long f93b;
        private Object c;

        public final int describeContents() {
            return 0;
        }

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j) {
            this(null, mediaDescriptionCompat, j);
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            } else if (j != -1) {
                this.f92a = mediaDescriptionCompat;
                this.f93b = j;
                this.c = obj;
            } else {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
        }

        QueueItem(Parcel parcel) {
            this.f92a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f93b = parcel.readLong();
        }

        public final MediaDescriptionCompat getDescription() {
            return this.f92a;
        }

        public final long getQueueId() {
            return this.f93b;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            this.f92a.writeToParcel(parcel, i);
            parcel.writeLong(this.f93b);
        }

        public final Object getQueueItem() {
            if (this.c != null || Build.VERSION.SDK_INT < 21) {
                return this.c;
            }
            this.c = f.c.createItem(this.f92a.getMediaDescription(), this.f93b);
            return this.c;
        }

        public static QueueItem fromQueueItem(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new QueueItem(obj, MediaDescriptionCompat.fromMediaDescription(f.c.getDescription(obj)), f.c.getQueueId(obj));
        }

        public static List<QueueItem> fromQueueItemList(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object fromQueueItem : list) {
                arrayList.add(fromQueueItem(fromQueueItem));
            }
            return arrayList;
        }

        public final String toString() {
            return "MediaSession.QueueItem {Description=" + this.f92a + ", Id=" + this.f93b + " }";
        }
    }

    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator<ResultReceiverWrapper>() {
            public final ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            public final ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        ResultReceiver f94a;

        public final int describeContents() {
            return 0;
        }

        public ResultReceiverWrapper(ResultReceiver resultReceiver) {
            this.f94a = resultReceiver;
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.f94a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        public final void writeToParcel(Parcel parcel, int i) {
            this.f94a.writeToParcel(parcel, i);
        }
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator<Token>() {
            public final Token createFromParcel(Parcel parcel) {
                Object obj;
                if (Build.VERSION.SDK_INT >= 21) {
                    obj = parcel.readParcelable(null);
                } else {
                    obj = parcel.readStrongBinder();
                }
                return new Token(obj);
            }

            public final Token[] newArray(int i) {
                return new Token[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final Object f95a;

        /* renamed from: b  reason: collision with root package name */
        private b f96b;
        private Bundle c;

        public final int describeContents() {
            return 0;
        }

        Token(Object obj) {
            this(obj, null, null);
        }

        Token(Object obj, b bVar) {
            this(obj, bVar, null);
        }

        Token(Object obj, b bVar, Bundle bundle) {
            this.f95a = obj;
            this.f96b = bVar;
            this.c = bundle;
        }

        public static Token fromToken(Object obj) {
            return fromToken(obj, null);
        }

        public static Token fromToken(Object obj, b bVar) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new Token(f.verifyToken(obj), bVar);
        }

        public final void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f95a, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.f95a);
            }
        }

        public final int hashCode() {
            Object obj = this.f95a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f95a;
            if (obj2 == null) {
                return token.f95a == null;
            }
            Object obj3 = token.f95a;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public final Object getToken() {
            return this.f95a;
        }

        public final b getExtraBinder() {
            return this.f96b;
        }

        public final void setExtraBinder(b bVar) {
            this.f96b = bVar;
        }

        public final Bundle getSessionToken2Bundle() {
            return this.c;
        }

        public final void setSessionToken2Bundle(Bundle bundle) {
            this.c = bundle;
        }

        public final Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaSessionCompat.KEY_TOKEN, this);
            b bVar = this.f96b;
            if (bVar != null) {
                BundleCompat.putBinder(bundle, MediaSessionCompat.KEY_EXTRA_BINDER, bVar.asBinder());
            }
            Bundle bundle2 = this.c;
            if (bundle2 != null) {
                bundle.putBundle(MediaSessionCompat.KEY_SESSION_TOKEN2_BUNDLE, bundle2);
            }
            return bundle;
        }

        public static Token fromBundle(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            b asInterface = b.a.asInterface(BundleCompat.getBinder(bundle, MediaSessionCompat.KEY_EXTRA_BINDER));
            Bundle bundle2 = bundle.getBundle(MediaSessionCompat.KEY_SESSION_TOKEN2_BUNDLE);
            Token token = (Token) bundle.getParcelable(MediaSessionCompat.KEY_TOKEN);
            if (token == null) {
                return null;
            }
            return new Token(token.f95a, asInterface, bundle2);
        }
    }

    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        private C0004a f97a = null;

        /* renamed from: b  reason: collision with root package name */
        final Object f98b;
        WeakReference<b> c;
        private boolean d;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$a$a  reason: collision with other inner class name */
        class C0004a extends Handler {
            C0004a(Looper looper) {
                super(looper);
            }

            public final void handleMessage(Message message) {
                if (message.what == 1) {
                    a.this.a((MediaSessionManager.RemoteUserInfo) message.obj);
                }
            }
        }

        class b implements f.a {
            public void onSetRating(Object obj, Bundle bundle) {
            }

            b() {
            }

            /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v1, resolved type: android.support.v4.media.session.MediaSessionCompat$QueueItem} */
            /* JADX WARNING: type inference failed for: r1v0 */
            /* JADX WARNING: type inference failed for: r1v4, types: [android.os.IBinder] */
            /* JADX WARNING: type inference failed for: r1v6 */
            /* JADX WARNING: type inference failed for: r1v7 */
            /* JADX WARNING: Multi-variable type inference failed */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onCommand(java.lang.String r5, android.os.Bundle r6, android.os.ResultReceiver r7) {
                /*
                    r4 = this;
                    java.lang.String r0 = "android.support.v4.media.session.command.GET_EXTRA_BINDER"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c1 }
                    r1 = 0
                    if (r0 == 0) goto L_0x003c
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c1 }
                    java.lang.ref.WeakReference<android.support.v4.media.session.MediaSessionCompat$b> r5 = r5.c     // Catch:{ BadParcelableException -> 0x00c1 }
                    java.lang.Object r5 = r5.get()     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.support.v4.media.session.MediaSessionCompat$e r5 = (android.support.v4.media.session.MediaSessionCompat.e) r5     // Catch:{ BadParcelableException -> 0x00c1 }
                    if (r5 == 0) goto L_0x003b
                    android.os.Bundle r6 = new android.os.Bundle     // Catch:{ BadParcelableException -> 0x00c1 }
                    r6.<init>()     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.support.v4.media.session.MediaSessionCompat$Token r5 = r5.getSessionToken()     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.support.v4.media.session.b r0 = r5.getExtraBinder()     // Catch:{ BadParcelableException -> 0x00c1 }
                    java.lang.String r2 = "android.support.v4.media.session.EXTRA_BINDER"
                    if (r0 != 0) goto L_0x0027
                    goto L_0x002b
                L_0x0027:
                    android.os.IBinder r1 = r0.asBinder()     // Catch:{ BadParcelableException -> 0x00c1 }
                L_0x002b:
                    androidx.core.app.BundleCompat.putBinder(r6, r2, r1)     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.os.Bundle r5 = r5.getSessionToken2Bundle()     // Catch:{ BadParcelableException -> 0x00c1 }
                    java.lang.String r0 = "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"
                    r6.putBundle(r0, r5)     // Catch:{ BadParcelableException -> 0x00c1 }
                    r5 = 0
                    r7.send(r5, r6)     // Catch:{ BadParcelableException -> 0x00c1 }
                L_0x003b:
                    return
                L_0x003c:
                    java.lang.String r0 = "android.support.v4.media.session.command.ADD_QUEUE_ITEM"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c1 }
                    java.lang.String r2 = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"
                    if (r0 == 0) goto L_0x0052
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.os.Parcelable r6 = r6.getParcelable(r2)     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.support.v4.media.MediaDescriptionCompat r6 = (android.support.v4.media.MediaDescriptionCompat) r6     // Catch:{ BadParcelableException -> 0x00c1 }
                    r5.onAddQueueItem(r6)     // Catch:{ BadParcelableException -> 0x00c1 }
                    return
                L_0x0052:
                    java.lang.String r0 = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c1 }
                    java.lang.String r3 = "android.support.v4.media.session.command.ARGUMENT_INDEX"
                    if (r0 == 0) goto L_0x006c
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.os.Parcelable r7 = r6.getParcelable(r2)     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.support.v4.media.MediaDescriptionCompat r7 = (android.support.v4.media.MediaDescriptionCompat) r7     // Catch:{ BadParcelableException -> 0x00c1 }
                    int r6 = r6.getInt(r3)     // Catch:{ BadParcelableException -> 0x00c1 }
                    r5.onAddQueueItem(r7, r6)     // Catch:{ BadParcelableException -> 0x00c1 }
                    return
                L_0x006c:
                    java.lang.String r0 = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c1 }
                    if (r0 == 0) goto L_0x0080
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.os.Parcelable r6 = r6.getParcelable(r2)     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.support.v4.media.MediaDescriptionCompat r6 = (android.support.v4.media.MediaDescriptionCompat) r6     // Catch:{ BadParcelableException -> 0x00c1 }
                    r5.onRemoveQueueItem(r6)     // Catch:{ BadParcelableException -> 0x00c1 }
                    return
                L_0x0080:
                    java.lang.String r0 = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"
                    boolean r0 = r5.equals(r0)     // Catch:{ BadParcelableException -> 0x00c1 }
                    if (r0 == 0) goto L_0x00bc
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c1 }
                    java.lang.ref.WeakReference<android.support.v4.media.session.MediaSessionCompat$b> r5 = r5.c     // Catch:{ BadParcelableException -> 0x00c1 }
                    java.lang.Object r5 = r5.get()     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.support.v4.media.session.MediaSessionCompat$e r5 = (android.support.v4.media.session.MediaSessionCompat.e) r5     // Catch:{ BadParcelableException -> 0x00c1 }
                    if (r5 == 0) goto L_0x00bb
                    java.util.List<android.support.v4.media.session.MediaSessionCompat$QueueItem> r7 = r5.f     // Catch:{ BadParcelableException -> 0x00c1 }
                    if (r7 == 0) goto L_0x00bb
                    r7 = -1
                    int r6 = r6.getInt(r3, r7)     // Catch:{ BadParcelableException -> 0x00c1 }
                    if (r6 < 0) goto L_0x00b0
                    java.util.List<android.support.v4.media.session.MediaSessionCompat$QueueItem> r7 = r5.f     // Catch:{ BadParcelableException -> 0x00c1 }
                    int r7 = r7.size()     // Catch:{ BadParcelableException -> 0x00c1 }
                    if (r6 >= r7) goto L_0x00b0
                    java.util.List<android.support.v4.media.session.MediaSessionCompat$QueueItem> r5 = r5.f     // Catch:{ BadParcelableException -> 0x00c1 }
                    java.lang.Object r5 = r5.get(r6)     // Catch:{ BadParcelableException -> 0x00c1 }
                    r1 = r5
                    android.support.v4.media.session.MediaSessionCompat$QueueItem r1 = (android.support.v4.media.session.MediaSessionCompat.QueueItem) r1     // Catch:{ BadParcelableException -> 0x00c1 }
                L_0x00b0:
                    if (r1 == 0) goto L_0x00bb
                    android.support.v4.media.session.MediaSessionCompat$a r5 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c1 }
                    android.support.v4.media.MediaDescriptionCompat r6 = r1.getDescription()     // Catch:{ BadParcelableException -> 0x00c1 }
                    r5.onRemoveQueueItem(r6)     // Catch:{ BadParcelableException -> 0x00c1 }
                L_0x00bb:
                    return
                L_0x00bc:
                    android.support.v4.media.session.MediaSessionCompat$a r0 = android.support.v4.media.session.MediaSessionCompat.a.this     // Catch:{ BadParcelableException -> 0x00c1 }
                    r0.onCommand(r5, r6, r7)     // Catch:{ BadParcelableException -> 0x00c1 }
                L_0x00c1:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.a.b.onCommand(java.lang.String, android.os.Bundle, android.os.ResultReceiver):void");
            }

            public boolean onMediaButtonEvent(Intent intent) {
                return a.this.onMediaButtonEvent(intent);
            }

            public void onPlay() {
                a.this.onPlay();
            }

            public void onPlayFromMediaId(String str, Bundle bundle) {
                a.this.onPlayFromMediaId(str, bundle);
            }

            public void onPlayFromSearch(String str, Bundle bundle) {
                a.this.onPlayFromSearch(str, bundle);
            }

            public void onSkipToQueueItem(long j) {
                a.this.onSkipToQueueItem(j);
            }

            public void onPause() {
                a.this.onPause();
            }

            public void onSkipToNext() {
                a.this.onSkipToNext();
            }

            public void onSkipToPrevious() {
                a.this.onSkipToPrevious();
            }

            public void onFastForward() {
                a.this.onFastForward();
            }

            public void onRewind() {
                a.this.onRewind();
            }

            public void onStop() {
                a.this.onStop();
            }

            public void onSeekTo(long j) {
                a.this.onSeekTo(j);
            }

            public void onSetRating(Object obj) {
                a.this.onSetRating(RatingCompat.fromRating(obj));
            }

            public void onCustomAction(String str, Bundle bundle) {
                Bundle bundle2 = bundle.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                MediaSessionCompat.ensureClassLoader(bundle2);
                if (str.equals(MediaSessionCompat.ACTION_PLAY_FROM_URI)) {
                    a.this.onPlayFromUri((Uri) bundle.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI), bundle2);
                } else if (str.equals(MediaSessionCompat.ACTION_PREPARE)) {
                    a.this.onPrepare();
                } else if (str.equals(MediaSessionCompat.ACTION_PREPARE_FROM_MEDIA_ID)) {
                    a.this.onPrepareFromMediaId(bundle.getString(MediaSessionCompat.ACTION_ARGUMENT_MEDIA_ID), bundle2);
                } else if (str.equals(MediaSessionCompat.ACTION_PREPARE_FROM_SEARCH)) {
                    a.this.onPrepareFromSearch(bundle.getString(MediaSessionCompat.ACTION_ARGUMENT_QUERY), bundle2);
                } else if (str.equals(MediaSessionCompat.ACTION_PREPARE_FROM_URI)) {
                    a.this.onPrepareFromUri((Uri) bundle.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI), bundle2);
                } else if (str.equals(MediaSessionCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                    a.this.onSetCaptioningEnabled(bundle.getBoolean(MediaSessionCompat.ACTION_ARGUMENT_CAPTIONING_ENABLED));
                } else if (str.equals(MediaSessionCompat.ACTION_SET_REPEAT_MODE)) {
                    a.this.onSetRepeatMode(bundle.getInt(MediaSessionCompat.ACTION_ARGUMENT_REPEAT_MODE));
                } else if (str.equals(MediaSessionCompat.ACTION_SET_SHUFFLE_MODE)) {
                    a.this.onSetShuffleMode(bundle.getInt(MediaSessionCompat.ACTION_ARGUMENT_SHUFFLE_MODE));
                } else if (str.equals(MediaSessionCompat.ACTION_SET_RATING)) {
                    a.this.onSetRating((RatingCompat) bundle.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_RATING), bundle2);
                } else {
                    a.this.onCustomAction(str, bundle);
                }
            }
        }

        class c extends b implements h.a {
            c() {
                super();
            }

            public void onPlayFromUri(Uri uri, Bundle bundle) {
                a.this.onPlayFromUri(uri, bundle);
            }
        }

        class d extends c implements i.a {
            d() {
                super();
            }

            public final void onPrepare() {
                a.this.onPrepare();
            }

            public final void onPrepareFromMediaId(String str, Bundle bundle) {
                a.this.onPrepareFromMediaId(str, bundle);
            }

            public final void onPrepareFromSearch(String str, Bundle bundle) {
                a.this.onPrepareFromSearch(str, bundle);
            }

            public final void onPrepareFromUri(Uri uri, Bundle bundle) {
                a.this.onPrepareFromUri(uri, bundle);
            }
        }

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void onCustomAction(String str, Bundle bundle) {
        }

        public void onFastForward() {
        }

        public void onPause() {
        }

        public void onPlay() {
        }

        public void onPlayFromMediaId(String str, Bundle bundle) {
        }

        public void onPlayFromSearch(String str, Bundle bundle) {
        }

        public void onPlayFromUri(Uri uri, Bundle bundle) {
        }

        public void onPrepare() {
        }

        public void onPrepareFromMediaId(String str, Bundle bundle) {
        }

        public void onPrepareFromSearch(String str, Bundle bundle) {
        }

        public void onPrepareFromUri(Uri uri, Bundle bundle) {
        }

        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        @Deprecated
        public void onRemoveQueueItemAt(int i) {
        }

        public void onRewind() {
        }

        public void onSeekTo(long j) {
        }

        public void onSetCaptioningEnabled(boolean z) {
        }

        public void onSetRating(RatingCompat ratingCompat) {
        }

        public void onSetRating(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void onSetRepeatMode(int i) {
        }

        public void onSetShuffleMode(int i) {
        }

        public void onSkipToNext() {
        }

        public void onSkipToPrevious() {
        }

        public void onSkipToQueueItem(long j) {
        }

        public void onStop() {
        }

        public a() {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f98b = i.createCallback(new d());
            } else if (Build.VERSION.SDK_INT >= 23) {
                this.f98b = h.createCallback(new c());
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f98b = f.createCallback(new b());
            } else {
                this.f98b = null;
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(b bVar, Handler handler) {
            this.c = new WeakReference<>(bVar);
            C0004a aVar = this.f97a;
            if (aVar != null) {
                aVar.removeCallbacksAndMessages(null);
            }
            this.f97a = new C0004a(handler.getLooper());
        }

        public boolean onMediaButtonEvent(Intent intent) {
            long j;
            if (Build.VERSION.SDK_INT >= 27) {
                return false;
            }
            b bVar = (b) this.c.get();
            if (!(bVar == null || this.f97a == null)) {
                KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
                if (keyEvent != null && keyEvent.getAction() == 0) {
                    MediaSessionManager.RemoteUserInfo currentControllerInfo = bVar.getCurrentControllerInfo();
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 79 || keyCode == 85) {
                        if (keyEvent.getRepeatCount() > 0) {
                            a(currentControllerInfo);
                        } else if (this.d) {
                            this.f97a.removeMessages(1);
                            this.d = false;
                            PlaybackStateCompat playbackState = bVar.getPlaybackState();
                            if (playbackState == null) {
                                j = 0;
                            } else {
                                j = playbackState.getActions();
                            }
                            if ((j & 32) != 0) {
                                onSkipToNext();
                            }
                        } else {
                            this.d = true;
                            C0004a aVar = this.f97a;
                            aVar.sendMessageDelayed(aVar.obtainMessage(1, currentControllerInfo), (long) ViewConfiguration.getDoubleTapTimeout());
                        }
                        return true;
                    }
                    a(currentControllerInfo);
                    return false;
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public final void a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            long j;
            if (this.d) {
                boolean z = false;
                this.d = false;
                this.f97a.removeMessages(1);
                b bVar = (b) this.c.get();
                if (bVar != null) {
                    PlaybackStateCompat playbackState = bVar.getPlaybackState();
                    if (playbackState == null) {
                        j = 0;
                    } else {
                        j = playbackState.getActions();
                    }
                    boolean z2 = playbackState != null && playbackState.getState() == 3;
                    boolean z3 = (516 & j) != 0;
                    if ((j & 514) != 0) {
                        z = true;
                    }
                    bVar.setCurrentControllerInfo(remoteUserInfo);
                    if (z2 && z) {
                        onPause();
                    } else if (!z2 && z3) {
                        onPlay();
                    }
                    bVar.setCurrentControllerInfo(null);
                }
            }
        }
    }

    interface b {
        String getCallingPackage();

        MediaSessionManager.RemoteUserInfo getCurrentControllerInfo();

        Object getMediaSession();

        PlaybackStateCompat getPlaybackState();

        Object getRemoteControlClient();

        Token getSessionToken();

        boolean isActive();

        void release();

        void sendSessionEvent(String str, Bundle bundle);

        void setActive(boolean z);

        void setCallback(a aVar, Handler handler);

        void setCaptioningEnabled(boolean z);

        void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo);

        void setExtras(Bundle bundle);

        void setFlags(int i);

        void setMediaButtonReceiver(PendingIntent pendingIntent);

        void setMetadata(MediaMetadataCompat mediaMetadataCompat);

        void setPlaybackState(PlaybackStateCompat playbackStateCompat);

        void setPlaybackToLocal(int i);

        void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat);

        void setQueue(List<QueueItem> list);

        void setQueueTitle(CharSequence charSequence);

        void setRatingType(int i);

        void setRepeatMode(int i);

        void setSessionActivity(PendingIntent pendingIntent);

        void setShuffleMode(int i);
    }

    static class c extends g {
        private static boolean x = true;

        c(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        public void setCallback(a aVar, Handler handler) {
            super.setCallback(aVar, handler);
            if (aVar == null) {
                this.d.setPlaybackPositionUpdateListener(null);
                return;
            }
            this.d.setPlaybackPositionUpdateListener(new RemoteControlClient.OnPlaybackPositionUpdateListener() {
                public final void onPlaybackPositionUpdate(long j) {
                    c.this.a(18, -1, -1, Long.valueOf(j), null);
                }
            });
        }

        /* access modifiers changed from: package-private */
        public final void a(PlaybackStateCompat playbackStateCompat) {
            long position = playbackStateCompat.getPosition();
            float playbackSpeed = playbackStateCompat.getPlaybackSpeed();
            long lastPositionUpdateTime = playbackStateCompat.getLastPositionUpdateTime();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (playbackStateCompat.getState() == 3) {
                long j = 0;
                if (position > 0) {
                    if (lastPositionUpdateTime > 0) {
                        j = elapsedRealtime - lastPositionUpdateTime;
                        if (playbackSpeed > 0.0f && playbackSpeed != 1.0f) {
                            j = (long) (((float) j) * playbackSpeed);
                        }
                    }
                    position += j;
                }
            }
            this.d.setPlaybackState(a(playbackStateCompat.getState()), position, playbackSpeed);
        }

        /* access modifiers changed from: package-private */
        public int a(long j) {
            int a2 = super.a(j);
            return (j & 256) != 0 ? a2 | 256 : a2;
        }

        /* access modifiers changed from: package-private */
        public final void a(PendingIntent pendingIntent, ComponentName componentName) {
            if (x) {
                try {
                    this.c.registerMediaButtonEventReceiver(pendingIntent);
                } catch (NullPointerException unused) {
                    x = false;
                }
            }
            if (!x) {
                super.a(pendingIntent, componentName);
            }
        }

        /* access modifiers changed from: package-private */
        public final void b(PendingIntent pendingIntent, ComponentName componentName) {
            if (x) {
                this.c.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.b(pendingIntent, componentName);
            }
        }
    }

    static class d extends c {
        d(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        public final void setCallback(a aVar, Handler handler) {
            super.setCallback(aVar, handler);
            if (aVar == null) {
                this.d.setMetadataUpdateListener(null);
                return;
            }
            this.d.setMetadataUpdateListener(new RemoteControlClient.OnMetadataUpdateListener() {
                public final void onMetadataUpdate(int i, Object obj) {
                    if (i == 268435457 && (obj instanceof Rating)) {
                        d.this.a(19, -1, -1, RatingCompat.fromRating(obj), null);
                    }
                }
            });
        }

        /* access modifiers changed from: package-private */
        public final int a(long j) {
            int a2 = super.a(j);
            return (j & 128) != 0 ? a2 | 512 : a2;
        }

        /* access modifiers changed from: package-private */
        public final RemoteControlClient.MetadataEditor a(Bundle bundle) {
            RemoteControlClient.MetadataEditor a2 = super.a(bundle);
            if (((this.l == null ? 0 : this.l.getActions()) & 128) != 0) {
                a2.addEditableKey(268435457);
            }
            if (bundle == null) {
                return a2;
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_YEAR)) {
                a2.putLong(8, bundle.getLong(MediaMetadataCompat.METADATA_KEY_YEAR));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_RATING)) {
                a2.putObject(101, bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_RATING));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_USER_RATING)) {
                a2.putObject(268435457, bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_USER_RATING));
            }
            return a2;
        }
    }

    static class e implements b {

        /* renamed from: a  reason: collision with root package name */
        final Object f104a;

        /* renamed from: b  reason: collision with root package name */
        final Token f105b;
        boolean c = false;
        final RemoteCallbackList<a> d = new RemoteCallbackList<>();
        PlaybackStateCompat e;
        List<QueueItem> f;
        MediaMetadataCompat g;
        int h;
        boolean i;
        int j;
        int k;

        class a extends b.a {
            public final List<QueueItem> getQueue() {
                return null;
            }

            public final boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            public final void setShuffleModeEnabledRemoved(boolean z) throws RemoteException {
            }

            a() {
            }

            public final void sendCommand(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            public final boolean sendMediaButton(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            public final void registerCallbackListener(a aVar) {
                if (!e.this.c) {
                    String callingPackage = e.this.getCallingPackage();
                    if (callingPackage == null) {
                        callingPackage = MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER;
                    }
                    e.this.d.register(aVar, new MediaSessionManager.RemoteUserInfo(callingPackage, getCallingPid(), getCallingUid()));
                }
            }

            public final void unregisterCallbackListener(a aVar) {
                e.this.d.unregister(aVar);
            }

            public final String getPackageName() {
                throw new AssertionError();
            }

            public final String getTag() {
                throw new AssertionError();
            }

            public final PendingIntent getLaunchPendingIntent() {
                throw new AssertionError();
            }

            public final long getFlags() {
                throw new AssertionError();
            }

            public final ParcelableVolumeInfo getVolumeAttributes() {
                throw new AssertionError();
            }

            public final void adjustVolume(int i, int i2, String str) {
                throw new AssertionError();
            }

            public final void setVolumeTo(int i, int i2, String str) {
                throw new AssertionError();
            }

            public final void prepare() throws RemoteException {
                throw new AssertionError();
            }

            public final void prepareFromMediaId(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            public final void prepareFromSearch(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            public final void prepareFromUri(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            public final void play() throws RemoteException {
                throw new AssertionError();
            }

            public final void playFromMediaId(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            public final void playFromSearch(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            public final void playFromUri(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            public final void skipToQueueItem(long j) {
                throw new AssertionError();
            }

            public final void pause() throws RemoteException {
                throw new AssertionError();
            }

            public final void stop() throws RemoteException {
                throw new AssertionError();
            }

            public final void next() throws RemoteException {
                throw new AssertionError();
            }

            public final void previous() throws RemoteException {
                throw new AssertionError();
            }

            public final void fastForward() throws RemoteException {
                throw new AssertionError();
            }

            public final void rewind() throws RemoteException {
                throw new AssertionError();
            }

            public final void seekTo(long j) throws RemoteException {
                throw new AssertionError();
            }

            public final void rate(RatingCompat ratingCompat) throws RemoteException {
                throw new AssertionError();
            }

            public final void rateWithExtras(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            public final void setCaptioningEnabled(boolean z) throws RemoteException {
                throw new AssertionError();
            }

            public final void setRepeatMode(int i) throws RemoteException {
                throw new AssertionError();
            }

            public final void setShuffleMode(int i) throws RemoteException {
                throw new AssertionError();
            }

            public final void sendCustomAction(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            public final MediaMetadataCompat getMetadata() {
                throw new AssertionError();
            }

            public final PlaybackStateCompat getPlaybackState() {
                return MediaSessionCompat.a(e.this.e, e.this.g);
            }

            public final void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            public final void addQueueItemAt(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new AssertionError();
            }

            public final void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            public final void removeQueueItemAt(int i) {
                throw new AssertionError();
            }

            public final CharSequence getQueueTitle() {
                throw new AssertionError();
            }

            public final Bundle getExtras() {
                throw new AssertionError();
            }

            public final int getRatingType() {
                return e.this.h;
            }

            public final boolean isCaptioningEnabled() {
                return e.this.i;
            }

            public final int getRepeatMode() {
                return e.this.j;
            }

            public final int getShuffleMode() {
                return e.this.k;
            }

            public final boolean isTransportControlEnabled() {
                throw new AssertionError();
            }
        }

        public MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
            return null;
        }

        public Object getRemoteControlClient() {
            return null;
        }

        public void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        }

        e(Context context, String str, Bundle bundle) {
            this.f104a = f.createSession(context, str);
            this.f105b = new Token(f.getSessionToken(this.f104a), new a(), bundle);
        }

        e(Object obj) {
            this.f104a = f.verifySession(obj);
            this.f105b = new Token(f.getSessionToken(this.f104a), new a());
        }

        public void setCallback(a aVar, Handler handler) {
            f.setCallback(this.f104a, aVar == null ? null : aVar.f98b, handler);
            if (aVar != null) {
                aVar.a(this, handler);
            }
        }

        public void setFlags(int i2) {
            f.setFlags(this.f104a, i2);
        }

        public void setPlaybackToLocal(int i2) {
            f.setPlaybackToLocal(this.f104a, i2);
        }

        public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
            f.setPlaybackToRemote(this.f104a, volumeProviderCompat.getVolumeProvider());
        }

        public void setActive(boolean z) {
            f.setActive(this.f104a, z);
        }

        public boolean isActive() {
            return f.isActive(this.f104a);
        }

        public void sendSessionEvent(String str, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 23) {
                for (int beginBroadcast = this.d.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.d.getBroadcastItem(beginBroadcast).onEvent(str, bundle);
                    } catch (RemoteException unused) {
                    }
                }
                this.d.finishBroadcast();
            }
            f.sendSessionEvent(this.f104a, str, bundle);
        }

        public void release() {
            this.c = true;
            f.release(this.f104a);
        }

        public Token getSessionToken() {
            return this.f105b;
        }

        public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
            Object obj;
            this.e = playbackStateCompat;
            for (int beginBroadcast = this.d.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.d.getBroadcastItem(beginBroadcast).onPlaybackStateChanged(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.d.finishBroadcast();
            Object obj2 = this.f104a;
            if (playbackStateCompat == null) {
                obj = null;
            } else {
                obj = playbackStateCompat.getPlaybackState();
            }
            f.setPlaybackState(obj2, obj);
        }

        public PlaybackStateCompat getPlaybackState() {
            return this.e;
        }

        public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
            Object obj;
            this.g = mediaMetadataCompat;
            Object obj2 = this.f104a;
            if (mediaMetadataCompat == null) {
                obj = null;
            } else {
                obj = mediaMetadataCompat.getMediaMetadata();
            }
            f.setMetadata(obj2, obj);
        }

        public void setSessionActivity(PendingIntent pendingIntent) {
            f.setSessionActivity(this.f104a, pendingIntent);
        }

        public void setMediaButtonReceiver(PendingIntent pendingIntent) {
            f.setMediaButtonReceiver(this.f104a, pendingIntent);
        }

        public void setQueue(List<QueueItem> list) {
            ArrayList arrayList;
            this.f = list;
            if (list != null) {
                arrayList = new ArrayList();
                for (QueueItem queueItem : list) {
                    arrayList.add(queueItem.getQueueItem());
                }
            } else {
                arrayList = null;
            }
            f.setQueue(this.f104a, arrayList);
        }

        public void setQueueTitle(CharSequence charSequence) {
            f.setQueueTitle(this.f104a, charSequence);
        }

        public void setRatingType(int i2) {
            if (Build.VERSION.SDK_INT < 22) {
                this.h = i2;
            } else {
                g.setRatingType(this.f104a, i2);
            }
        }

        public void setCaptioningEnabled(boolean z) {
            if (this.i != z) {
                this.i = z;
                for (int beginBroadcast = this.d.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.d.getBroadcastItem(beginBroadcast).onCaptioningEnabledChanged(z);
                    } catch (RemoteException unused) {
                    }
                }
                this.d.finishBroadcast();
            }
        }

        public void setRepeatMode(int i2) {
            if (this.j != i2) {
                this.j = i2;
                for (int beginBroadcast = this.d.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.d.getBroadcastItem(beginBroadcast).onRepeatModeChanged(i2);
                    } catch (RemoteException unused) {
                    }
                }
                this.d.finishBroadcast();
            }
        }

        public void setShuffleMode(int i2) {
            if (this.k != i2) {
                this.k = i2;
                for (int beginBroadcast = this.d.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.d.getBroadcastItem(beginBroadcast).onShuffleModeChanged(i2);
                    } catch (RemoteException unused) {
                    }
                }
                this.d.finishBroadcast();
            }
        }

        public void setExtras(Bundle bundle) {
            f.setExtras(this.f104a, bundle);
        }

        public Object getMediaSession() {
            return this.f104a;
        }

        public String getCallingPackage() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            return i.getCallingPackage(this.f104a);
        }
    }

    static class f extends e {
        public final void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        }

        f(Context context, String str, Bundle bundle) {
            super(context, str, bundle);
        }

        public final MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
            return new MediaSessionManager.RemoteUserInfo(((MediaSession) this.f104a).getCurrentControllerInfo());
        }
    }

    static class g implements b {
        private final b A;
        private final Token B;
        private c C;
        private boolean D = false;
        private boolean E = false;
        private MediaSessionManager.RemoteUserInfo F;
        private VolumeProviderCompat.Callback G = new VolumeProviderCompat.Callback() {
            public final void onVolumeChanged(VolumeProviderCompat volumeProviderCompat) {
                if (g.this.w == volumeProviderCompat) {
                    ParcelableVolumeInfo parcelableVolumeInfo = new ParcelableVolumeInfo(g.this.u, g.this.v, volumeProviderCompat.getVolumeControl(), volumeProviderCompat.getMaxVolume(), volumeProviderCompat.getCurrentVolume());
                    g.this.a(parcelableVolumeInfo);
                }
            }
        };

        /* renamed from: a  reason: collision with root package name */
        final String f107a;

        /* renamed from: b  reason: collision with root package name */
        final String f108b;
        final AudioManager c;
        final RemoteControlClient d;
        final Object e = new Object();
        final RemoteCallbackList<a> f = new RemoteCallbackList<>();
        boolean g = false;
        boolean h = false;
        volatile a i;
        int j;
        MediaMetadataCompat k;
        PlaybackStateCompat l;
        PendingIntent m;
        List<QueueItem> n;
        CharSequence o;
        int p;
        boolean q;
        int r;
        int s;
        Bundle t;
        int u;
        int v;
        VolumeProviderCompat w;
        private final Context x;
        private final ComponentName y;
        private final PendingIntent z;

        static final class a {
            public final String command;
            public final Bundle extras;
            public final ResultReceiver stub;

            public a(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.command = str;
                this.extras = bundle;
                this.stub = resultReceiver;
            }
        }

        class b extends b.a {
            public final boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            public final void setShuffleModeEnabledRemoved(boolean z) throws RemoteException {
            }

            b() {
            }

            public final void sendCommand(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                a(1, (Object) new a(str, bundle, resultReceiverWrapper.f94a));
            }

            public final boolean sendMediaButton(KeyEvent keyEvent) {
                boolean z = true;
                if ((g.this.j & 1) == 0) {
                    z = false;
                }
                if (z) {
                    a(21, (Object) keyEvent);
                }
                return z;
            }

            public final void registerCallbackListener(a aVar) {
                if (g.this.g) {
                    try {
                        aVar.onSessionDestroyed();
                    } catch (Exception unused) {
                    }
                    return;
                }
                g.this.f.register(aVar, new MediaSessionManager.RemoteUserInfo(MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER, getCallingPid(), getCallingUid()));
            }

            public final void unregisterCallbackListener(a aVar) {
                g.this.f.unregister(aVar);
            }

            public final String getPackageName() {
                return g.this.f107a;
            }

            public final String getTag() {
                return g.this.f108b;
            }

            public final PendingIntent getLaunchPendingIntent() {
                PendingIntent pendingIntent;
                synchronized (g.this.e) {
                    pendingIntent = g.this.m;
                }
                return pendingIntent;
            }

            public final long getFlags() {
                long j;
                synchronized (g.this.e) {
                    j = (long) g.this.j;
                }
                return j;
            }

            public final ParcelableVolumeInfo getVolumeAttributes() {
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                synchronized (g.this.e) {
                    i = g.this.u;
                    i2 = g.this.v;
                    VolumeProviderCompat volumeProviderCompat = g.this.w;
                    if (i == 2) {
                        int volumeControl = volumeProviderCompat.getVolumeControl();
                        int maxVolume = volumeProviderCompat.getMaxVolume();
                        i3 = volumeProviderCompat.getCurrentVolume();
                        i4 = maxVolume;
                        i5 = volumeControl;
                    } else {
                        i4 = g.this.c.getStreamMaxVolume(i2);
                        i3 = g.this.c.getStreamVolume(i2);
                        i5 = 2;
                    }
                }
                ParcelableVolumeInfo parcelableVolumeInfo = new ParcelableVolumeInfo(i, i2, i5, i4, i3);
                return parcelableVolumeInfo;
            }

            public final void adjustVolume(int i, int i2, String str) {
                g.this.a(i, i2);
            }

            public final void setVolumeTo(int i, int i2, String str) {
                g.this.b(i, i2);
            }

            public final void prepare() throws RemoteException {
                a(3);
            }

            public final void prepareFromMediaId(String str, Bundle bundle) throws RemoteException {
                a(4, str, bundle);
            }

            public final void prepareFromSearch(String str, Bundle bundle) throws RemoteException {
                a(5, str, bundle);
            }

            public final void prepareFromUri(Uri uri, Bundle bundle) throws RemoteException {
                a(6, uri, bundle);
            }

            public final void play() throws RemoteException {
                a(7);
            }

            public final void playFromMediaId(String str, Bundle bundle) throws RemoteException {
                a(8, str, bundle);
            }

            public final void playFromSearch(String str, Bundle bundle) throws RemoteException {
                a(9, str, bundle);
            }

            public final void playFromUri(Uri uri, Bundle bundle) throws RemoteException {
                a(10, uri, bundle);
            }

            public final void skipToQueueItem(long j) {
                a(11, (Object) Long.valueOf(j));
            }

            public final void pause() throws RemoteException {
                a(12);
            }

            public final void stop() throws RemoteException {
                a(13);
            }

            public final void next() throws RemoteException {
                a(14);
            }

            public final void previous() throws RemoteException {
                a(15);
            }

            public final void fastForward() throws RemoteException {
                a(16);
            }

            public final void rewind() throws RemoteException {
                a(17);
            }

            public final void seekTo(long j) throws RemoteException {
                a(18, (Object) Long.valueOf(j));
            }

            public final void rate(RatingCompat ratingCompat) throws RemoteException {
                a(19, (Object) ratingCompat);
            }

            public final void rateWithExtras(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                a(31, ratingCompat, bundle);
            }

            public final void setCaptioningEnabled(boolean z) throws RemoteException {
                a(29, (Object) Boolean.valueOf(z));
            }

            public final void setRepeatMode(int i) throws RemoteException {
                a(23, i);
            }

            public final void setShuffleMode(int i) throws RemoteException {
                a(30, i);
            }

            public final void sendCustomAction(String str, Bundle bundle) throws RemoteException {
                a(20, str, bundle);
            }

            public final MediaMetadataCompat getMetadata() {
                return g.this.k;
            }

            public final PlaybackStateCompat getPlaybackState() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (g.this.e) {
                    playbackStateCompat = g.this.l;
                    mediaMetadataCompat = g.this.k;
                }
                return MediaSessionCompat.a(playbackStateCompat, mediaMetadataCompat);
            }

            public final List<QueueItem> getQueue() {
                List<QueueItem> list;
                synchronized (g.this.e) {
                    list = g.this.n;
                }
                return list;
            }

            public final void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                a(25, (Object) mediaDescriptionCompat);
            }

            public final void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                a(27, (Object) mediaDescriptionCompat);
            }

            public final void removeQueueItemAt(int i) {
                a(28, i);
            }

            public final CharSequence getQueueTitle() {
                return g.this.o;
            }

            public final Bundle getExtras() {
                Bundle bundle;
                synchronized (g.this.e) {
                    bundle = g.this.t;
                }
                return bundle;
            }

            public final int getRatingType() {
                return g.this.p;
            }

            public final boolean isCaptioningEnabled() {
                return g.this.q;
            }

            public final int getRepeatMode() {
                return g.this.r;
            }

            public final int getShuffleMode() {
                return g.this.s;
            }

            public final boolean isTransportControlEnabled() {
                return (g.this.j & 2) != 0;
            }

            private void a(int i) {
                g.this.a(i, 0, 0, null, null);
            }

            private void a(int i, int i2) {
                g.this.a(i, i2, 0, null, null);
            }

            private void a(int i, Object obj) {
                g.this.a(i, 0, 0, obj, null);
            }

            private void a(int i, Object obj, Bundle bundle) {
                g.this.a(i, 0, 0, obj, bundle);
            }

            public final void addQueueItemAt(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                g.this.a(26, i, 0, mediaDescriptionCompat, null);
            }
        }

        class c extends Handler {
            public c(Looper looper) {
                super(looper);
            }

            public final void handleMessage(Message message) {
                a aVar = g.this.i;
                if (aVar != null) {
                    Bundle data = message.getData();
                    MediaSessionCompat.ensureClassLoader(data);
                    g.this.setCurrentControllerInfo(new MediaSessionManager.RemoteUserInfo(data.getString("data_calling_pkg"), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID)));
                    Bundle bundle = data.getBundle("data_extras");
                    MediaSessionCompat.ensureClassLoader(bundle);
                    try {
                        switch (message.what) {
                            case 1:
                                a aVar2 = (a) message.obj;
                                aVar.onCommand(aVar2.command, aVar2.extras, aVar2.stub);
                                break;
                            case 2:
                                g.this.a(message.arg1, 0);
                                break;
                            case 3:
                                aVar.onPrepare();
                                break;
                            case 4:
                                aVar.onPrepareFromMediaId((String) message.obj, bundle);
                                break;
                            case 5:
                                aVar.onPrepareFromSearch((String) message.obj, bundle);
                                break;
                            case 6:
                                aVar.onPrepareFromUri((Uri) message.obj, bundle);
                                break;
                            case 7:
                                aVar.onPlay();
                                break;
                            case 8:
                                aVar.onPlayFromMediaId((String) message.obj, bundle);
                                break;
                            case 9:
                                aVar.onPlayFromSearch((String) message.obj, bundle);
                                break;
                            case 10:
                                aVar.onPlayFromUri((Uri) message.obj, bundle);
                                break;
                            case 11:
                                aVar.onSkipToQueueItem(((Long) message.obj).longValue());
                                break;
                            case 12:
                                aVar.onPause();
                                break;
                            case 13:
                                aVar.onStop();
                                break;
                            case 14:
                                aVar.onSkipToNext();
                                break;
                            case 15:
                                aVar.onSkipToPrevious();
                                break;
                            case 16:
                                aVar.onFastForward();
                                break;
                            case 17:
                                aVar.onRewind();
                                break;
                            case 18:
                                aVar.onSeekTo(((Long) message.obj).longValue());
                                break;
                            case 19:
                                aVar.onSetRating((RatingCompat) message.obj);
                                break;
                            case 20:
                                aVar.onCustomAction((String) message.obj, bundle);
                                break;
                            case 21:
                                KeyEvent keyEvent = (KeyEvent) message.obj;
                                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                                intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                                if (!aVar.onMediaButtonEvent(intent) && keyEvent != null) {
                                    if (keyEvent.getAction() == 0) {
                                        long actions = g.this.l == null ? 0 : g.this.l.getActions();
                                        int keyCode = keyEvent.getKeyCode();
                                        if (keyCode == 126) {
                                            if ((actions & 4) != 0) {
                                                aVar.onPlay();
                                                break;
                                            }
                                        } else if (keyCode == 127) {
                                            if ((actions & 2) != 0) {
                                                aVar.onPause();
                                                break;
                                            }
                                        } else {
                                            switch (keyCode) {
                                                case 86:
                                                    if ((actions & 1) != 0) {
                                                        aVar.onStop();
                                                        break;
                                                    }
                                                    break;
                                                case 87:
                                                    if ((actions & 32) != 0) {
                                                        aVar.onSkipToNext();
                                                        break;
                                                    }
                                                    break;
                                                case 88:
                                                    if ((actions & 16) != 0) {
                                                        aVar.onSkipToPrevious();
                                                        break;
                                                    }
                                                    break;
                                                case 89:
                                                    if ((actions & 8) != 0) {
                                                        aVar.onRewind();
                                                        break;
                                                    }
                                                    break;
                                                case 90:
                                                    if ((actions & 64) != 0) {
                                                        aVar.onFastForward();
                                                        break;
                                                    }
                                                    break;
                                            }
                                        }
                                    } else {
                                        break;
                                    }
                                }
                                break;
                            case 22:
                                g.this.b(message.arg1, 0);
                                break;
                            case 23:
                                aVar.onSetRepeatMode(message.arg1);
                                break;
                            case 25:
                                aVar.onAddQueueItem((MediaDescriptionCompat) message.obj);
                                break;
                            case 26:
                                aVar.onAddQueueItem((MediaDescriptionCompat) message.obj, message.arg1);
                                break;
                            case 27:
                                aVar.onRemoveQueueItem((MediaDescriptionCompat) message.obj);
                                break;
                            case 28:
                                if (g.this.n != null) {
                                    QueueItem queueItem = (message.arg1 < 0 || message.arg1 >= g.this.n.size()) ? null : g.this.n.get(message.arg1);
                                    if (queueItem != null) {
                                        aVar.onRemoveQueueItem(queueItem.getDescription());
                                        break;
                                    }
                                }
                                break;
                            case 29:
                                aVar.onSetCaptioningEnabled(((Boolean) message.obj).booleanValue());
                                break;
                            case 30:
                                aVar.onSetShuffleMode(message.arg1);
                                break;
                            case 31:
                                aVar.onSetRating((RatingCompat) message.obj, bundle);
                                break;
                        }
                    } finally {
                        g.this.setCurrentControllerInfo(null);
                    }
                }
            }
        }

        static int a(int i2) {
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

        /* access modifiers changed from: package-private */
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

        public String getCallingPackage() {
            return null;
        }

        public Object getMediaSession() {
            return null;
        }

        public Object getRemoteControlClient() {
            return null;
        }

        public void setMediaButtonReceiver(PendingIntent pendingIntent) {
        }

        public g(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            if (componentName != null) {
                this.x = context;
                this.f107a = context.getPackageName();
                this.c = (AudioManager) context.getSystemService("audio");
                this.f108b = str;
                this.y = componentName;
                this.z = pendingIntent;
                this.A = new b();
                this.B = new Token(this.A);
                this.p = 0;
                this.u = 1;
                this.v = 3;
                this.d = new RemoteControlClient(pendingIntent);
                return;
            }
            throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
        }

        public void setCallback(a aVar, Handler handler) {
            this.i = aVar;
            if (aVar != null) {
                if (handler == null) {
                    handler = new Handler();
                }
                synchronized (this.e) {
                    if (this.C != null) {
                        this.C.removeCallbacksAndMessages(null);
                    }
                    this.C = new c(handler.getLooper());
                    this.i.a(this, handler);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(int i2, int i3, int i4, Object obj, Bundle bundle) {
            synchronized (this.e) {
                if (this.C != null) {
                    Message obtainMessage = this.C.obtainMessage(i2, i3, i4, obj);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("data_calling_pkg", MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER);
                    bundle2.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Binder.getCallingPid());
                    bundle2.putInt(MediaBrowserProtocol.DATA_CALLING_UID, Binder.getCallingUid());
                    if (bundle != null) {
                        bundle2.putBundle("data_extras", bundle);
                    }
                    obtainMessage.setData(bundle2);
                    obtainMessage.sendToTarget();
                }
            }
        }

        public void setFlags(int i2) {
            synchronized (this.e) {
                this.j = i2;
            }
            a();
        }

        public void setPlaybackToLocal(int i2) {
            VolumeProviderCompat volumeProviderCompat = this.w;
            if (volumeProviderCompat != null) {
                volumeProviderCompat.setCallback(null);
            }
            this.v = i2;
            this.u = 1;
            int i3 = this.u;
            int i4 = this.v;
            ParcelableVolumeInfo parcelableVolumeInfo = new ParcelableVolumeInfo(i3, i4, 2, this.c.getStreamMaxVolume(i4), this.c.getStreamVolume(this.v));
            a(parcelableVolumeInfo);
        }

        public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
            if (volumeProviderCompat != null) {
                VolumeProviderCompat volumeProviderCompat2 = this.w;
                if (volumeProviderCompat2 != null) {
                    volumeProviderCompat2.setCallback(null);
                }
                this.u = 2;
                this.w = volumeProviderCompat;
                ParcelableVolumeInfo parcelableVolumeInfo = new ParcelableVolumeInfo(this.u, this.v, this.w.getVolumeControl(), this.w.getMaxVolume(), this.w.getCurrentVolume());
                a(parcelableVolumeInfo);
                volumeProviderCompat.setCallback(this.G);
                return;
            }
            throw new IllegalArgumentException("volumeProvider may not be null");
        }

        public void setActive(boolean z2) {
            if (z2 != this.h) {
                this.h = z2;
                if (a()) {
                    setMetadata(this.k);
                    setPlaybackState(this.l);
                }
            }
        }

        public boolean isActive() {
            return this.h;
        }

        public void release() {
            this.h = false;
            this.g = true;
            a();
            for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f.getBroadcastItem(beginBroadcast).onSessionDestroyed();
                } catch (RemoteException unused) {
                }
            }
            this.f.finishBroadcast();
            this.f.kill();
        }

        public Token getSessionToken() {
            return this.B;
        }

        public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.e) {
                this.l = playbackStateCompat;
            }
            for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f.getBroadcastItem(beginBroadcast).onPlaybackStateChanged(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f.finishBroadcast();
            if (this.h) {
                if (playbackStateCompat == null) {
                    this.d.setPlaybackState(0);
                    this.d.setTransportControlFlags(0);
                    return;
                }
                a(playbackStateCompat);
                this.d.setTransportControlFlags(a(playbackStateCompat.getActions()));
            }
        }

        public PlaybackStateCompat getPlaybackState() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.e) {
                playbackStateCompat = this.l;
            }
            return playbackStateCompat;
        }

        /* access modifiers changed from: package-private */
        public void a(PlaybackStateCompat playbackStateCompat) {
            this.d.setPlaybackState(a(playbackStateCompat.getState()));
        }

        public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
            Bundle bundle;
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat = new MediaMetadataCompat.a(mediaMetadataCompat, MediaSessionCompat.f87a).build();
            }
            synchronized (this.e) {
                this.k = mediaMetadataCompat;
            }
            for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f.getBroadcastItem(beginBroadcast).onMetadataChanged(mediaMetadataCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f.finishBroadcast();
            if (this.h) {
                if (mediaMetadataCompat == null) {
                    bundle = null;
                } else {
                    bundle = mediaMetadataCompat.getBundle();
                }
                a(bundle).apply();
            }
        }

        /* access modifiers changed from: package-private */
        public RemoteControlClient.MetadataEditor a(Bundle bundle) {
            RemoteControlClient.MetadataEditor editMetadata = this.d.editMetadata(true);
            if (bundle == null) {
                return editMetadata;
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ART)) {
                Bitmap bitmap = (Bitmap) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_ART);
                if (bitmap != null) {
                    bitmap = bitmap.copy(bitmap.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap);
            } else if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ART)) {
                Bitmap bitmap2 = (Bitmap) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_ALBUM_ART);
                if (bitmap2 != null) {
                    bitmap2 = bitmap2.copy(bitmap2.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap2);
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM)) {
                editMetadata.putString(1, bundle.getString(MediaMetadataCompat.METADATA_KEY_ALBUM));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST)) {
                editMetadata.putString(13, bundle.getString(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
                editMetadata.putString(2, bundle.getString(MediaMetadataCompat.METADATA_KEY_ARTIST));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_AUTHOR)) {
                editMetadata.putString(3, bundle.getString(MediaMetadataCompat.METADATA_KEY_AUTHOR));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_COMPILATION)) {
                editMetadata.putString(15, bundle.getString(MediaMetadataCompat.METADATA_KEY_COMPILATION));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_COMPOSER)) {
                editMetadata.putString(4, bundle.getString(MediaMetadataCompat.METADATA_KEY_COMPOSER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DATE)) {
                editMetadata.putString(5, bundle.getString(MediaMetadataCompat.METADATA_KEY_DATE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER)) {
                editMetadata.putLong(14, bundle.getLong(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                editMetadata.putLong(9, bundle.getLong(MediaMetadataCompat.METADATA_KEY_DURATION));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_GENRE)) {
                editMetadata.putString(6, bundle.getString(MediaMetadataCompat.METADATA_KEY_GENRE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_TITLE)) {
                editMetadata.putString(7, bundle.getString(MediaMetadataCompat.METADATA_KEY_TITLE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER)) {
                editMetadata.putLong(0, bundle.getLong(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_WRITER)) {
                editMetadata.putString(11, bundle.getString(MediaMetadataCompat.METADATA_KEY_WRITER));
            }
            return editMetadata;
        }

        public void setSessionActivity(PendingIntent pendingIntent) {
            synchronized (this.e) {
                this.m = pendingIntent;
            }
        }

        public void setQueue(List<QueueItem> list) {
            this.n = list;
            for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f.getBroadcastItem(beginBroadcast).onQueueChanged(list);
                } catch (RemoteException unused) {
                }
            }
            this.f.finishBroadcast();
        }

        public void setQueueTitle(CharSequence charSequence) {
            this.o = charSequence;
            for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f.getBroadcastItem(beginBroadcast).onQueueTitleChanged(charSequence);
                } catch (RemoteException unused) {
                }
            }
            this.f.finishBroadcast();
        }

        public void setRatingType(int i2) {
            this.p = i2;
        }

        public void setCaptioningEnabled(boolean z2) {
            if (this.q != z2) {
                this.q = z2;
                for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f.getBroadcastItem(beginBroadcast).onCaptioningEnabledChanged(z2);
                    } catch (RemoteException unused) {
                    }
                }
                this.f.finishBroadcast();
            }
        }

        public void setRepeatMode(int i2) {
            if (this.r != i2) {
                this.r = i2;
                for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f.getBroadcastItem(beginBroadcast).onRepeatModeChanged(i2);
                    } catch (RemoteException unused) {
                    }
                }
                this.f.finishBroadcast();
            }
        }

        public void setShuffleMode(int i2) {
            if (this.s != i2) {
                this.s = i2;
                for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f.getBroadcastItem(beginBroadcast).onShuffleModeChanged(i2);
                    } catch (RemoteException unused) {
                    }
                }
                this.f.finishBroadcast();
            }
        }

        public void setExtras(Bundle bundle) {
            this.t = bundle;
            for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f.getBroadcastItem(beginBroadcast).onExtrasChanged(bundle);
                } catch (RemoteException unused) {
                }
            }
            this.f.finishBroadcast();
        }

        public MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.e) {
                remoteUserInfo = this.F;
            }
            return remoteUserInfo;
        }

        public void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.e) {
                this.F = remoteUserInfo;
            }
        }

        private boolean a() {
            if (this.h) {
                if (!this.D && (this.j & 1) != 0) {
                    a(this.z, this.y);
                    this.D = true;
                } else if (this.D && (this.j & 1) == 0) {
                    b(this.z, this.y);
                    this.D = false;
                }
                if (!this.E && (this.j & 2) != 0) {
                    this.c.registerRemoteControlClient(this.d);
                    this.E = true;
                    return true;
                } else if (this.E && (this.j & 2) == 0) {
                    this.d.setPlaybackState(0);
                    this.c.unregisterRemoteControlClient(this.d);
                    this.E = false;
                }
            } else {
                if (this.D) {
                    b(this.z, this.y);
                    this.D = false;
                }
                if (this.E) {
                    this.d.setPlaybackState(0);
                    this.c.unregisterRemoteControlClient(this.d);
                    this.E = false;
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public void a(PendingIntent pendingIntent, ComponentName componentName) {
            this.c.registerMediaButtonEventReceiver(componentName);
        }

        /* access modifiers changed from: package-private */
        public void b(PendingIntent pendingIntent, ComponentName componentName) {
            this.c.unregisterMediaButtonEventReceiver(componentName);
        }

        /* access modifiers changed from: package-private */
        public final void a(int i2, int i3) {
            if (this.u == 2) {
                VolumeProviderCompat volumeProviderCompat = this.w;
                if (volumeProviderCompat != null) {
                    volumeProviderCompat.onAdjustVolume(i2);
                }
            } else {
                this.c.adjustStreamVolume(this.v, i2, i3);
            }
        }

        /* access modifiers changed from: package-private */
        public final void b(int i2, int i3) {
            if (this.u == 2) {
                VolumeProviderCompat volumeProviderCompat = this.w;
                if (volumeProviderCompat != null) {
                    volumeProviderCompat.onSetVolumeTo(i2);
                }
            } else {
                this.c.setStreamVolume(this.v, i2, i3);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(ParcelableVolumeInfo parcelableVolumeInfo) {
            for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f.getBroadcastItem(beginBroadcast).onVolumeInfoChanged(parcelableVolumeInfo);
                } catch (RemoteException unused) {
                }
            }
            this.f.finishBroadcast();
        }

        public void sendSessionEvent(String str, Bundle bundle) {
            for (int beginBroadcast = this.f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f.getBroadcastItem(beginBroadcast).onEvent(str, bundle);
                } catch (RemoteException unused) {
                }
            }
            this.f.finishBroadcast();
        }
    }

    public interface h {
        void onActiveChanged();
    }

    public MediaSessionCompat(Context context, String str) {
        this(context, str, null, null);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    public MediaSessionCompat(Context context, String str, Bundle bundle) {
        this(context, str, null, null, bundle);
    }

    private MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        this.d = new ArrayList<>();
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        } else if (!TextUtils.isEmpty(str)) {
            componentName = componentName == null ? MediaButtonReceiver.getMediaButtonReceiverComponent(context) : componentName;
            if (componentName != null && pendingIntent == null) {
                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                intent.setComponent(componentName);
                pendingIntent = PendingIntent.getBroadcast(context, 0, intent, 0);
            }
            if (Build.VERSION.SDK_INT >= 28) {
                this.f88b = new f(context, str, bundle);
                setCallback(new a() {
                });
                this.f88b.setMediaButtonReceiver(pendingIntent);
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f88b = new e(context, str, bundle);
                setCallback(new a() {
                });
                this.f88b.setMediaButtonReceiver(pendingIntent);
            } else if (Build.VERSION.SDK_INT >= 19) {
                this.f88b = new d(context, str, componentName, pendingIntent);
            } else if (Build.VERSION.SDK_INT >= 18) {
                this.f88b = new c(context, str, componentName, pendingIntent);
            } else {
                this.f88b = new g(context, str, componentName, pendingIntent);
            }
            this.c = new MediaControllerCompat(context, this);
            if (f87a == 0) {
                f87a = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
            }
        } else {
            throw new IllegalArgumentException("tag must not be null or empty");
        }
    }

    private MediaSessionCompat(Context context, b bVar) {
        this.d = new ArrayList<>();
        this.f88b = bVar;
        if (Build.VERSION.SDK_INT >= 21 && !f.hasCallback(bVar.getMediaSession())) {
            setCallback(new a() {
            });
        }
        this.c = new MediaControllerCompat(context, this);
    }

    public void setCallback(a aVar) {
        setCallback(aVar, null);
    }

    public void setCallback(a aVar, Handler handler) {
        b bVar;
        if (aVar == null) {
            handler = null;
            bVar = this.f88b;
            aVar = null;
        } else {
            bVar = this.f88b;
            if (handler == null) {
                handler = new Handler();
            }
        }
        bVar.setCallback(aVar, handler);
    }

    public void setSessionActivity(PendingIntent pendingIntent) {
        this.f88b.setSessionActivity(pendingIntent);
    }

    public void setMediaButtonReceiver(PendingIntent pendingIntent) {
        this.f88b.setMediaButtonReceiver(pendingIntent);
    }

    public void setFlags(int i) {
        this.f88b.setFlags(i);
    }

    public void setPlaybackToLocal(int i) {
        this.f88b.setPlaybackToLocal(i);
    }

    public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
        if (volumeProviderCompat != null) {
            this.f88b.setPlaybackToRemote(volumeProviderCompat);
            return;
        }
        throw new IllegalArgumentException("volumeProvider may not be null!");
    }

    public void setActive(boolean z) {
        this.f88b.setActive(z);
        Iterator<h> it = this.d.iterator();
        while (it.hasNext()) {
            it.next().onActiveChanged();
        }
    }

    public boolean isActive() {
        return this.f88b.isActive();
    }

    public void sendSessionEvent(String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.f88b.sendSessionEvent(str, bundle);
            return;
        }
        throw new IllegalArgumentException("event cannot be null or empty");
    }

    public void release() {
        this.f88b.release();
    }

    public Token getSessionToken() {
        return this.f88b.getSessionToken();
    }

    public MediaControllerCompat getController() {
        return this.c;
    }

    public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
        this.f88b.setPlaybackState(playbackStateCompat);
    }

    public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
        this.f88b.setMetadata(mediaMetadataCompat);
    }

    public void setQueue(List<QueueItem> list) {
        this.f88b.setQueue(list);
    }

    public void setQueueTitle(CharSequence charSequence) {
        this.f88b.setQueueTitle(charSequence);
    }

    public void setRatingType(int i) {
        this.f88b.setRatingType(i);
    }

    public void setCaptioningEnabled(boolean z) {
        this.f88b.setCaptioningEnabled(z);
    }

    public void setRepeatMode(int i) {
        this.f88b.setRepeatMode(i);
    }

    public void setShuffleMode(int i) {
        this.f88b.setShuffleMode(i);
    }

    public void setExtras(Bundle bundle) {
        this.f88b.setExtras(bundle);
    }

    public Object getMediaSession() {
        return this.f88b.getMediaSession();
    }

    public Object getRemoteControlClient() {
        return this.f88b.getRemoteControlClient();
    }

    public final MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
        return this.f88b.getCurrentControllerInfo();
    }

    public String getCallingPackage() {
        return this.f88b.getCallingPackage();
    }

    public void addOnActiveChangeListener(h hVar) {
        if (hVar != null) {
            this.d.add(hVar);
            return;
        }
        throw new IllegalArgumentException("Listener may not be null");
    }

    public void removeOnActiveChangeListener(h hVar) {
        if (hVar != null) {
            this.d.remove(hVar);
            return;
        }
        throw new IllegalArgumentException("Listener may not be null");
    }

    public static MediaSessionCompat fromMediaSession(Context context, Object obj) {
        if (context == null || obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        return new MediaSessionCompat(context, (b) new e(obj));
    }

    public static void ensureClassLoader(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    static PlaybackStateCompat a(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        if (playbackStateCompat == null) {
            return playbackStateCompat;
        }
        long j = -1;
        if (playbackStateCompat.getPosition() == -1) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.getState() != 3 && playbackStateCompat.getState() != 4 && playbackStateCompat.getState() != 5) {
            return playbackStateCompat;
        }
        long lastPositionUpdateTime = playbackStateCompat.getLastPositionUpdateTime();
        if (lastPositionUpdateTime <= 0) {
            return playbackStateCompat;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long playbackSpeed = ((long) (playbackStateCompat.getPlaybackSpeed() * ((float) (elapsedRealtime - lastPositionUpdateTime)))) + playbackStateCompat.getPosition();
        if (mediaMetadataCompat != null && mediaMetadataCompat.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
            j = mediaMetadataCompat.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
        }
        return new PlaybackStateCompat.a(playbackStateCompat).setState(playbackStateCompat.getState(), (j < 0 || playbackSpeed <= j) ? playbackSpeed < 0 ? 0 : playbackSpeed : j, playbackStateCompat.getPlaybackSpeed(), elapsedRealtime).build();
    }
}
