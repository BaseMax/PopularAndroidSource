.class abstract Lcom/google/gson/internal/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/gson/internal/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/g$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/internal/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/g$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/gson/internal/g;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/g;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/google/gson/internal/g$c;->e:Lcom/google/gson/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object p1, p0, Lcom/google/gson/internal/g$c;->e:Lcom/google/gson/internal/g;

    iget-object p1, p1, Lcom/google/gson/internal/g;->e:Lcom/google/gson/internal/g$d;

    iget-object p1, p1, Lcom/google/gson/internal/g$d;->d:Lcom/google/gson/internal/g$d;

    iput-object p1, p0, Lcom/google/gson/internal/g$c;->b:Lcom/google/gson/internal/g$d;

    const/4 p1, 0x0

    .line 528
    iput-object p1, p0, Lcom/google/gson/internal/g$c;->c:Lcom/google/gson/internal/g$d;

    .line 529
    iget-object p1, p0, Lcom/google/gson/internal/g$c;->e:Lcom/google/gson/internal/g;

    iget p1, p1, Lcom/google/gson/internal/g;->d:I

    iput p1, p0, Lcom/google/gson/internal/g$c;->d:I

    return-void
.end method


# virtual methods
.method final a()Lcom/google/gson/internal/g$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/g$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/google/gson/internal/g$c;->b:Lcom/google/gson/internal/g$d;

    .line 540
    iget-object v1, p0, Lcom/google/gson/internal/g$c;->e:Lcom/google/gson/internal/g;

    iget-object v1, v1, Lcom/google/gson/internal/g;->e:Lcom/google/gson/internal/g$d;

    if-eq v0, v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/google/gson/internal/g$c;->e:Lcom/google/gson/internal/g;

    iget v1, v1, Lcom/google/gson/internal/g;->d:I

    iget v2, p0, Lcom/google/gson/internal/g$c;->d:I

    if-ne v1, v2, :cond_0

    .line 546
    iget-object v1, v0, Lcom/google/gson/internal/g$d;->d:Lcom/google/gson/internal/g$d;

    iput-object v1, p0, Lcom/google/gson/internal/g$c;->b:Lcom/google/gson/internal/g$d;

    .line 547
    iput-object v0, p0, Lcom/google/gson/internal/g$c;->c:Lcom/google/gson/internal/g$d;

    return-object v0

    .line 544
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 541
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/google/gson/internal/g$c;->b:Lcom/google/gson/internal/g$d;

    iget-object v1, p0, Lcom/google/gson/internal/g$c;->e:Lcom/google/gson/internal/g;

    iget-object v1, v1, Lcom/google/gson/internal/g;->e:Lcom/google/gson/internal/g$d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/google/gson/internal/g$c;->c:Lcom/google/gson/internal/g$d;

    if-eqz v0, :cond_0

    .line 554
    iget-object v1, p0, Lcom/google/gson/internal/g$c;->e:Lcom/google/gson/internal/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/internal/g;->a(Lcom/google/gson/internal/g$d;Z)V

    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lcom/google/gson/internal/g$c;->c:Lcom/google/gson/internal/g$d;

    .line 556
    iget-object v0, p0, Lcom/google/gson/internal/g$c;->e:Lcom/google/gson/internal/g;

    iget v0, v0, Lcom/google/gson/internal/g;->d:I

    iput v0, p0, Lcom/google/gson/internal/g$c;->d:I

    return-void

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
