.class final Lio/reactivex/internal/operators/flowable/de$b;
.super Lio/reactivex/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/de;
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
        "Lio/reactivex/d/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lio/reactivex/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/d/a;Lio/reactivex/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d/a<",
            "TT;>;",
            "Lio/reactivex/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 1149
    invoke-direct {p0}, Lio/reactivex/d/a;-><init>()V

    .line 1150
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/de$b;->b:Lio/reactivex/d/a;

    .line 1151
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/de$b;->c:Lio/reactivex/j;

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

    .line 1156
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$b;->b:Lio/reactivex/d/a;

    invoke-virtual {v0, p1}, Lio/reactivex/d/a;->connect(Lio/reactivex/e/g;)V

    return-void
.end method

.method public final subscribeActual(Lorg/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$b;->c:Lio/reactivex/j;

    invoke-virtual {v0, p1}, Lio/reactivex/j;->subscribe(Lorg/b/c;)V

    return-void
.end method
