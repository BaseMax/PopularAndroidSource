.class public final Lio/reactivex/internal/operators/b/n;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/ao<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/b/n;->a:Lio/reactivex/z;

    .line 52
    iput-object p2, p0, Lio/reactivex/internal/operators/b/n;->b:Lio/reactivex/e/h;

    .line 53
    iput-object p3, p0, Lio/reactivex/internal/operators/b/n;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 54
    iput p4, p0, Lio/reactivex/internal/operators/b/n;->d:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TR;>;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/b/n;->a:Lio/reactivex/z;

    iget-object v1, p0, Lio/reactivex/internal/operators/b/n;->b:Lio/reactivex/e/h;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/b/r;->b(Ljava/lang/Object;Lio/reactivex/e/h;Lio/reactivex/ag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/b/n;->a:Lio/reactivex/z;

    new-instance v1, Lio/reactivex/internal/operators/b/n$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/b/n;->b:Lio/reactivex/e/h;

    iget v3, p0, Lio/reactivex/internal/operators/b/n;->d:I

    iget-object v4, p0, Lio/reactivex/internal/operators/b/n;->c:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/b/n$a;-><init>(Lio/reactivex/ag;Lio/reactivex/e/h;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    :cond_0
    return-void
.end method
