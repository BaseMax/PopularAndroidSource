.class public final Lio/reactivex/internal/operators/a/i;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/i$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/ah;

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 36
    iput-object p1, p0, Lio/reactivex/internal/operators/a/i;->a:Lio/reactivex/g;

    .line 37
    iput-wide p2, p0, Lio/reactivex/internal/operators/a/i;->b:J

    .line 38
    iput-object p4, p0, Lio/reactivex/internal/operators/a/i;->c:Ljava/util/concurrent/TimeUnit;

    .line 39
    iput-object p5, p0, Lio/reactivex/internal/operators/a/i;->d:Lio/reactivex/ah;

    .line 40
    iput-boolean p6, p0, Lio/reactivex/internal/operators/a/i;->e:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 9

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/a/i;->a:Lio/reactivex/g;

    new-instance v8, Lio/reactivex/internal/operators/a/i$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/a/i;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/a/i;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/a/i;->d:Lio/reactivex/ah;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/a/i;->e:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/a/i$a;-><init>(Lio/reactivex/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;Z)V

    invoke-interface {v0, v8}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method
