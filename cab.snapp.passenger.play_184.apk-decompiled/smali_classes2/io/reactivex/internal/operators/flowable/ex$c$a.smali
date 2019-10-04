.class final Lio/reactivex/internal/operators/flowable/ex$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ex$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/ex$c;

.field private final b:Lio/reactivex/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/ex$c;Lio/reactivex/h/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 835
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$c$a;->a:Lio/reactivex/internal/operators/flowable/ex$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/ex$c$a;->b:Lio/reactivex/h/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 841
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/ex$c$a;->a:Lio/reactivex/internal/operators/flowable/ex$c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/ex$c$a;->b:Lio/reactivex/h/c;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/ex$c;->a(Lio/reactivex/h/c;)V

    return-void
.end method
