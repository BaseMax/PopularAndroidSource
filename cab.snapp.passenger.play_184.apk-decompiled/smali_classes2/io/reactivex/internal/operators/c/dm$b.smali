.class final Lio/reactivex/internal/operators/c/dm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/c/dm;

.field private final b:Lio/reactivex/internal/operators/c/dm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/dm$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/dm;Lio/reactivex/internal/operators/c/dm$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/dm$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dm$b;->a:Lio/reactivex/internal/operators/c/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dm$b;->b:Lio/reactivex/internal/operators/c/dm$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dm$b;->a:Lio/reactivex/internal/operators/c/dm;

    iget-object v0, v0, Lio/reactivex/internal/operators/c/dm;->a:Lio/reactivex/ae;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/dm$b;->b:Lio/reactivex/internal/operators/c/dm$a;

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
