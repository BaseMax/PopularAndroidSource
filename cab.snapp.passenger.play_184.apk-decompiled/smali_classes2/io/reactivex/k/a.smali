.class public abstract Lio/reactivex/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Lorg/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscribe(Lorg/b/d;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lio/reactivex/k/a;->b:Lorg/b/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/g;->validate(Lorg/b/d;Lorg/b/d;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iput-object p1, p0, Lio/reactivex/k/a;->b:Lorg/b/d;

    .line 2092
    iget-object p1, p0, Lio/reactivex/k/a;->b:Lorg/b/d;

    if-eqz p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 2094
    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method
