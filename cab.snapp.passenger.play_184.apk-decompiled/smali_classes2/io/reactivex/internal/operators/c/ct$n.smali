.class final Lio/reactivex/internal/operators/c/ct$n;
.super Lio/reactivex/internal/operators/c/ct$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/c/ct$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final c:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 788
    invoke-direct {p0}, Lio/reactivex/internal/operators/c/ct$a;-><init>()V

    .line 789
    iput p1, p0, Lio/reactivex/internal/operators/c/ct$n;->c:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 795
    iget v0, p0, Lio/reactivex/internal/operators/c/ct$n;->b:I

    iget v1, p0, Lio/reactivex/internal/operators/c/ct$n;->c:I

    if-le v0, v1, :cond_0

    .line 1615
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/ct$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/ct$f;

    .line 1616
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ct$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/ct$f;

    .line 1617
    iget v1, p0, Lio/reactivex/internal/operators/c/ct$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/c/ct$a;->b:I

    .line 1647
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/c/ct$a;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
