.class final Lio/reactivex/internal/d/a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/internal/d/a$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 160
    invoke-virtual {p0, p1}, Lio/reactivex/internal/d/a$a;->spValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getAndNullValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lio/reactivex/internal/d/a$a;->lpValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0, v1}, Lio/reactivex/internal/d/a$a;->spValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final lpValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/d/a$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final lvNext()Lio/reactivex/internal/d/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/d/a$a<",
            "TE;>;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lio/reactivex/internal/d/a$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/d/a$a;

    return-object v0
.end method

.method public final soNext(Lio/reactivex/internal/d/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/d/a$a<",
            "TE;>;)V"
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Lio/reactivex/internal/d/a$a;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public final spValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lio/reactivex/internal/d/a$a;->a:Ljava/lang/Object;

    return-void
.end method
