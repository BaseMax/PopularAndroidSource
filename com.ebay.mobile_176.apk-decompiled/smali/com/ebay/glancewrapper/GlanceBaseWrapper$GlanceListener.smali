.class public interface abstract Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;
.super Ljava/lang/Object;
.source "GlanceBaseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/glancewrapper/GlanceBaseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlanceListener"
.end annotation


# virtual methods
.method public abstract onAgentConnected()V
.end method

.method public abstract onAgentEnded()V
.end method

.method public abstract onAuthFailed()V
.end method

.method public abstract onAuthSucceeded()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onSessionConnected()V
.end method

.method public abstract onSessionEnded()V
.end method

.method public abstract onSessionFailed()V
.end method
