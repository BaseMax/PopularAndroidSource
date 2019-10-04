.class public interface abstract Lcom/ebay/common/net/AsyncList;
.super Ljava/lang/Object;
.source "AsyncList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/AsyncList$NetworkListObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract registerObserver(Lcom/ebay/common/net/AsyncList$NetworkListObserver;)V
.end method

.method public abstract unregisterObserver(Lcom/ebay/common/net/AsyncList$NetworkListObserver;)V
.end method
