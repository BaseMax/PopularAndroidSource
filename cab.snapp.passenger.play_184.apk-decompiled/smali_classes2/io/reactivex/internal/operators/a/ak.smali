.class public final Lio/reactivex/internal/operators/a/ak;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/ak$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lio/reactivex/ah;


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lio/reactivex/ah;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/operators/a/ak;->a:Lio/reactivex/g;

    .line 29
    iput-object p2, p0, Lio/reactivex/internal/operators/a/ak;->b:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 2

    .line 35
    new-instance v0, Lio/reactivex/internal/operators/a/ak$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/a/ak;->a:Lio/reactivex/g;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/a/ak$a;-><init>(Lio/reactivex/d;Lio/reactivex/g;)V

    .line 36
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 38
    iget-object p1, p0, Lio/reactivex/internal/operators/a/ak;->b:Lio/reactivex/ah;

    invoke-virtual {p1, v0}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    move-result-object p1

    .line 40
    iget-object v0, v0, Lio/reactivex/internal/operators/a/ak$a;->b:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
