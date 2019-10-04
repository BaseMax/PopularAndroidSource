.class public final Lio/reactivex/internal/operators/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/e$b;,
        Lio/reactivex/internal/operators/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/c/e;->a:Lio/reactivex/ae;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lio/reactivex/internal/operators/c/e$b;

    invoke-direct {v0}, Lio/reactivex/internal/operators/c/e$b;-><init>()V

    .line 43
    new-instance v1, Lio/reactivex/internal/operators/c/e$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/e;->a:Lio/reactivex/ae;

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/c/e$a;-><init>(Lio/reactivex/ae;Lio/reactivex/internal/operators/c/e$b;)V

    return-object v1
.end method
