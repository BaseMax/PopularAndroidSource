.class final Lio/reactivex/internal/operators/flowable/en$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/en$d;

.field final b:J


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/flowable/en$d;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/en$e;->b:J

    .line 165
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/en$e;->a:Lio/reactivex/internal/operators/flowable/en$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/en$e;->a:Lio/reactivex/internal/operators/flowable/en$d;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/en$e;->b:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/en$d;->onTimeout(J)V

    return-void
.end method