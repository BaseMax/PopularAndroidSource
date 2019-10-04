package androidx.lifecycle;

import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.c;
import org.b.d;

public final class LiveDataReactiveStreams {

    static final class LiveDataPublisher<T> implements b<T> {
        final LifecycleOwner mLifecycle;
        final LiveData<T> mLiveData;

        static final class LiveDataSubscription<T> implements Observer<T>, d {
            volatile boolean mCanceled;
            T mLatest;
            final LifecycleOwner mLifecycle;
            final LiveData<T> mLiveData;
            boolean mObserving;
            long mRequested;
            final c<? super T> mSubscriber;

            LiveDataSubscription(c<? super T> cVar, LifecycleOwner lifecycleOwner, LiveData<T> liveData) {
                this.mSubscriber = cVar;
                this.mLifecycle = lifecycleOwner;
                this.mLiveData = liveData;
            }

            public final void onChanged(T t) {
                if (!this.mCanceled) {
                    if (this.mRequested > 0) {
                        this.mLatest = null;
                        this.mSubscriber.onNext(t);
                        long j = this.mRequested;
                        if (j != Long.MAX_VALUE) {
                            this.mRequested = j - 1;
                        }
                    } else {
                        this.mLatest = t;
                    }
                }
            }

            public final void request(final long j) {
                if (!this.mCanceled) {
                    ArchTaskExecutor.getInstance().executeOnMainThread(new Runnable() {
                        public void run() {
                            if (!LiveDataSubscription.this.mCanceled) {
                                if (j <= 0) {
                                    LiveDataSubscription liveDataSubscription = LiveDataSubscription.this;
                                    liveDataSubscription.mCanceled = true;
                                    if (liveDataSubscription.mObserving) {
                                        LiveDataSubscription.this.mLiveData.removeObserver(LiveDataSubscription.this);
                                        LiveDataSubscription.this.mObserving = false;
                                    }
                                    LiveDataSubscription liveDataSubscription2 = LiveDataSubscription.this;
                                    liveDataSubscription2.mLatest = null;
                                    liveDataSubscription2.mSubscriber.onError(new IllegalArgumentException("Non-positive request"));
                                    return;
                                }
                                LiveDataSubscription liveDataSubscription3 = LiveDataSubscription.this;
                                liveDataSubscription3.mRequested = liveDataSubscription3.mRequested + j >= LiveDataSubscription.this.mRequested ? LiveDataSubscription.this.mRequested + j : Long.MAX_VALUE;
                                if (!LiveDataSubscription.this.mObserving) {
                                    LiveDataSubscription liveDataSubscription4 = LiveDataSubscription.this;
                                    liveDataSubscription4.mObserving = true;
                                    liveDataSubscription4.mLiveData.observe(LiveDataSubscription.this.mLifecycle, LiveDataSubscription.this);
                                    return;
                                }
                                if (LiveDataSubscription.this.mLatest != null) {
                                    LiveDataSubscription liveDataSubscription5 = LiveDataSubscription.this;
                                    liveDataSubscription5.onChanged(liveDataSubscription5.mLatest);
                                    LiveDataSubscription.this.mLatest = null;
                                }
                            }
                        }
                    });
                }
            }

            public final void cancel() {
                if (!this.mCanceled) {
                    this.mCanceled = true;
                    ArchTaskExecutor.getInstance().executeOnMainThread(new Runnable() {
                        public void run() {
                            if (LiveDataSubscription.this.mObserving) {
                                LiveDataSubscription.this.mLiveData.removeObserver(LiveDataSubscription.this);
                                LiveDataSubscription.this.mObserving = false;
                            }
                            LiveDataSubscription.this.mLatest = null;
                        }
                    });
                }
            }
        }

        LiveDataPublisher(LifecycleOwner lifecycleOwner, LiveData<T> liveData) {
            this.mLifecycle = lifecycleOwner;
            this.mLiveData = liveData;
        }

        public final void subscribe(c<? super T> cVar) {
            cVar.onSubscribe(new LiveDataSubscription(cVar, this.mLifecycle, this.mLiveData));
        }
    }

    static class PublisherLiveData<T> extends LiveData<T> {
        private final b<T> mPublisher;
        final AtomicReference<PublisherLiveData<T>.LiveDataSubscriber> mSubscriber = new AtomicReference<>();

        final class LiveDataSubscriber extends AtomicReference<d> implements c<T> {
            LiveDataSubscriber() {
            }

            public final void onSubscribe(d dVar) {
                if (compareAndSet(null, dVar)) {
                    dVar.request(Long.MAX_VALUE);
                } else {
                    dVar.cancel();
                }
            }

            public final void onNext(T t) {
                PublisherLiveData.this.postValue(t);
            }

            public final void onError(final Throwable th) {
                PublisherLiveData.this.mSubscriber.compareAndSet(this, null);
                ArchTaskExecutor.getInstance().executeOnMainThread(new Runnable() {
                    public void run() {
                        throw new RuntimeException("LiveData does not handle errors. Errors from publishers should be handled upstream and propagated as state", th);
                    }
                });
            }

            public final void onComplete() {
                PublisherLiveData.this.mSubscriber.compareAndSet(this, null);
            }

            public final void cancelSubscription() {
                d dVar = (d) get();
                if (dVar != null) {
                    dVar.cancel();
                }
            }
        }

        PublisherLiveData(b<T> bVar) {
            this.mPublisher = bVar;
        }

        /* access modifiers changed from: protected */
        public void onActive() {
            super.onActive();
            LiveDataSubscriber liveDataSubscriber = new LiveDataSubscriber();
            this.mSubscriber.set(liveDataSubscriber);
            this.mPublisher.subscribe(liveDataSubscriber);
        }

        /* access modifiers changed from: protected */
        public void onInactive() {
            super.onInactive();
            LiveDataSubscriber andSet = this.mSubscriber.getAndSet(null);
            if (andSet != null) {
                andSet.cancelSubscription();
            }
        }
    }

    private LiveDataReactiveStreams() {
    }

    public static <T> b<T> toPublisher(LifecycleOwner lifecycleOwner, LiveData<T> liveData) {
        return new LiveDataPublisher(lifecycleOwner, liveData);
    }

    public static <T> LiveData<T> fromPublisher(b<T> bVar) {
        return new PublisherLiveData(bVar);
    }
}
