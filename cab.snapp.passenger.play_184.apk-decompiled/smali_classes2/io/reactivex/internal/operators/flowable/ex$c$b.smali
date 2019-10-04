.class final Lio/reactivex/internal/operators/flowable/ex$c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/ex$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/h/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method constructor <init>(Lio/reactivex/h/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h/c<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/ex$c$b;->a:Lio/reactivex/h/c;

    .line 828
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/ex$c$b;->b:Z

    return-void
.end method
