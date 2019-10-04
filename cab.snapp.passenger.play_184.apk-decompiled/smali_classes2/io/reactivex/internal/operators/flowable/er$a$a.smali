.class final Lio/reactivex/internal/operators/flowable/er$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/er$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/er$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/er$a;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/er$a$a;->a:Lio/reactivex/internal/operators/flowable/er$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/er$a$a;->a:Lio/reactivex/internal/operators/flowable/er$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/er$a;->c:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method
