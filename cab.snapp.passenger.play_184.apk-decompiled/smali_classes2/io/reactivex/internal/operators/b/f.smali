.class public final Lio/reactivex/internal/operators/b/f;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;Z)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/b/f;->a:Lio/reactivex/j;

    .line 49
    iput-object p2, p0, Lio/reactivex/internal/operators/b/f;->b:Lio/reactivex/e/h;

    .line 50
    iput-boolean p3, p0, Lio/reactivex/internal/operators/b/f;->c:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/b/f;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/b/f$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/b/f;->b:Lio/reactivex/e/h;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/b/f;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/b/f$a;-><init>(Lio/reactivex/d;Lio/reactivex/e/h;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
