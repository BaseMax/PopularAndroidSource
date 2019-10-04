.class final Lcom/a/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/e$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/a/a/c/e;->d:Ljava/io/OutputStream;

    .line 89
    iput-object p2, p0, Lcom/a/a/c/e;->a:[B

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/a/a/c/e;->c:I

    .line 91
    array-length p1, p2

    iput p1, p0, Lcom/a/a/c/e;->b:I

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/a/a/c/e;->d:Ljava/io/OutputStream;

    .line 82
    iput-object p1, p0, Lcom/a/a/c/e;->a:[B

    .line 83
    iput p2, p0, Lcom/a/a/c/e;->c:I

    add-int/2addr p2, p3

    .line 84
    iput p2, p0, Lcom/a/a/c/e;->b:I

    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/a/a/c/e;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 668
    iget-object v1, p0, Lcom/a/a/c/e;->a:[B

    iget v2, p0, Lcom/a/a/c/e;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 669
    iput v3, p0, Lcom/a/a/c/e;->c:I

    return-void

    .line 663
    :cond_0
    new-instance v0, Lcom/a/a/c/e$a;

    invoke-direct {v0}, Lcom/a/a/c/e$a;-><init>()V

    throw v0
.end method

.method public static computeBoolSize(IZ)I
    .locals 0

    .line 428
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeBoolSizeNoTag(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static computeBytesSize(ILcom/a/a/c/b;)I
    .locals 0

    .line 446
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeBytesSizeNoTag(Lcom/a/a/c/b;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeBytesSizeNoTag(Lcom/a/a/c/b;)I
    .locals 1

    .line 602
    invoke-virtual {p0}, Lcom/a/a/c/b;->size()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v0

    .line 603
    invoke-virtual {p0}, Lcom/a/a/c/b;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 0

    .line 369
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/a/a/c/e;->computeDoubleSizeNoTag(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static computeEnumSize(II)I
    .locals 0

    .line 463
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeEnumSizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 0

    .line 619
    invoke-static {p0}, Lcom/a/a/c/e;->computeInt32SizeNoTag(I)I

    move-result p0

    return p0
.end method

.method public static computeFixed32Size(II)I
    .locals 0

    .line 419
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 0

    .line 410
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/a/a/c/e;->computeFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static computeFloatSize(IF)I
    .locals 0

    .line 377
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeFloatSizeNoTag(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static computeInt32Size(II)I
    .locals 0

    .line 401
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 552
    invoke-static {p0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static computeInt64Size(IJ)I
    .locals 0

    .line 393
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/a/a/c/e;->computeInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 0

    .line 543
    invoke-static {p0, p1}, Lcom/a/a/c/e;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static computeRawMessageSetExtensionSize(ILcom/a/a/c/b;)I
    .locals 2

    const/4 v0, 0x1

    .line 507
    invoke-static {v0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 508
    invoke-static {v1, p0}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 509
    invoke-static {p0, p1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 5

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static computeSFixed32Size(II)I
    .locals 0

    .line 472
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeSFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 0

    .line 481
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/a/a/c/e;->computeSFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static computeSInt32Size(II)I
    .locals 0

    .line 489
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeSInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 0

    .line 643
    invoke-static {p0}, Lcom/a/a/c/e;->encodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 0

    .line 497
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/a/a/c/e;->computeSInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 0

    .line 651
    invoke-static {p0, p1}, Lcom/a/a/c/e;->encodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/a/a/c/e;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 0

    .line 437
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 589
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 590
    array-length v0, p0

    invoke-static {v0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v0

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p0

    return v0

    :catch_0
    move-exception p0

    .line 593
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static computeTagSize(I)I
    .locals 1

    const/4 v0, 0x0

    .line 834
    invoke-static {p0, v0}, Lcom/a/a/c/ao;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeUInt32Size(II)I
    .locals 0

    .line 454
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/a/a/c/e;->computeUInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 0

    .line 611
    invoke-static {p0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 0

    .line 385
    invoke-static {p0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/a/a/c/e;->computeUInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 0

    .line 535
    invoke-static {p0, p1}, Lcom/a/a/c/e;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static encodeZigZag32(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static encodeZigZag64(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/a/a/c/e;
    .locals 1

    const/16 v0, 0x1000

    .line 99
    invoke-static {p0, v0}, Lcom/a/a/c/e;->newInstance(Ljava/io/OutputStream;I)Lcom/a/a/c/e;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Lcom/a/a/c/e;
    .locals 1

    .line 108
    new-instance v0, Lcom/a/a/c/e;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, Lcom/a/a/c/e;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/a/a/c/e;
    .locals 2

    .line 119
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/a/a/c/e;->newInstance([BII)Lcom/a/a/c/e;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([BII)Lcom/a/a/c/e;
    .locals 1

    .line 132
    new-instance v0, Lcom/a/a/c/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/c/e;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final checkNoSpaceLeft()V
    .locals 2

    .line 704
    invoke-virtual {p0}, Lcom/a/a/c/e;->spaceLeft()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/a/a/c/e;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/a/a/c/e;->a()V

    :cond_0
    return-void
.end method

.method public final spaceLeft()I
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/a/a/c/e;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 688
    iget v0, p0, Lcom/a/a/c/e;->b:I

    iget v1, p0, Lcom/a/a/c/e;->c:I

    sub-int/2addr v0, v1

    return v0

    .line 690
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 190
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeBoolNoTag(Z)V

    return-void
.end method

.method public final writeBoolNoTag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawByte(I)V

    return-void
.end method

.method public final writeBytes(ILcom/a/a/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 204
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeBytesNoTag(Lcom/a/a/c/b;)V

    return-void
.end method

.method public final writeBytesNoTag(Lcom/a/a/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-virtual {p1}, Lcom/a/a/c/b;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawBytes(Lcom/a/a/c/b;)V

    return-void
.end method

.method public final writeDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 141
    invoke-virtual {p0, p2, p3}, Lcom/a/a/c/e;->writeDoubleNoTag(D)V

    return-void
.end method

.method public final writeDoubleNoTag(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/e;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public final writeEnum(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 221
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeEnumNoTag(I)V

    return-void
.end method

.method public final writeEnumNoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeInt32NoTag(I)V

    return-void
.end method

.method public final writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 183
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeFixed32NoTag(I)V

    return-void
.end method

.method public final writeFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public final writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 176
    invoke-virtual {p0, p2, p3}, Lcom/a/a/c/e;->writeFixed64NoTag(J)V

    return-void
.end method

.method public final writeFixed64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/e;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public final writeFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 148
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeFloatNoTag(F)V

    return-void
.end method

.method public final writeFloatNoTag(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public final writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 169
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeInt32NoTag(I)V

    return-void
.end method

.method public final writeInt32NoTag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 293
    invoke-virtual {p0, v0, v1}, Lcom/a/a/c/e;->writeRawVarint64(J)V

    return-void
.end method

.method public final writeInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 162
    invoke-virtual {p0, p2, p3}, Lcom/a/a/c/e;->writeInt64NoTag(J)V

    return-void
.end method

.method public final writeInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/e;->writeRawVarint64(J)V

    return-void
.end method

.method public final writeRawByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    iget v0, p0, Lcom/a/a/c/e;->c:I

    iget v1, p0, Lcom/a/a/c/e;->b:I

    if-ne v0, v1, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/a/a/c/e;->a()V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/e;->a:[B

    iget v1, p0, Lcom/a/a/c/e;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/c/e;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final writeRawByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 735
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawByte(B)V

    return-void
.end method

.method public final writeRawBytes(Lcom/a/a/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    invoke-virtual {p1}, Lcom/a/a/c/b;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/a/a/c/e;->writeRawBytes(Lcom/a/a/c/b;II)V

    return-void
.end method

.method public final writeRawBytes(Lcom/a/a/c/b;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    iget v0, p0, Lcom/a/a/c/e;->b:I

    iget v1, p0, Lcom/a/a/c/e;->c:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    .line 784
    iget-object v0, p0, Lcom/a/a/c/e;->a:[B

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/a/a/c/b;->copyTo([BIII)V

    .line 785
    iget p1, p0, Lcom/a/a/c/e;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/a/a/c/e;->c:I

    return-void

    :cond_0
    sub-int/2addr v0, v1

    .line 790
    iget-object v2, p0, Lcom/a/a/c/e;->a:[B

    invoke-virtual {p1, v2, p2, v1, v0}, Lcom/a/a/c/b;->copyTo([BIII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 793
    iget v0, p0, Lcom/a/a/c/e;->b:I

    iput v0, p0, Lcom/a/a/c/e;->c:I

    .line 794
    invoke-direct {p0}, Lcom/a/a/c/e;->a()V

    .line 799
    iget v0, p0, Lcom/a/a/c/e;->b:I

    const/4 v1, 0x0

    if-gt p3, v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/a/a/c/e;->a:[B

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/a/a/c/b;->copyTo([BIII)V

    .line 802
    iput p3, p0, Lcom/a/a/c/e;->c:I

    return-void

    .line 808
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/c/b;->newInput()Ljava/io/InputStream;

    move-result-object p1

    int-to-long v2, p2

    .line 809
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    :goto_0
    if-lez p3, :cond_3

    .line 814
    iget p2, p0, Lcom/a/a/c/e;->b:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 815
    iget-object v0, p0, Lcom/a/a/c/e;->a:[B

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 819
    iget-object p2, p0, Lcom/a/a/c/e;->d:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/a/a/c/e;->a:[B

    invoke-virtual {p2, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    goto :goto_0

    .line 817
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void

    .line 810
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Skip failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final writeRawBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/a/a/c/e;->writeRawBytes([BII)V

    return-void
.end method

.method public final writeRawBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    iget v0, p0, Lcom/a/a/c/e;->b:I

    iget v1, p0, Lcom/a/a/c/e;->c:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    .line 753
    iget-object v0, p0, Lcom/a/a/c/e;->a:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    iget p1, p0, Lcom/a/a/c/e;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/a/a/c/e;->c:I

    return-void

    :cond_0
    sub-int/2addr v0, v1

    .line 759
    iget-object v2, p0, Lcom/a/a/c/e;->a:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 762
    iget v0, p0, Lcom/a/a/c/e;->b:I

    iput v0, p0, Lcom/a/a/c/e;->c:I

    .line 763
    invoke-direct {p0}, Lcom/a/a/c/e;->a()V

    .line 768
    iget v0, p0, Lcom/a/a/c/e;->b:I

    if-gt p3, v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/a/a/c/e;->a:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    iput p3, p0, Lcom/a/a/c/e;->c:I

    return-void

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/a/a/c/e;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final writeRawLittleEndian32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    .line 895
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 896
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 897
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 898
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawByte(I)V

    return-void
.end method

.method public final writeRawLittleEndian64(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 905
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 906
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 907
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 908
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 909
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 910
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 911
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    .line 912
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawByte(I)V

    return-void
.end method

.method public final writeRawMessageSetExtension(ILcom/a/a/c/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 259
    invoke-virtual {p0, v1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    const/4 v2, 0x2

    .line 260
    invoke-virtual {p0, v2, p1}, Lcom/a/a/c/e;->writeUInt32(II)V

    .line 261
    invoke-virtual {p0, v0, p2}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    const/4 p1, 0x4

    .line 262
    invoke-virtual {p0, v1, p1}, Lcom/a/a/c/e;->writeTag(II)V

    return-void
.end method

.method public final writeRawVarint32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 844
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawByte(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 847
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final writeRawVarint64(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    long-to-int p2, p1

    .line 870
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeRawByte(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 873
    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public final writeSFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 228
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeSFixed32NoTag(I)V

    return-void
.end method

.method public final writeSFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public final writeSFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 235
    invoke-virtual {p0, p2, p3}, Lcom/a/a/c/e;->writeSFixed64NoTag(J)V

    return-void
.end method

.method public final writeSFixed64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/e;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public final writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 242
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeSInt32NoTag(I)V

    return-void
.end method

.method public final writeSInt32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-static {p1}, Lcom/a/a/c/e;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    return-void
.end method

.method public final writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 249
    invoke-virtual {p0, p2, p3}, Lcom/a/a/c/e;->writeSInt64NoTag(J)V

    return-void
.end method

.method public final writeSInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-static {p1, p2}, Lcom/a/a/c/e;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/e;->writeRawVarint64(J)V

    return-void
.end method

.method public final writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 197
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public final writeStringNoTag(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 318
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 319
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawBytes([B)V

    return-void
.end method

.method public final writeTag(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    invoke-static {p1, p2}, Lcom/a/a/c/ao;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    return-void
.end method

.method public final writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 211
    invoke-virtual {p0, p2}, Lcom/a/a/c/e;->writeUInt32NoTag(I)V

    return-void
.end method

.method public final writeUInt32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    return-void
.end method

.method public final writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 155
    invoke-virtual {p0, p2, p3}, Lcom/a/a/c/e;->writeUInt64NoTag(J)V

    return-void
.end method

.method public final writeUInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/a/a/c/e;->writeRawVarint64(J)V

    return-void
.end method
