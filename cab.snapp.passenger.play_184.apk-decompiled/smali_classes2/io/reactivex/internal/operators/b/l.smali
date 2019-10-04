.class public final Lio/reactivex/internal/operators/b/l;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/l$a;
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
            "Lio/reactivex/g;",
            ">;"
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
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/b/l;->a:Lio/reactivex/z;

    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/b/l;->b:Lio/reactivex/e/h;

    .line 52
    iput-object p3, p0, Lio/reactivex/internal/operators/b/l;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 53
    iput p4, p0, Lio/reactivex/internal/operators/b/l;->d:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 5

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l;->a:Lio/reactivex/z;

    iget-object v1, p0, Lio/reactivex/internal/operators/b/l;->b:Lio/reactivex/e/h;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/b/r;->a(Ljava/lang/Object;Lio/reactivex/e/h;Lio/reactivex/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/b/l;->a:Lio/reactivex/z;

    new-instance v1, Lio/reactivex/internal/operators/b/l$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/b/l;->b:Lio/reactivex/e/h;

    iget-object v3, p0, Lio/reactivex/internal/operators/b/l;->c:Lio/reactivex/internal/util/ErrorMode;

    iget v4, p0, Lio/reactivex/internal/operators/b/l;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/b/l$a;-><init>(Lio/reactivex/d;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    :cond_0
    return-void
.end method
