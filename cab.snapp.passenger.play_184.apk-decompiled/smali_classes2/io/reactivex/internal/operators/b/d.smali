.class public final Lio/reactivex/internal/operators/b/d;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/d$a;
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

.field final d:Lio/reactivex/internal/util/ErrorMode;

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/b/d;->b:Lio/reactivex/j;

    .line 55
    iput-object p2, p0, Lio/reactivex/internal/operators/b/d;->c:Lio/reactivex/e/h;

    .line 56
    iput-object p3, p0, Lio/reactivex/internal/operators/b/d;->d:Lio/reactivex/internal/util/ErrorMode;

    .line 57
    iput p4, p0, Lio/reactivex/internal/operators/b/d;->e:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/b/d;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/b/d$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/b/d;->c:Lio/reactivex/e/h;

    iget v3, p0, Lio/reactivex/internal/operators/b/d;->e:I

    iget-object v4, p0, Lio/reactivex/internal/operators/b/d;->d:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/b/d$a;-><init>(Lorg/b/c;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
