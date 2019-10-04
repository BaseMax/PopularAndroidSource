.class final Lcom/koushikdutta/async/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/a;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/koushikdutta/async/a$b;->a:Lcom/koushikdutta/async/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iget-object p1, p0, Lcom/koushikdutta/async/a$b;->a:Lcom/koushikdutta/async/a;

    invoke-static {p1}, Lcom/koushikdutta/async/a;->b(Lcom/koushikdutta/async/a;)I

    move-result p1

    iput p1, p0, Lcom/koushikdutta/async/a$b;->b:I

    .line 639
    iget-object p1, p0, Lcom/koushikdutta/async/a$b;->a:Lcom/koushikdutta/async/a;

    invoke-static {p1}, Lcom/koushikdutta/async/a;->a(Lcom/koushikdutta/async/a;)I

    move-result p1

    iput p1, p0, Lcom/koushikdutta/async/a$b;->c:I

    const/4 p1, -0x1

    .line 640
    iput p1, p0, Lcom/koushikdutta/async/a$b;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/a;B)V
    .locals 0

    .line 632
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/a$b;-><init>(Lcom/koushikdutta/async/a;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 643
    iget v0, p0, Lcom/koushikdutta/async/a$b;->b:I

    iget v1, p0, Lcom/koushikdutta/async/a$b;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 647
    iget v0, p0, Lcom/koushikdutta/async/a$b;->b:I

    iget v1, p0, Lcom/koushikdutta/async/a$b;->c:I

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 649
    iget-object v1, p0, Lcom/koushikdutta/async/a$b;->a:Lcom/koushikdutta/async/a;

    invoke-static {v1}, Lcom/koushikdutta/async/a;->c(Lcom/koushikdutta/async/a;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/a$b;->b:I

    .line 650
    iget-object v0, p0, Lcom/koushikdutta/async/a$b;->a:Lcom/koushikdutta/async/a;

    invoke-static {v0}, Lcom/koushikdutta/async/a;->c(Lcom/koushikdutta/async/a;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/koushikdutta/async/a$b;->b:I

    aget-object v0, v0, v1

    .line 651
    iget-object v1, p0, Lcom/koushikdutta/async/a$b;->a:Lcom/koushikdutta/async/a;

    invoke-static {v1}, Lcom/koushikdutta/async/a;->a(Lcom/koushikdutta/async/a;)I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/a$b;->c:I

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 653
    iget v1, p0, Lcom/koushikdutta/async/a$b;->b:I

    iput v1, p0, Lcom/koushikdutta/async/a$b;->d:I

    return-object v0

    .line 652
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 648
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 658
    iget v0, p0, Lcom/koushikdutta/async/a$b;->d:I

    if-ltz v0, :cond_1

    .line 660
    iget-object v1, p0, Lcom/koushikdutta/async/a$b;->a:Lcom/koushikdutta/async/a;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/a;->a(Lcom/koushikdutta/async/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget v0, p0, Lcom/koushikdutta/async/a$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/koushikdutta/async/a$b;->a:Lcom/koushikdutta/async/a;

    invoke-static {v1}, Lcom/koushikdutta/async/a;->c(Lcom/koushikdutta/async/a;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/a$b;->b:I

    .line 662
    iget-object v0, p0, Lcom/koushikdutta/async/a$b;->a:Lcom/koushikdutta/async/a;

    invoke-static {v0}, Lcom/koushikdutta/async/a;->a(Lcom/koushikdutta/async/a;)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/a$b;->c:I

    :cond_0
    const/4 v0, -0x1

    .line 664
    iput v0, p0, Lcom/koushikdutta/async/a$b;->d:I

    return-void

    .line 659
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
