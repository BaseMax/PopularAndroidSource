package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

public final class InputContentInfoCompat {
    private final InputContentInfoCompatImpl mImpl;

    static final class InputContentInfoCompatApi25Impl implements InputContentInfoCompatImpl {
        final InputContentInfo mObject;

        InputContentInfoCompatApi25Impl(Object obj) {
            this.mObject = (InputContentInfo) obj;
        }

        InputContentInfoCompatApi25Impl(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.mObject = new InputContentInfo(uri, clipDescription, uri2);
        }

        public final Uri getContentUri() {
            return this.mObject.getContentUri();
        }

        public final ClipDescription getDescription() {
            return this.mObject.getDescription();
        }

        public final Uri getLinkUri() {
            return this.mObject.getLinkUri();
        }

        public final Object getInputContentInfo() {
            return this.mObject;
        }

        public final void requestPermission() {
            this.mObject.requestPermission();
        }

        public final void releasePermission() {
            this.mObject.releasePermission();
        }
    }

    static final class InputContentInfoCompatBaseImpl implements InputContentInfoCompatImpl {
        private final Uri mContentUri;
        private final ClipDescription mDescription;
        private final Uri mLinkUri;

        public final Object getInputContentInfo() {
            return null;
        }

        public final void releasePermission() {
        }

        public final void requestPermission() {
        }

        InputContentInfoCompatBaseImpl(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.mContentUri = uri;
            this.mDescription = clipDescription;
            this.mLinkUri = uri2;
        }

        public final Uri getContentUri() {
            return this.mContentUri;
        }

        public final ClipDescription getDescription() {
            return this.mDescription;
        }

        public final Uri getLinkUri() {
            return this.mLinkUri;
        }
    }

    interface InputContentInfoCompatImpl {
        Uri getContentUri();

        ClipDescription getDescription();

        Object getInputContentInfo();

        Uri getLinkUri();

        void releasePermission();

        void requestPermission();
    }

    public InputContentInfoCompat(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.mImpl = new InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
        } else {
            this.mImpl = new InputContentInfoCompatBaseImpl(uri, clipDescription, uri2);
        }
    }

    private InputContentInfoCompat(InputContentInfoCompatImpl inputContentInfoCompatImpl) {
        this.mImpl = inputContentInfoCompatImpl;
    }

    public final Uri getContentUri() {
        return this.mImpl.getContentUri();
    }

    public final ClipDescription getDescription() {
        return this.mImpl.getDescription();
    }

    public final Uri getLinkUri() {
        return this.mImpl.getLinkUri();
    }

    public static InputContentInfoCompat wrap(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new InputContentInfoCompat(new InputContentInfoCompatApi25Impl(obj));
        }
        return null;
    }

    public final Object unwrap() {
        return this.mImpl.getInputContentInfo();
    }

    public final void requestPermission() {
        this.mImpl.requestPermission();
    }

    public final void releasePermission() {
        this.mImpl.releasePermission();
    }
}
