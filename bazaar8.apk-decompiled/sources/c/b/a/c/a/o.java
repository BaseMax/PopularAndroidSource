package c.b.a.c.a;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* compiled from: StreamLocalUriFetcher */
public class o extends m<InputStream> {

    /* renamed from: d  reason: collision with root package name */
    public static final UriMatcher f3806d = new UriMatcher(-1);

    static {
        f3806d.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f3806d.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f3806d.addURI("com.android.contacts", "contacts/#/photo", 2);
        f3806d.addURI("com.android.contacts", "contacts/#", 3);
        f3806d.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        f3806d.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public o(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    public final InputStream b(Uri uri, ContentResolver contentResolver) {
        int match = f3806d.match(uri);
        if (match != 1) {
            if (match == 3) {
                return a(contentResolver, uri);
            }
            if (match != 5) {
                return contentResolver.openInputStream(uri);
            }
        }
        Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (lookupContact != null) {
            return a(contentResolver, lookupContact);
        }
        throw new FileNotFoundException("Contact cannot be found");
    }

    public InputStream a(Uri uri, ContentResolver contentResolver) {
        InputStream b2 = b(uri, contentResolver);
        if (b2 != null) {
            return b2;
        }
        throw new FileNotFoundException("InputStream is null for " + uri);
    }

    public final InputStream a(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    public void a(InputStream inputStream) {
        inputStream.close();
    }

    public Class<InputStream> a() {
        return InputStream.class;
    }
}
