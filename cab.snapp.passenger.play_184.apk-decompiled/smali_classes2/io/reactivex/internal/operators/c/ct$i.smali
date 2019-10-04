.class final Lio/reactivex/internal/operators/c/ct$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/c/ct$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/operators/c/ct$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iput p1, p0, Lio/reactivex/internal/operators/c/ct$i;->a:I

    return-void
.end method


# virtual methods
.method public final call()Lio/reactivex/internal/operators/c/ct$h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/c/ct$h<",
            "TT;>;"
        }
    .end annotation

    .line 948
    new-instance v0, Lio/reactivex/internal/operators/c/ct$n;

    iget v1, p0, Lio/reactivex/internal/operators/c/ct$i;->a:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/c/ct$n;-><init>(I)V

    return-object v0
.end method
