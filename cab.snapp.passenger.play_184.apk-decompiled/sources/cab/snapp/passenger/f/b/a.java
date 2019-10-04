package cab.snapp.passenger.f.b;

import cab.snapp.passenger.f.b.c.b;
import cab.snapp.passenger.f.b.c.c;
import java.util.HashMap;

public class a {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, cab.snapp.passenger.f.b.c.a> f539a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private boolean f540b = true;

    public boolean isEnabled() {
        return this.f540b;
    }

    public void setEnabled(boolean z) {
        this.f540b = z;
    }

    public a addProvider(String str, cab.snapp.passenger.f.b.c.a aVar) {
        if (aVar == null || str == null) {
            throw new NullPointerException("<reportProvider> and <reportProviderKey> cannot be null");
        }
        this.f539a.put(str, aVar);
        return this;
    }

    public a removeProvider(String str) {
        if (str != null) {
            this.f539a.remove(str);
            return this;
        }
        throw new NullPointerException("<reportingProviderKey> is null");
    }

    public boolean hasProvider(String str) {
        if (str != null) {
            return this.f539a.containsKey(str);
        }
        throw new NullPointerException("<reportingProviderKey> is null");
    }

    public cab.snapp.passenger.f.b.c.a getProvider(String str) {
        cab.snapp.passenger.f.b.c.a aVar = this.f539a.get(str);
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalArgumentException("There is no provider added with the reportingProviderKey: ".concat(String.valueOf(str)));
    }

    public void sendEvent(String str, b bVar) {
        if (str == null) {
            throw new NullPointerException("<reportingProviderKey> is null");
        } else if (bVar != null) {
            cab.snapp.passenger.f.b.c.a provider = getProvider(str);
            if (isEnabled()) {
                c handlerForEvent = provider.getHandlerForEvent(bVar);
                if (handlerForEvent != null) {
                    handlerForEvent.sendEvent();
                }
            }
        } else {
            throw new NullPointerException("<reportingEvent> is null");
        }
    }

    public void release() {
        HashMap<String, cab.snapp.passenger.f.b.c.a> hashMap = this.f539a;
        if (hashMap != null) {
            hashMap.clear();
            this.f539a = null;
        }
    }
}
