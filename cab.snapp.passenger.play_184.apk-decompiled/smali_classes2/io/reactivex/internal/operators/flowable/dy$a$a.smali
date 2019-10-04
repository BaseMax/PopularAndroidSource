.class final Lio/reactivex/internal/operators/flowable/dy$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/dy$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lorg/b/d;

.field final b:J


# direct methods
.method constructor <init>(Lorg/b/d;J)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dy$a$a;->a:Lorg/b/d;

    .line 151
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/dy$a$a;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/dy$a$a;->a:Lorg/b/d;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/dy$a$a;->b:J

    invoke-interface {v0, v1, v2}, Lorg/b/d;->request(J)V

    return-void
.end method
