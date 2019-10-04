.class public final Lio/reactivex/internal/operators/a/al;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/al$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/a;

.field final b:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/a;Lio/reactivex/g;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 36
    iput-object p1, p0, Lio/reactivex/internal/operators/a/al;->a:Lio/reactivex/a;

    .line 37
    iput-object p2, p0, Lio/reactivex/internal/operators/a/al;->b:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 2

    .line 42
    new-instance v0, Lio/reactivex/internal/operators/a/al$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/a/al$a;-><init>(Lio/reactivex/d;)V

    .line 43
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 45
    iget-object p1, p0, Lio/reactivex/internal/operators/a/al;->b:Lio/reactivex/g;

    iget-object v1, v0, Lio/reactivex/internal/operators/a/al$a;->b:Lio/reactivex/internal/operators/a/al$a$a;

    invoke-interface {p1, v1}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    .line 46
    iget-object p1, p0, Lio/reactivex/internal/operators/a/al;->a:Lio/reactivex/a;

    invoke-virtual {p1, v0}, Lio/reactivex/a;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
