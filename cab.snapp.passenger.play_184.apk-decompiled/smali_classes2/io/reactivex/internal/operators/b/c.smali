.class public final Lio/reactivex/internal/operators/b/c;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/h<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/b/c;->a:Lio/reactivex/j;

    .line 54
    iput-object p2, p0, Lio/reactivex/internal/operators/b/c;->b:Lio/reactivex/e/h;

    .line 55
    iput-object p3, p0, Lio/reactivex/internal/operators/b/c;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 56
    iput p4, p0, Lio/reactivex/internal/operators/b/c;->d:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 5

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/b/c;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/b/c$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/b/c;->b:Lio/reactivex/e/h;

    iget-object v3, p0, Lio/reactivex/internal/operators/b/c;->c:Lio/reactivex/internal/util/ErrorMode;

    iget v4, p0, Lio/reactivex/internal/operators/b/c;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/b/c$a;-><init>(Lio/reactivex/d;Lio/reactivex/e/h;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
