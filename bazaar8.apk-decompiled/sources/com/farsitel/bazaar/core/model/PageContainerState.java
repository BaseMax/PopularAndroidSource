package com.farsitel.bazaar.core.model;

import com.farsitel.bazaar.core.model.ResourceState;
import h.f.b.f;

/* compiled from: ResourceState.kt */
public abstract class PageContainerState extends ResourceState.CustomState {

    /* compiled from: ResourceState.kt */
    public static final class MultiPage extends PageContainerState {

        /* renamed from: a  reason: collision with root package name */
        public static final MultiPage f12160a = new MultiPage();

        public MultiPage() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class SinglePage extends PageContainerState {

        /* renamed from: a  reason: collision with root package name */
        public static final SinglePage f12161a = new SinglePage();

        public SinglePage() {
            super(null);
        }
    }

    public PageContainerState() {
    }

    public /* synthetic */ PageContainerState(f fVar) {
        this();
    }
}
