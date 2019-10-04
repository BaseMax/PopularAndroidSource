.class public final Lio/reactivex/internal/operators/a/b;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/b$a;,
        Lio/reactivex/internal/operators/a/b$b;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lio/reactivex/g;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/a/b;->a:Lio/reactivex/g;

    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/a/b;->b:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/a/b;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/a/b$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/a/b;->b:Lio/reactivex/g;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/a/b$b;-><init>(Lio/reactivex/d;Lio/reactivex/g;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
