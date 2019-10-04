.class public interface abstract Lcom/ebay/common/net/AsyncList$NetworkListObserver;
.super Ljava/lang/Object;
.source "AsyncList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/AsyncList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkListObserver"
.end annotation


# virtual methods
.method public abstract onChanged()V
.end method

.method public abstract onGetNotReady()V
.end method

.method public abstract onNetworkError(Ljava/io/IOException;)V
.end method
