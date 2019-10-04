.class final Lio/reactivex/internal/operators/a/am$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/a/am$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/a/am$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/a/am$a;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lio/reactivex/internal/operators/a/am$a$a;->a:Lio/reactivex/internal/operators/a/am$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a$a;->a:Lio/reactivex/internal/operators/a/am$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/am$a;->a:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a$a;->a:Lio/reactivex/internal/operators/a/am$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/am$a;->b:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a$a;->a:Lio/reactivex/internal/operators/a/am$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/am$a;->a:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a$a;->a:Lio/reactivex/internal/operators/a/am$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/am$a;->b:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/a/am$a$a;->a:Lio/reactivex/internal/operators/a/am$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/a/am$a;->a:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method
