.class public Lcom/koushikdutta/async/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/y$a;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field a:Ljava/nio/charset/Charset;

.field b:Lcom/koushikdutta/async/l;

.field c:Lcom/koushikdutta/async/y$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/koushikdutta/async/y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/y;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/y;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/y;->b:Lcom/koushikdutta/async/l;

    .line 20
    iput-object p1, p0, Lcom/koushikdutta/async/y;->a:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public getLineCallback()Lcom/koushikdutta/async/y$a;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/y;->c:Lcom/koushikdutta/async/y$a;

    return-object v0
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 38
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 39
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-lez v0, :cond_3

    .line 40
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->get()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 42
    sget-boolean p2, Lcom/koushikdutta/async/y;->d:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/koushikdutta/async/y;->c:Lcom/koushikdutta/async/y$a;

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 44
    iget-object p2, p0, Lcom/koushikdutta/async/y;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 45
    iget-object p1, p0, Lcom/koushikdutta/async/y;->c:Lcom/koushikdutta/async/y$a;

    iget-object p2, p0, Lcom/koushikdutta/async/y;->b:Lcom/koushikdutta/async/l;

    iget-object v0, p0, Lcom/koushikdutta/async/y;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/y$a;->onStringAvailable(Ljava/lang/String;)V

    .line 46
    new-instance p1, Lcom/koushikdutta/async/l;

    invoke-direct {p1}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/y;->b:Lcom/koushikdutta/async/l;

    return-void

    .line 50
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 54
    iget-object p2, p0, Lcom/koushikdutta/async/y;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    return-void
.end method

.method public setLineCallback(Lcom/koushikdutta/async/y$a;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/y;->c:Lcom/koushikdutta/async/y$a;

    return-void
.end method
