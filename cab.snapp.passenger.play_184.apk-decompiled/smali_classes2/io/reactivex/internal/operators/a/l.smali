.class public final Lio/reactivex/internal/operators/a/l;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/l$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lio/reactivex/e/a;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/a/l;->a:Lio/reactivex/g;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/a/l;->b:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/a/l;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/a/l$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/a/l;->b:Lio/reactivex/e/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/a/l$a;-><init>(Lio/reactivex/d;Lio/reactivex/e/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
