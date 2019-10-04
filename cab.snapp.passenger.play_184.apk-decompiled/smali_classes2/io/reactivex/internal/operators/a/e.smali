.class public final Lio/reactivex/internal/operators/a/e;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/e$a;
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/g;


# direct methods
.method public constructor <init>([Lio/reactivex/g;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 26
    iput-object p1, p0, Lio/reactivex/internal/operators/a/e;->a:[Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 2

    .line 31
    new-instance v0, Lio/reactivex/internal/operators/a/e$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/a/e;->a:[Lio/reactivex/g;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/a/e$a;-><init>(Lio/reactivex/d;[Lio/reactivex/g;)V

    .line 32
    iget-object v1, v0, Lio/reactivex/internal/operators/a/e$a;->d:Lio/reactivex/internal/disposables/f;

    invoke-interface {p1, v1}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 33
    invoke-virtual {v0}, Lio/reactivex/internal/operators/a/e$a;->a()V

    return-void
.end method
