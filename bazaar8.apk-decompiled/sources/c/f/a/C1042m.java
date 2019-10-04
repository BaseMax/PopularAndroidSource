package c.f.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import c.f.a.I;
import com.squareup.picasso.Picasso;
import java.io.InputStream;
import k.s;

/* renamed from: c.f.a.m  reason: case insensitive filesystem */
/* compiled from: ContactsPhotoRequestHandler */
public class C1042m extends I {

    /* renamed from: a  reason: collision with root package name */
    public static final UriMatcher f11994a = new UriMatcher(-1);

    /* renamed from: b  reason: collision with root package name */
    public final Context f11995b;

    static {
        f11994a.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f11994a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f11994a.addURI("com.android.contacts", "contacts/#/photo", 2);
        f11994a.addURI("com.android.contacts", "contacts/#", 3);
        f11994a.addURI("com.android.contacts", "display_photo/#", 4);
    }

    public C1042m(Context context) {
        this.f11995b = context;
    }

    public boolean a(G g2) {
        Uri uri = g2.f11892e;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f11994a.match(g2.f11892e) != -1;
    }

    public final InputStream c(G g2) {
        ContentResolver contentResolver = this.f11995b.getContentResolver();
        Uri uri = g2.f11892e;
        int match = f11994a.match(uri);
        if (match != 1) {
            if (match != 2) {
                if (match != 3) {
                    if (match != 4) {
                        throw new IllegalStateException("Invalid uri: " + uri);
                    }
                }
            }
            return contentResolver.openInputStream(uri);
        }
        uri = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (uri == null) {
            return null;
        }
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    public I.a a(G g2, int i2) {
        InputStream c2 = c(g2);
        if (c2 == null) {
            return null;
        }
        return new I.a(s.a(c2), Picasso.LoadedFrom.DISK);
    }
}
