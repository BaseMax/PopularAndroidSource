.class public abstract Lio/fabric/sdk/android/services/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/a/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/a/a;-><init>(Lio/fabric/sdk/android/services/a/c;)V

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/a/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/fabric/sdk/android/services/a/a;->a:Lio/fabric/sdk/android/services/a/c;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final declared-synchronized get(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/a/d<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lio/fabric/sdk/android/services/a/a;->a:Lio/fabric/sdk/android/services/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/services/a/a;->a:Lio/fabric/sdk/android/services/a/c;

    invoke-interface {v0, p1, p2}, Lio/fabric/sdk/android/services/a/c;->get(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lio/fabric/sdk/android/services/a/d;->load(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v0, p1

    if-eqz v0, :cond_1

    .line 1070
    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/a/a;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 1068
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized invalidate(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
