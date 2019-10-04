.class public Lcom/apptentive/android/sdk/debug/ErrorMetrics;
.super Ljava/lang/Object;
.source "ErrorMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;
    }
.end annotation


# static fields
.field private static final EMPTY_DATA:[Ljava/lang/Object;

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->EMPTY_DATA:[Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->EMPTY_DATA:[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logException(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;

    .line 27
    invoke-static {v1, p0, p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->notifyListener(Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;Ljava/lang/Throwable;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs logException(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/ObjectUtils;->toMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method private static notifyListener(Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;->onError(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception while notifying listener "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static registerListener(Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;)V
    .locals 1
    .param p0    # Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 43
    sget-object v0, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregisterListener(Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;)V
    .locals 1
    .param p0    # Lcom/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 50
    sget-object v0, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
