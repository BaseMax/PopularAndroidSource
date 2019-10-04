.class final Lio/reactivex/b/a;
.super Lio/reactivex/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/b/f<",
        "Lio/reactivex/e/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/reactivex/e/a;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/reactivex/b/f;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lio/reactivex/e/a;

    .line 1030
    :try_start_0
    invoke-interface {p1}, Lio/reactivex/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1032
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
