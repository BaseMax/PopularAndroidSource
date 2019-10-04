.class public final Lio/reactivex/internal/util/e;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/a;
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/e/a;",
        "Lio/reactivex/e/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/util/e;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/util/e;->error:Ljava/lang/Throwable;

    .line 35
    invoke-virtual {p0}, Lio/reactivex/internal/util/e;->countDown()V

    return-void
.end method

.method public final run()V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lio/reactivex/internal/util/e;->countDown()V

    return-void
.end method
