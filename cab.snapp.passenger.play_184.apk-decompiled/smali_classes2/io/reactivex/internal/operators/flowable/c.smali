.class public final Lio/reactivex/internal/operators/flowable/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/c$a;
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
.field final a:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/c;->a:Lorg/b/b;

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

    .line 42
    new-instance v0, Lio/reactivex/internal/operators/flowable/c$a;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/c$a;-><init>()V

    .line 43
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/c;->a:Lorg/b/b;

    invoke-static {v1}, Lio/reactivex/j;->fromPublisher(Lorg/b/b;)Lio/reactivex/j;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/j;->materialize()Lio/reactivex/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-object v0
.end method
