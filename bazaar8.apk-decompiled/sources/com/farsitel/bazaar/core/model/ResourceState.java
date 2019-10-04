package com.farsitel.bazaar.core.model;

import h.f.b.f;
import java.io.Serializable;

/* compiled from: ResourceState.kt */
public abstract class ResourceState implements Serializable {

    /* compiled from: ResourceState.kt */
    public static abstract class CustomState extends ResourceState {
        public CustomState() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class Error extends ResourceState {

        /* renamed from: a  reason: collision with root package name */
        public static final Error f12177a = new Error();

        public Error() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class Loading extends ResourceState {

        /* renamed from: a  reason: collision with root package name */
        public static final Loading f12178a = new Loading();

        public Loading() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class Success extends ResourceState {

        /* renamed from: a  reason: collision with root package name */
        public static final Success f12179a = new Success();

        public Success() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class UnKnown extends ResourceState {

        /* renamed from: a  reason: collision with root package name */
        public static final UnKnown f12180a = new UnKnown();

        public UnKnown() {
            super(null);
        }
    }

    public ResourceState() {
    }

    public /* synthetic */ ResourceState(f fVar) {
        this();
    }
}
