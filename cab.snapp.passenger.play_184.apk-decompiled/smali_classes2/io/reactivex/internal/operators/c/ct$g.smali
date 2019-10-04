.class final Lio/reactivex/internal/operators/c/ct$g;
.super Lio/reactivex/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/f/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/f/a;Lio/reactivex/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/f/a<",
            "TT;>;",
            "Lio/reactivex/z<",
            "TT;>;)V"
        }
    .end annotation

    .line 1062
    invoke-direct {p0}, Lio/reactivex/f/a;-><init>()V

    .line 1063
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct$g;->a:Lio/reactivex/f/a;

    .line 1064
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ct$g;->b:Lio/reactivex/z;

    return-void
.end method


# virtual methods
.method public final connect(Lio/reactivex/e/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)V"
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$g;->a:Lio/reactivex/f/a;

    invoke-virtual {v0, p1}, Lio/reactivex/f/a;->connect(Lio/reactivex/e/g;)V

    return-void
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct$g;->b:Lio/reactivex/z;

    invoke-virtual {v0, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
