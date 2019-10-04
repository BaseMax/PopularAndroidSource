.class final Lio/reactivex/internal/operators/c/bo$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bo;
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
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/f/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Lio/reactivex/ah;


# direct methods
.method constructor <init>(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bo$n;->a:Lio/reactivex/z;

    .line 296
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/bo$n;->b:J

    .line 297
    iput-object p4, p0, Lio/reactivex/internal/operators/c/bo$n;->c:Ljava/util/concurrent/TimeUnit;

    .line 298
    iput-object p5, p0, Lio/reactivex/internal/operators/c/bo$n;->d:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final call()Lio/reactivex/f/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bo$n;->a:Lio/reactivex/z;

    iget-wide v1, p0, Lio/reactivex/internal/operators/c/bo$n;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/c/bo$n;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/internal/operators/c/bo$n;->d:Lio/reactivex/ah;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/z;->replay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/bo$n;->call()Lio/reactivex/f/a;

    move-result-object v0

    return-object v0
.end method
