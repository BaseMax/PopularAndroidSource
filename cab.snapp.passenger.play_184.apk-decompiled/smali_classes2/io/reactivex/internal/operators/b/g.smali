.class public final Lio/reactivex/internal/operators/b/g;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Z


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
            "Lio/reactivex/w<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/b/g;->b:Lio/reactivex/j;

    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/b/g;->c:Lio/reactivex/e/h;

    .line 52
    iput-boolean p3, p0, Lio/reactivex/internal/operators/b/g;->d:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/b/g;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/b/g$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/b/g;->c:Lio/reactivex/e/h;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/b/g;->d:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/b/g$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
