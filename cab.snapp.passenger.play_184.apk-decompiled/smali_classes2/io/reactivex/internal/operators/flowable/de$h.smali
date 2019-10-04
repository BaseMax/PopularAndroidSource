.class final Lio/reactivex/internal/operators/flowable/de$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/internal/operators/flowable/de$g<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    iput p1, p0, Lio/reactivex/internal/operators/flowable/de$h;->a:I

    return-void
.end method


# virtual methods
.method public final call()Lio/reactivex/internal/operators/flowable/de$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/flowable/de$g<",
            "TT;>;"
        }
    .end annotation

    .line 1174
    new-instance v0, Lio/reactivex/internal/operators/flowable/de$m;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/de$h;->a:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/de$m;-><init>(I)V

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1165
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/de$h;->call()Lio/reactivex/internal/operators/flowable/de$g;

    move-result-object v0

    return-object v0
.end method
