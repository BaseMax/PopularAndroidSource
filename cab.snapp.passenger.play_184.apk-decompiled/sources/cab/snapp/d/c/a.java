package cab.snapp.d.c;

import cab.snapp.c;
import com.pusher.client.b;

final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private c f226a;

    a(c cVar) {
        this.f226a = cVar;
    }

    public final String authorize(String str, String str2) throws com.pusher.client.a {
        cab.snapp.b.log(c.TAG, "Authorize Started");
        try {
            String str3 = this.f226a.getPusherAutorizeRequest(str, str2).execute().body().string();
            if (this.f226a.getPusherAutorizeRequest(str, str2).execute().isSuccessful()) {
                cab.snapp.b.log(c.TAG, "Authorize Succeed!");
                return str3;
            }
            cab.snapp.b.log(c.TAG, "Authorize Failed! -> ".concat(String.valueOf(str3)));
            throw new com.pusher.client.a(str3);
        } catch (Exception e) {
            e.printStackTrace();
            throw new com.pusher.client.a(e);
        }
    }
}
