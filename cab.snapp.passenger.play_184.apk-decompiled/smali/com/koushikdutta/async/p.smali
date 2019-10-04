.class public Lcom/koushikdutta/async/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# static fields
.field static final synthetic d:Z


# instance fields
.field a:Lcom/koushikdutta/async/a/d;

.field b:I

.field c:Lcom/koushikdutta/async/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const-class v0, Lcom/koushikdutta/async/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/p;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/p;->c:Lcom/koushikdutta/async/l;

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 3

    .line 35
    sget-boolean v0, Lcom/koushikdutta/async/p;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/p;->a:Lcom/koushikdutta/async/a/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/p;->b:I

    iget-object v2, p0, Lcom/koushikdutta/async/p;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/koushikdutta/async/p;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v1, v0}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    .line 39
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    .line 1019
    iget v0, p0, Lcom/koushikdutta/async/p;->b:I

    iget-object v1, p0, Lcom/koushikdutta/async/p;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/p;->a:Lcom/koushikdutta/async/a/d;

    const/4 v1, 0x0

    .line 1023
    iput-object v1, p0, Lcom/koushikdutta/async/p;->a:Lcom/koushikdutta/async/a/d;

    .line 1024
    iget-object v1, p0, Lcom/koushikdutta/async/p;->c:Lcom/koushikdutta/async/l;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/a/d;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 1025
    sget-boolean v0, Lcom/koushikdutta/async/p;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/koushikdutta/async/p;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/p;->a:Lcom/koushikdutta/async/a/d;

    if-nez v0, :cond_1

    .line 42
    :cond_5
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    return-void
.end method

.method public read(ILcom/koushikdutta/async/a/d;)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/koushikdutta/async/p;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/p;->a:Lcom/koushikdutta/async/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iput p1, p0, Lcom/koushikdutta/async/p;->b:I

    .line 13
    iput-object p2, p0, Lcom/koushikdutta/async/p;->a:Lcom/koushikdutta/async/a/d;

    .line 14
    sget-boolean p1, Lcom/koushikdutta/async/p;->d:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/koushikdutta/async/p;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/koushikdutta/async/p;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->recycle()V

    return-void
.end method
