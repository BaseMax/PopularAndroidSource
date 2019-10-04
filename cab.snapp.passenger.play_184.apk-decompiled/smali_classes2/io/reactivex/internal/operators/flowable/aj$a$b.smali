.class final Lio/reactivex/internal/operators/flowable/aj$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/aj$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/aj$a;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/aj$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/aj$a$b;->a:Lio/reactivex/internal/operators/flowable/aj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/aj$a$b;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aj$a$b;->a:Lio/reactivex/internal/operators/flowable/aj$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/aj$a;->a:Lorg/b/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/aj$a$b;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/aj$a$b;->a:Lio/reactivex/internal/operators/flowable/aj$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/aj$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v0}, Lio/reactivex/ah$c;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/aj$a$b;->a:Lio/reactivex/internal/operators/flowable/aj$a;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/aj$a;->d:Lio/reactivex/ah$c;

    invoke-virtual {v1}, Lio/reactivex/ah$c;->dispose()V

    throw v0
.end method
