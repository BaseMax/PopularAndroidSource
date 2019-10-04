.class public Lcom/koushikdutta/async/http/e/f;
.super Lcom/koushikdutta/async/v;
.source "SourceFile"


# static fields
.field static final synthetic m:Z


# instance fields
.field private d:[B

.field l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/koushikdutta/async/http/e/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/e/f;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/koushikdutta/async/v;-><init>()V

    const/4 v0, 0x2

    .line 57
    iput v0, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public getBoundaryEnd()Ljava/lang/String;
    .locals 2

    .line 27
    sget-boolean v0, Lcom/koushikdutta/async/http/e/f;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/f;->getBoundaryStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundaryStart()Ljava/lang/String;
    .locals 4

    .line 22
    sget-boolean v0, Lcom/koushikdutta/async/http/e/f;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    array-length v2, v1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method protected onBoundaryEnd()V
    .locals 0

    return-void
.end method

.method protected onBoundaryStart()V
    .locals 0

    return-void
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 8

    .line 67
    iget p1, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    array-length p1, p1

    invoke-static {p1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    iget v2, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 71
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 72
    iput v0, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    .line 76
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 77
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->get([B)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 78
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_10

    .line 79
    iget v2, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    const/4 v3, -0x1

    if-ltz v2, :cond_2

    .line 80
    aget-byte v4, p1, p2

    iget-object v5, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    aget-byte v6, v5, v2

    if-ne v4, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 81
    iput v2, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    .line 82
    iget v2, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    array-length v4, v5

    if-ne v2, v4, :cond_e

    .line 83
    iput v3, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    goto/16 :goto_1

    :cond_1
    if-lez v2, :cond_e

    sub-int/2addr p2, v2

    .line 89
    iput v0, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x2d

    const/16 v5, 0xd

    const/4 v6, -0x2

    const/4 v7, -0x4

    if-ne v2, v3, :cond_7

    .line 93
    aget-byte v2, p1, p2

    if-ne v2, v5, :cond_5

    .line 94
    iput v7, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    sub-int v2, p2, v1

    .line 95
    iget-object v3, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    array-length v3, v3

    sub-int/2addr v2, v3

    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 97
    :cond_3
    invoke-static {v2}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    new-instance v3, Lcom/koushikdutta/async/l;

    invoke-direct {v3}, Lcom/koushikdutta/async/l;-><init>()V

    .line 100
    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 101
    invoke-super {p0, p0, v3}, Lcom/koushikdutta/async/v;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/f;->onBoundaryStart()V

    goto/16 :goto_1

    .line 106
    :cond_5
    aget-byte v2, p1, p2

    if-ne v2, v4, :cond_6

    .line 107
    iput v6, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    goto/16 :goto_1

    .line 110
    :cond_6
    new-instance p1, Lcom/koushikdutta/async/http/e/i;

    const-string p2, "Invalid multipart/form-data. Expected \r or -"

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/http/e/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/e/f;->report(Ljava/lang/Exception;)V

    return-void

    :cond_7
    const/4 v3, -0x3

    if-ne v2, v6, :cond_9

    .line 115
    aget-byte v2, p1, p2

    if-ne v2, v4, :cond_8

    .line 116
    iput v3, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    goto :goto_1

    .line 119
    :cond_8
    new-instance p1, Lcom/koushikdutta/async/http/e/i;

    const-string p2, "Invalid multipart/form-data. Expected -"

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/http/e/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/e/f;->report(Ljava/lang/Exception;)V

    return-void

    :cond_9
    if-ne v2, v3, :cond_b

    .line 124
    aget-byte v2, p1, p2

    if-ne v2, v5, :cond_a

    .line 125
    iput v7, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    sub-int v2, p2, v1

    .line 126
    iget-object v3, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    array-length v3, v3

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    array-length v4, v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v3, p1, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 128
    new-instance v3, Lcom/koushikdutta/async/l;

    invoke-direct {v3}, Lcom/koushikdutta/async/l;-><init>()V

    .line 129
    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 130
    invoke-super {p0, p0, v3}, Lcom/koushikdutta/async/v;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 132
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e/f;->onBoundaryEnd()V

    goto :goto_1

    .line 135
    :cond_a
    new-instance p1, Lcom/koushikdutta/async/http/e/i;

    const-string p2, "Invalid multipart/form-data. Expected \r"

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/http/e/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/e/f;->report(Ljava/lang/Exception;)V

    return-void

    :cond_b
    if-ne v2, v7, :cond_d

    .line 140
    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_c

    add-int/lit8 v1, p2, 0x1

    .line 142
    iput v0, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    goto :goto_1

    .line 145
    :cond_c
    new-instance v2, Lcom/koushikdutta/async/http/e/i;

    const-string v3, "Invalid multipart/form-data. Expected \n"

    invoke-direct {v2, v3}, Lcom/koushikdutta/async/http/e/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/e/f;->report(Ljava/lang/Exception;)V

    goto :goto_1

    .line 149
    :cond_d
    sget-boolean v2, Lcom/koushikdutta/async/http/e/f;->m:Z

    if-eqz v2, :cond_f

    .line 150
    new-instance v2, Lcom/koushikdutta/async/http/e/i;

    const-string v3, "Invalid multipart/form-data. Unknown state?"

    invoke-direct {v2, v3}, Lcom/koushikdutta/async/http/e/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/e/f;->report(Ljava/lang/Exception;)V

    :cond_e
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 149
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 154
    :cond_10
    array-length p2, p1

    if-ge v1, p2, :cond_11

    .line 158
    iget p2, p0, Lcom/koushikdutta/async/http/e/f;->l:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 159
    array-length v0, p1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p1

    sub-int/2addr v2, v1

    sub-int/2addr v2, p2

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 161
    new-instance p2, Lcom/koushikdutta/async/l;

    invoke-direct {p2}, Lcom/koushikdutta/async/l;-><init>()V

    .line 162
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 163
    invoke-super {p0, p0, p2}, Lcom/koushikdutta/async/v;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    :cond_11
    return-void
.end method

.method public setBoundary(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r\n--"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/e/f;->d:[B

    return-void
.end method
