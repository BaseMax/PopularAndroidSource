.class final Lcom/koushikdutta/async/http/spdy/j$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/j$b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/j$b;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 4

    .line 127
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/l;

    .line 128
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v0

    iput v0, p1, Lcom/koushikdutta/async/http/spdy/j$b;->d:I

    .line 129
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result p2

    iput p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->e:I

    .line 132
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->d:I

    const/high16 v0, 0x3fff0000    # 1.9921875f

    and-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    iput-short p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    .line 133
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->d:I

    const v0, 0xff00

    and-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    iput-byte p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->g:B

    .line 134
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->d:I

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    iput-byte p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->f:B

    .line 136
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->e:I

    const v0, 0x7fffffff

    and-int/2addr p2, v0

    iput p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    .line 137
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/j;->a()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/j;->a()Ljava/util/logging/Logger;

    move-result-object p1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/j$b;->g:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-byte v3, v3, Lcom/koushikdutta/async/http/spdy/j$b;->f:B

    invoke-static {p2, v0, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/j$a;->a(ZIIBB)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    .line 1094
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/j$b;->b:Lcom/koushikdutta/async/p;

    .line 140
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short p2, p2, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b$1;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    .line 2094
    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/j$b;->j:Lcom/koushikdutta/async/a/d;

    .line 140
    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/p;->read(ILcom/koushikdutta/async/a/d;)V

    return-void
.end method
