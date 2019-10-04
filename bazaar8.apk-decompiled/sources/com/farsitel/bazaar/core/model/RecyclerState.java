package com.farsitel.bazaar.core.model;

import com.farsitel.bazaar.core.model.ResourceState;
import h.f.b.f;

/* compiled from: ResourceState.kt */
public abstract class RecyclerState extends ResourceState.CustomState {

    /* compiled from: ResourceState.kt */
    public static final class ErrorLoadMore extends RecyclerState {

        /* renamed from: a  reason: collision with root package name */
        public static final ErrorLoadMore f12174a = new ErrorLoadMore();

        public ErrorLoadMore() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class LoadingLoadMore extends RecyclerState {

        /* renamed from: a  reason: collision with root package name */
        public static final LoadingLoadMore f12175a = new LoadingLoadMore();

        public LoadingLoadMore() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class SuccessLoadMore extends RecyclerState {

        /* renamed from: a  reason: collision with root package name */
        public static final SuccessLoadMore f12176a = new SuccessLoadMore();

        public SuccessLoadMore() {
            super(null);
        }
    }

    public RecyclerState() {
    }

    public /* synthetic */ RecyclerState(f fVar) {
        this();
    }
}
