.class final Lio/reactivex/internal/operators/e/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/e/f$a;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/e/f$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/reactivex/internal/operators/e/f$a$a;->a:Lio/reactivex/internal/operators/e/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lio/reactivex/internal/operators/e/f$a$a;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/e/f$a$a;->a:Lio/reactivex/internal/operators/e/f$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/e/f$a;->a:Lio/reactivex/al;

    iget-object v1, p0, Lio/reactivex/internal/operators/e/f$a$a;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/reactivex/al;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
