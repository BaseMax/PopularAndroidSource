package com.squareup.picasso;

import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import com.google.firebase.analytics.FirebaseAnalytics;

final class f extends y {

    /* renamed from: a  reason: collision with root package name */
    private static final UriMatcher f5273a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f5274b;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f5273a = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f5273a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f5273a.addURI("com.android.contacts", "contacts/#/photo", 2);
        f5273a.addURI("com.android.contacts", "contacts/#", 3);
        f5273a.addURI("com.android.contacts", "display_photo/#", 4);
    }

    f(Context context) {
        this.f5274b = context;
    }

    public final boolean canHandleRequest(w wVar) {
        Uri uri = wVar.uri;
        return FirebaseAnalytics.b.CONTENT.equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f5273a.match(wVar.uri) != -1;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x003f A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0040  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.squareup.picasso.y.a load(com.squareup.picasso.w r5, int r6) throws java.io.IOException {
        /*
            r4 = this;
            android.content.Context r6 = r4.f5274b
            android.content.ContentResolver r6 = r6.getContentResolver()
            android.net.Uri r5 = r5.uri
            android.content.UriMatcher r0 = f5273a
            int r0 = r0.match(r5)
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L_0x0031
            r3 = 2
            if (r0 == r3) goto L_0x002c
            r3 = 3
            if (r0 == r3) goto L_0x0039
            r2 = 4
            if (r0 != r2) goto L_0x001c
            goto L_0x002c
        L_0x001c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r0 = "Invalid uri: "
            java.lang.String r5 = r0.concat(r5)
            r6.<init>(r5)
            throw r6
        L_0x002c:
            java.io.InputStream r5 = r6.openInputStream(r5)
            goto L_0x003d
        L_0x0031:
            android.net.Uri r5 = android.provider.ContactsContract.Contacts.lookupContact(r6, r5)
            if (r5 != 0) goto L_0x0039
            r5 = r1
            goto L_0x003d
        L_0x0039:
            java.io.InputStream r5 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r6, r5, r2)
        L_0x003d:
            if (r5 != 0) goto L_0x0040
            return r1
        L_0x0040:
            com.squareup.picasso.y$a r6 = new com.squareup.picasso.y$a
            b.v r5 = b.n.source((java.io.InputStream) r5)
            com.squareup.picasso.Picasso$LoadedFrom r0 = com.squareup.picasso.Picasso.LoadedFrom.DISK
            r6.<init>((b.v) r5, (com.squareup.picasso.Picasso.LoadedFrom) r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.f.load(com.squareup.picasso.w, int):com.squareup.picasso.y$a");
    }
}
