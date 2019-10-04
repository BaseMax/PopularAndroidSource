package io.reactivex;

public interface ad<Downstream, Upstream> {
    ag<? super Upstream> apply(ag<? super Downstream> agVar) throws Exception;
}
