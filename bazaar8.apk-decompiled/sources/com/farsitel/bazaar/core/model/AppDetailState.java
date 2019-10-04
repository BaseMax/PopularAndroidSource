package com.farsitel.bazaar.core.model;

import com.farsitel.bazaar.core.model.ResourceState;
import h.f.b.f;

/* compiled from: ResourceState.kt */
public abstract class AppDetailState extends ResourceState.CustomState {

    /* compiled from: ResourceState.kt */
    public static final class Payment extends AppDetailState {

        /* renamed from: a  reason: collision with root package name */
        public static final Payment f12157a = new Payment();

        public Payment() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class PostComment extends AppDetailState {

        /* renamed from: a  reason: collision with root package name */
        public static final PostComment f12158a = new PostComment();

        public PostComment() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class Report extends AppDetailState {

        /* renamed from: a  reason: collision with root package name */
        public static final Report f12159a = new Report();

        public Report() {
            super(null);
        }
    }

    public AppDetailState() {
    }

    public /* synthetic */ AppDetailState(f fVar) {
        this();
    }
}
