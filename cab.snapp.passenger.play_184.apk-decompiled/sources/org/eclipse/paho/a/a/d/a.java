package org.eclipse.paho.a.a.d;

import java.net.URI;
import java.util.Set;
import org.eclipse.paho.a.a.a.n;
import org.eclipse.paho.a.a.p;

public interface a {
    n createNetworkModule(URI uri, org.eclipse.paho.a.a.n nVar, String str) throws p;

    Set<String> getSupportedUriSchemes();

    void validateURI(URI uri) throws IllegalArgumentException;
}
