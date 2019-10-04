.class final Lcom/koushikdutta/async/z$h;
.super Lcom/koushikdutta/async/z$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field a:B

.field b:Lcom/koushikdutta/async/a/d;


# direct methods
.method public constructor <init>(BLcom/koushikdutta/async/a/d;)V
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/z$i;-><init>(I)V

    .line 120
    iput-byte p1, p0, Lcom/koushikdutta/async/z$h;->a:B

    .line 121
    iput-object p2, p0, Lcom/koushikdutta/async/z$h;->b:Lcom/koushikdutta/async/a/d;

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;
    .locals 7

    .line 127
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 128
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 129
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remove()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 132
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget-byte v6, p0, Lcom/koushikdutta/async/z$h;->a:B

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {p2, v3}, Lcom/koushikdutta/async/l;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 138
    invoke-virtual {p2, v0, v5}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    .line 140
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->get()B

    goto :goto_3

    .line 143
    :cond_2
    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    goto :goto_0

    .line 147
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/koushikdutta/async/z$h;->b:Lcom/koushikdutta/async/a/d;

    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/a/d;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    return-object p0
.end method
