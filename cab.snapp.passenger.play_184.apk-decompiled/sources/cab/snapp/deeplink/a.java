package cab.snapp.deeplink;

import android.net.Uri;
import cab.snapp.deeplink.models.b;
import cab.snapp.deeplink.models.c;
import cab.snapp.deeplink.models.types.Host;
import cab.snapp.deeplink.models.types.PathType;
import cab.snapp.deeplink.models.types.Scheme;
import org.eclipse.paho.a.a.w;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private String f231a;

    /* renamed from: cab.snapp.deeplink.a$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f233b = new int[PathType.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(30:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|(2:13|14)|15|(2:17|18)|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|40) */
        /* JADX WARNING: Can't wrap try/catch for region: R(32:0|(2:1|2)|3|5|6|7|(2:9|10)|11|(2:13|14)|15|17|18|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|40) */
        /* JADX WARNING: Can't wrap try/catch for region: R(34:0|1|2|3|5|6|7|(2:9|10)|11|13|14|15|17|18|19|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|40) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0053 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x005d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x0067 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x0071 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:31:0x007b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x0086 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:35:0x0091 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:37:0x009d */
        static {
            /*
                cab.snapp.deeplink.models.types.PathType[] r0 = cab.snapp.deeplink.models.types.PathType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f233b = r0
                r0 = 1
                int[] r1 = f233b     // Catch:{ NoSuchFieldError -> 0x0014 }
                cab.snapp.deeplink.models.types.PathType r2 = cab.snapp.deeplink.models.types.PathType.Here     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                r1 = 2
                int[] r2 = f233b     // Catch:{ NoSuchFieldError -> 0x001f }
                cab.snapp.deeplink.models.types.PathType r3 = cab.snapp.deeplink.models.types.PathType.Selective     // Catch:{ NoSuchFieldError -> 0x001f }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                r2 = 3
                int[] r3 = f233b     // Catch:{ NoSuchFieldError -> 0x002a }
                cab.snapp.deeplink.models.types.PathType r4 = cab.snapp.deeplink.models.types.PathType.GoogleMaps     // Catch:{ NoSuchFieldError -> 0x002a }
                int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r3[r4] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                r3 = 4
                int[] r4 = f233b     // Catch:{ NoSuchFieldError -> 0x0035 }
                cab.snapp.deeplink.models.types.PathType r5 = cab.snapp.deeplink.models.types.PathType.StringData     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r4[r5] = r3     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                r4 = 5
                int[] r5 = f233b     // Catch:{ NoSuchFieldError -> 0x0040 }
                cab.snapp.deeplink.models.types.PathType r6 = cab.snapp.deeplink.models.types.PathType.Location     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r6 = r6.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r5[r6] = r4     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                cab.snapp.deeplink.models.types.Host[] r5 = cab.snapp.deeplink.models.types.Host.values()
                int r5 = r5.length
                int[] r5 = new int[r5]
                f232a = r5
                int[] r5 = f232a     // Catch:{ NoSuchFieldError -> 0x0053 }
                cab.snapp.deeplink.models.types.Host r6 = cab.snapp.deeplink.models.types.Host.Shortcut     // Catch:{ NoSuchFieldError -> 0x0053 }
                int r6 = r6.ordinal()     // Catch:{ NoSuchFieldError -> 0x0053 }
                r5[r6] = r0     // Catch:{ NoSuchFieldError -> 0x0053 }
            L_0x0053:
                int[] r0 = f232a     // Catch:{ NoSuchFieldError -> 0x005d }
                cab.snapp.deeplink.models.types.Host r5 = cab.snapp.deeplink.models.types.Host.Ride     // Catch:{ NoSuchFieldError -> 0x005d }
                int r5 = r5.ordinal()     // Catch:{ NoSuchFieldError -> 0x005d }
                r0[r5] = r1     // Catch:{ NoSuchFieldError -> 0x005d }
            L_0x005d:
                int[] r0 = f232a     // Catch:{ NoSuchFieldError -> 0x0067 }
                cab.snapp.deeplink.models.types.Host r1 = cab.snapp.deeplink.models.types.Host.Open     // Catch:{ NoSuchFieldError -> 0x0067 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0067 }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0067 }
            L_0x0067:
                int[] r0 = f232a     // Catch:{ NoSuchFieldError -> 0x0071 }
                cab.snapp.deeplink.models.types.Host r1 = cab.snapp.deeplink.models.types.Host.Box     // Catch:{ NoSuchFieldError -> 0x0071 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0071 }
                r0[r1] = r3     // Catch:{ NoSuchFieldError -> 0x0071 }
            L_0x0071:
                int[] r0 = f232a     // Catch:{ NoSuchFieldError -> 0x007b }
                cab.snapp.deeplink.models.types.Host r1 = cab.snapp.deeplink.models.types.Host.Bike     // Catch:{ NoSuchFieldError -> 0x007b }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x007b }
                r0[r1] = r4     // Catch:{ NoSuchFieldError -> 0x007b }
            L_0x007b:
                int[] r0 = f232a     // Catch:{ NoSuchFieldError -> 0x0086 }
                cab.snapp.deeplink.models.types.Host r1 = cab.snapp.deeplink.models.types.Host.Rose     // Catch:{ NoSuchFieldError -> 0x0086 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0086 }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0086 }
            L_0x0086:
                int[] r0 = f232a     // Catch:{ NoSuchFieldError -> 0x0091 }
                cab.snapp.deeplink.models.types.Host r1 = cab.snapp.deeplink.models.types.Host.Eco     // Catch:{ NoSuchFieldError -> 0x0091 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0091 }
                r2 = 7
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0091 }
            L_0x0091:
                int[] r0 = f232a     // Catch:{ NoSuchFieldError -> 0x009d }
                cab.snapp.deeplink.models.types.Host r1 = cab.snapp.deeplink.models.types.Host.Google     // Catch:{ NoSuchFieldError -> 0x009d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x009d }
                r2 = 8
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x009d }
            L_0x009d:
                int[] r0 = f232a     // Catch:{ NoSuchFieldError -> 0x00a9 }
                cab.snapp.deeplink.models.types.Host r1 = cab.snapp.deeplink.models.types.Host.CompleteGoogle     // Catch:{ NoSuchFieldError -> 0x00a9 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x00a9 }
                r2 = 9
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x00a9 }
            L_0x00a9:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: cab.snapp.deeplink.a.AnonymousClass1.<clinit>():void");
        }
    }

    public a(Uri uri) {
        this.f231a = uri.toString();
    }

    public a(String str) {
        this.f231a = str;
    }

    public final cab.snapp.deeplink.models.a parse() throws Exception {
        Scheme scheme;
        Host host;
        int i;
        String[] split = this.f231a.split(":");
        if (split.length > 1) {
            String str = split[0];
            String replace = split[1].replace("//", "");
            if (str.equals(Scheme.Snapp.getValue())) {
                scheme = Scheme.Snapp;
            } else if (str.equals(Scheme.HTTPS.getValue())) {
                scheme = Scheme.HTTPS;
            } else if (str.equals(Scheme.Geo.getValue())) {
                scheme = Scheme.Geo;
            } else if (str.equals(Scheme.SnappDriver.getValue())) {
                scheme = Scheme.SnappDriver;
            } else {
                throw new Exception("Could not find a supported scheme type");
            }
            Scheme scheme2 = scheme;
            if (scheme2 == Scheme.Geo) {
                if (replace.contains("?z=")) {
                    String[] split2 = replace.split("\\?z=");
                    try {
                        i = Integer.parseInt(split2[1]);
                    } catch (Exception e) {
                        e.printStackTrace();
                        i = -1;
                    }
                    replace = split2[0];
                } else {
                    if (replace.contains("?q=")) {
                        String[] split3 = replace.split("\\?q=");
                        String str2 = split3[1];
                        if (!str2.contains(",") && !str2.contains("%2C%20")) {
                            replace = split3[0];
                        } else if (str2.contains("(")) {
                            replace = str2.split("\\(")[0].replace("%2C%20", ",");
                        } else {
                            replace = str2.replace("%2C%20", ",");
                        }
                    }
                    i = -1;
                }
                if (replace.contains(",")) {
                    c cVar = new c(PathType.Location, c(replace), replace);
                    if (i != -1) {
                        cVar.setZoom(i);
                    }
                    cab.snapp.deeplink.models.a aVar = new cab.snapp.deeplink.models.a(scheme2, null, null, cVar, null);
                    return aVar;
                }
                throw new Exception("Given Geo link does not contain the expected latitude and longitude separated by \",\"");
            }
            String[] split4 = replace.split(w.TOPIC_LEVEL_SEPARATOR);
            if (split4.length > 0) {
                String str3 = split4[0];
                if (str3.equals(Host.Ride.getValue())) {
                    host = Host.Ride;
                } else if (str3.equals(Host.Eco.getValue())) {
                    host = Host.Eco;
                } else if (str3.equals(Host.Rose.getValue())) {
                    host = Host.Rose;
                } else if (str3.equals(Host.Bike.getValue())) {
                    host = Host.Bike;
                } else if (str3.equals(Host.Box.getValue())) {
                    host = Host.Box;
                } else if (str3.equals(Host.Open.getValue())) {
                    host = Host.Open;
                } else if (str3.equals(Host.Shortcut.getValue())) {
                    host = Host.Shortcut;
                } else if (str3.equals(Host.Google.getValue())) {
                    host = Host.Google;
                } else if (str3.equals(Host.CompleteGoogle.getValue())) {
                    host = Host.CompleteGoogle;
                } else {
                    throw new Exception("Could not find a supported host");
                }
                switch (host) {
                    case Shortcut:
                    case Ride:
                    case Open:
                    case Box:
                    case Bike:
                    case Rose:
                    case Eco:
                        if (split4.length == 3) {
                            cab.snapp.deeplink.models.a aVar2 = new cab.snapp.deeplink.models.a(scheme2, host, b(split4[1]), b(split4[2]), null);
                            return aVar2;
                        } else if (split4.length == 4) {
                            cab.snapp.deeplink.models.a aVar3 = new cab.snapp.deeplink.models.a(scheme2, host, b(split4[1]), b(split4[2]), b(split4[3]));
                            return aVar3;
                        } else if (scheme2 != Scheme.Snapp && scheme2 != Scheme.SnappDriver) {
                            throw new Exception("Link format seems to be incorrect, more than three paths have been found");
                        } else if (split4.length == 2) {
                            cab.snapp.deeplink.models.a aVar4 = new cab.snapp.deeplink.models.a(scheme2, host, b(split4[1]), null, null);
                            return aVar4;
                        } else if (split4.length == 1) {
                            cab.snapp.deeplink.models.a aVar5 = new cab.snapp.deeplink.models.a(scheme2, host, null, null, null);
                            return aVar5;
                        } else {
                            throw new Exception("Link format seems to be incorrect, more than three paths have been found");
                        }
                    case Google:
                    case CompleteGoogle:
                        if (split4.length == 3) {
                            c b2 = b(split4[1]);
                            b2.setValue(split4[1] + w.TOPIC_LEVEL_SEPARATOR + split4[2]);
                            cab.snapp.deeplink.models.a aVar6 = new cab.snapp.deeplink.models.a(scheme2, host, b2, null, null);
                            return aVar6;
                        }
                        throw new Exception("Google Link format seems to be incorrect, the link is: " + this.f231a);
                    default:
                        throw new Exception("Could not find a supported host");
                }
            } else {
                throw new Exception("Link format seems to be incorrect, no Host has been found");
            }
        } else {
            throw new Exception("Link format seems to be incorrect, no Scheme has been found");
        }
    }

    private static PathType a(String str) {
        if (str.equals(PathType.Here.getValue())) {
            return PathType.Here;
        }
        if (str.equals(PathType.Selective.getValue())) {
            return PathType.Selective;
        }
        if (str.contains(PathType.GoogleMaps.getValue())) {
            return PathType.GoogleMaps;
        }
        if (str.contains(PathType.Location.getValue())) {
            return PathType.Location;
        }
        return PathType.StringData;
    }

    private static c b(String str) {
        PathType a2 = a(str);
        int i = AnonymousClass1.f233b[a2.ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            return new c(a2, null, str);
        }
        if (i != 5) {
            return null;
        }
        return new c(a2, c(str), str);
    }

    private static b c(String str) {
        String[] split = str.split(",");
        return new b(Double.parseDouble(split[0]), Double.parseDouble(split[1]));
    }

    public final Uri getLink() {
        return Uri.parse(this.f231a);
    }

    public final String getLinkString() {
        return this.f231a;
    }
}
