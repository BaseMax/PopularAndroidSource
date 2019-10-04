.class final Lio/reactivex/internal/operators/c/bo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/f/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(Lio/reactivex/z;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;I)V"
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bo$a;->a:Lio/reactivex/z;

    .line 258
    iput p2, p0, Lio/reactivex/internal/operators/c/bo$a;->b:I

    return-void
.end method


# virtual methods
.method public final call()Lio/reactivex/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bo$a;->a:Lio/reactivex/z;

    iget v1, p0, Lio/reactivex/internal/operators/c/bo$a;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/z;->replay(I)Lio/reactivex/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/bo$a;->call()Lio/reactivex/f/a;

    move-result-object v0

    return-object v0
.end method
