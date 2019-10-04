.class final Lio/reactivex/internal/operators/c/ea$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/ea$d;

.field final b:J


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/c/ea$d;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-wide p1, p0, Lio/reactivex/internal/operators/c/ea$e;->b:J

    .line 160
    iput-object p3, p0, Lio/reactivex/internal/operators/c/ea$e;->a:Lio/reactivex/internal/operators/c/ea$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ea$e;->a:Lio/reactivex/internal/operators/c/ea$d;

    iget-wide v1, p0, Lio/reactivex/internal/operators/c/ea$e;->b:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/c/ea$d;->onTimeout(J)V

    return-void
.end method
