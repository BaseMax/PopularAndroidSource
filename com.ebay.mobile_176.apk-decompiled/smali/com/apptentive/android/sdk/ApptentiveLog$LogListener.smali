.class public interface abstract Lcom/apptentive/android/sdk/ApptentiveLog$LogListener;
.super Ljava/lang/Object;
.source "ApptentiveLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/ApptentiveLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogListener"
.end annotation


# virtual methods
.method public abstract onLogMessage(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Ljava/lang/String;)V
    .param p1    # Lcom/apptentive/android/sdk/ApptentiveLog$Level;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
