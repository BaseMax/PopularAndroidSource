package com.google.firebase.components;

import c.e.c.b.e;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public class DependencyCycleException extends DependencyException {
    public final List<e<?>> componentsInCycle;

    public DependencyCycleException(List<e<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }
}
