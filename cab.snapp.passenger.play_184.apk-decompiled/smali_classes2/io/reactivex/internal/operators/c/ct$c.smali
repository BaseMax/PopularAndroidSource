.class final Lio/reactivex/internal/operators/c/ct$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Lio/reactivex/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/operators/c/ep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ep<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ep;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/ep<",
            "TR;>;)V"
        }
    .end annotation

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct$c;->a:Lio/reactivex/internal/operators/c/ep;

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/b/c;)V
    .locals 1

    .line 935
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$c;->a:Lio/reactivex/internal/operators/c/ep;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/c/ep;->setResource(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 926
    check-cast p1, Lio/reactivex/b/c;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/ct$c;->accept(Lio/reactivex/b/c;)V

    return-void
.end method
