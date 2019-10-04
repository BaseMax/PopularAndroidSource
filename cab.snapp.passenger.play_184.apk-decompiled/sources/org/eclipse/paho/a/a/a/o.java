package org.eclipse.paho.a.a.a;

import java.lang.reflect.Field;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.ServiceLoader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;
import org.eclipse.paho.a.a.d.a;
import org.eclipse.paho.a.a.n;
import org.eclipse.paho.a.a.p;

public class o {

    /* renamed from: a  reason: collision with root package name */
    private static b f8768a;

    /* renamed from: b  reason: collision with root package name */
    private static final ServiceLoader<a> f8769b;
    private static final Pattern c = Pattern.compile("((.+)@)?([^:]*)(:(\\d+))?");

    static {
        Class<o> cls = o.class;
        f8768a = c.getLogger(c.MQTT_CLIENT_MSG_CAT, cls.getSimpleName());
        f8769b = ServiceLoader.load(a.class, cls.getClassLoader());
    }

    private o() {
    }

    public static void validateURI(String str) throws IllegalArgumentException {
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            if (scheme == null || scheme.isEmpty()) {
                throw new IllegalArgumentException("missing scheme in broker URI: ".concat(String.valueOf(str)));
            }
            String lowerCase = scheme.toLowerCase();
            Iterator<a> it = f8769b.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.getSupportedUriSchemes().contains(lowerCase)) {
                    next.validateURI(uri);
                    return;
                }
            }
            throw new IllegalArgumentException("no NetworkModule installed for scheme \"" + lowerCase + "\" of URI \"" + str + "\"");
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Can't parse string to URI \"" + str + "\"", e);
        }
    }

    public static n createInstance(String str, n nVar, String str2) throws p, IllegalArgumentException {
        try {
            URI uri = new URI(str);
            applyRFC3986AuthorityPatch(uri);
            String lowerCase = uri.getScheme().toLowerCase();
            Iterator<a> it = f8769b.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.getSupportedUriSchemes().contains(lowerCase)) {
                    return next.createNetworkModule(uri, nVar, str2);
                }
            }
            throw new IllegalArgumentException(uri.toString());
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(str, e);
        }
    }

    public static void applyRFC3986AuthorityPatch(URI uri) {
        if (uri != null && uri.getHost() == null && uri.getAuthority() != null && !uri.getAuthority().isEmpty()) {
            Matcher matcher = c.matcher(uri.getAuthority());
            if (matcher.find()) {
                a(uri, "userInfo", matcher.group(2));
                a(uri, "host", matcher.group(3));
                String group = matcher.group(5);
                a(uri, "port", Integer.valueOf(group != null ? Integer.parseInt(group) : -1));
            }
        }
    }

    private static void a(URI uri, String str, Object obj) {
        try {
            Field declaredField = URI.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(uri, obj);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException | SecurityException e) {
            b bVar = f8768a;
            String name = o.class.getName();
            Object[] objArr = {uri.toString()};
            bVar.warning(name, "setURIField", "115", objArr, e);
        }
    }
}
