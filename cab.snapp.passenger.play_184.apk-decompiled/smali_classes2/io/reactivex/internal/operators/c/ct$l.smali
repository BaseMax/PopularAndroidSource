.class final Lio/reactivex/internal/operators/c/ct$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/c/ct$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/operators/c/ct$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Lio/reactivex/ah;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput p1, p0, Lio/reactivex/internal/operators/c/ct$l;->a:I

    .line 960
    iput-wide p2, p0, Lio/reactivex/internal/operators/c/ct$l;->b:J

    .line 961
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ct$l;->c:Ljava/util/concurrent/TimeUnit;

    .line 962
    iput-object p5, p0, Lio/reactivex/internal/operators/c/ct$l;->d:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final call()Lio/reactivex/internal/operators/c/ct$h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/c/ct$h<",
            "TT;>;"
        }
    .end annotation

    .line 967
    new-instance v6, Lio/reactivex/internal/operators/c/ct$m;

    iget v1, p0, Lio/reactivex/internal/operators/c/ct$l;->a:I

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/ct$l;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/c/ct$l;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/c/ct$l;->d:Lio/reactivex/ah;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/ct$m;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    return-object v6
.end method
