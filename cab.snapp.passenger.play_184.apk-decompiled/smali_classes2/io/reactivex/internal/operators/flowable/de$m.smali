.class final Lio/reactivex/internal/operators/flowable/de$m;
.super Lio/reactivex/internal/operators/flowable/de$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/de$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final d:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 964
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/de$a;-><init>()V

    .line 965
    iput p1, p0, Lio/reactivex/internal/operators/flowable/de$m;->d:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 971
    iget v0, p0, Lio/reactivex/internal/operators/flowable/de$m;->b:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/de$m;->d:I

    if-le v0, v1, :cond_1

    .line 1757
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/de$f;

    .line 1758
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/de$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/de$f;

    if-eqz v0, :cond_0

    .line 1762
    iget v1, p0, Lio/reactivex/internal/operators/flowable/de$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/de$a;->b:I

    .line 1782
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/de$a;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1760
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
