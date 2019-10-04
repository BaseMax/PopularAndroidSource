.class public final Lio/reactivex/internal/operators/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/b$a;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>(Lio/reactivex/ae;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/c/b;->a:Lio/reactivex/ae;

    .line 33
    iput p2, p0, Lio/reactivex/internal/operators/c/b;->b:I

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lio/reactivex/internal/operators/c/b$a;

    iget v1, p0, Lio/reactivex/internal/operators/c/b;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/c/b$a;-><init>(I)V

    .line 39
    iget-object v1, p0, Lio/reactivex/internal/operators/c/b;->a:Lio/reactivex/ae;

    invoke-interface {v1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-object v0
.end method
