.class final Lio/reactivex/internal/operators/c/ek$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ek$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/c/ek$c;

.field private final b:Lio/reactivex/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ek$c;Lio/reactivex/j/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 737
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ek$c$a;->a:Lio/reactivex/internal/operators/c/ek$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ek$c$a;->b:Lio/reactivex/j/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 743
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ek$c$a;->a:Lio/reactivex/internal/operators/c/ek$c;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/ek$c$a;->b:Lio/reactivex/j/e;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/c/ek$c;->a(Lio/reactivex/j/e;)V

    return-void
.end method
