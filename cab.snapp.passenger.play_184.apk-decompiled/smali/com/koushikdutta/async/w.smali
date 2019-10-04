.class public Lcom/koushikdutta/async/w;
.super Lcom/koushikdutta/async/k;
.source "SourceFile"


# static fields
.field static final synthetic h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    const-class v0, Lcom/koushikdutta/async/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/w;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/q;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/k;-><init>(Lcom/koushikdutta/async/q;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/w;->setMaxBuffer(I)V

    return-void
.end method


# virtual methods
.method public filter(Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/l;
    .locals 0

    return-object p1
.end method

.method public final write(Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/koushikdutta/async/w;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/w;->getMaxBuffer()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/w;->filter(Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/l;

    move-result-object v0

    .line 20
    sget-boolean v1, Lcom/koushikdutta/async/w;->h:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 21
    invoke-super {p0, v0, v1}, Lcom/koushikdutta/async/k;->a(Lcom/koushikdutta/async/l;Z)V

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->recycle()V

    :cond_3
    return-void
.end method
