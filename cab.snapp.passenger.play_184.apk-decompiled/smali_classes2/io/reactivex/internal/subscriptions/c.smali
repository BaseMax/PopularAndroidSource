.class public Lio/reactivex/internal/subscriptions/c;
.super Lio/reactivex/internal/subscriptions/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final h:Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/a;-><init>()V

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/c;->h:Lorg/b/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x4

    .line 184
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/c;->set(I)V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lio/reactivex/internal/subscriptions/c;->i:Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .locals 1

    const/16 v0, 0x20

    .line 178
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/c;->lazySet(I)V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lio/reactivex/internal/subscriptions/c;->i:Ljava/lang/Object;

    return-void
.end method

.method public final complete(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/c;->get()I

    move-result v0

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    .line 113
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/c;->i:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 114
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/c;->lazySet(I)V

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/c;->h:Lorg/b/c;

    .line 117
    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/c;->get()I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 119
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v1, v0, -0x3

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x3

    .line 130
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/c;->lazySet(I)V

    .line 131
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/c;->h:Lorg/b/c;

    .line 132
    invoke-interface {v0, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/c;->get()I

    move-result p1

    if-eq p1, v2, :cond_4

    .line 134
    invoke-interface {v0}, Lorg/b/c;->onComplete()V

    :cond_4
    return-void

    .line 138
    :cond_5
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/c;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/c;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 142
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/c;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/c;->i:Ljava/lang/Object;

    return-void
.end method

.method public final isCancelled()Z
    .locals 2

    .line 193
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/c;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 173
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/c;->get()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/c;->get()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/16 v0, 0x20

    .line 163
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/c;->lazySet(I)V

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/c;->i:Ljava/lang/Object;

    .line 165
    iput-object v1, p0, Lio/reactivex/internal/subscriptions/c;->i:Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final request(J)V
    .locals 1

    .line 74
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 76
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/c;->get()I

    move-result p1

    and-int/lit8 p2, p1, -0x2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const/4 p1, 0x3

    .line 83
    invoke-virtual {p0, p2, p1}, Lio/reactivex/internal/subscriptions/c;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    iget-object p1, p0, Lio/reactivex/internal/subscriptions/c;->i:Ljava/lang/Object;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 86
    iput-object p2, p0, Lio/reactivex/internal/subscriptions/c;->i:Ljava/lang/Object;

    .line 87
    iget-object p2, p0, Lio/reactivex/internal/subscriptions/c;->h:Lorg/b/c;

    .line 88
    invoke-interface {p2, p1}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/c;->get()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 90
    invoke-interface {p2}, Lorg/b/c;->onComplete()V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 96
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/subscriptions/c;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 153
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/c;->lazySet(I)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final tryCancel()Z
    .locals 2

    const/4 v0, 0x4

    .line 202
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/c;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method