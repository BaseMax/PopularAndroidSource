.class final Lio/reactivex/internal/operators/flowable/af$d;
.super Lio/reactivex/internal/operators/flowable/af$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/af$g<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 433
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/af$g;-><init>(Lorg/b/c;)V

    return-void
.end method


# virtual methods
.method final d()V
    .locals 2

    .line 438
    new-instance v0, Lio/reactivex/c/c;

    const-string v1, "create: could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/c/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/af$d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
