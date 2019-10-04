.class final Lio/reactivex/internal/operators/c/bo$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/e/h<",
        "Lio/reactivex/z<",
        "TT;>;",
        "Lio/reactivex/ae<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/ah;


# direct methods
.method constructor <init>(Lio/reactivex/e/h;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bo$k;->a:Lio/reactivex/e/h;

    .line 313
    iput-object p2, p0, Lio/reactivex/internal/operators/c/bo$k;->b:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/z;)Lio/reactivex/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;)",
            "Lio/reactivex/ae<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bo$k;->a:Lio/reactivex/e/h;

    invoke-interface {v0, p1}, Lio/reactivex/e/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null ObservableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ae;

    .line 319
    invoke-static {p1}, Lio/reactivex/z;->wrap(Lio/reactivex/ae;)Lio/reactivex/z;

    move-result-object p1

    iget-object v0, p0, Lio/reactivex/internal/operators/c/bo$k;->b:Lio/reactivex/ah;

    invoke-virtual {p1, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    check-cast p1, Lio/reactivex/z;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/c/bo$k;->apply(Lio/reactivex/z;)Lio/reactivex/ae;

    move-result-object p1

    return-object p1
.end method
