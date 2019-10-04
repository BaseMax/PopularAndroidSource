.class final Lcom/a/a/c/aa$g;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/a/f$a;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/a/a/c/aa$j;

    const/4 v1, 0x3

    .line 356
    invoke-direct {p0, v1, v0}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    .line 357
    iget-wide v0, p1, Lcom/a/a/c/a/a/f$a;->address:J

    iput-wide v0, p0, Lcom/a/a/c/aa$g;->a:J

    .line 358
    iget-object v0, p1, Lcom/a/a/c/a/a/f$a;->symbol:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c/aa$g;->b:Ljava/lang/String;

    .line 359
    iget-object v0, p1, Lcom/a/a/c/a/a/f$a;->file:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c/aa$g;->c:Ljava/lang/String;

    .line 360
    iget-wide v0, p1, Lcom/a/a/c/a/a/f$a;->offset:J

    iput-wide v0, p0, Lcom/a/a/c/aa$g;->d:J

    .line 361
    iget p1, p1, Lcom/a/a/c/a/a/f$a;->importance:I

    iput p1, p0, Lcom/a/a/c/aa$g;->e:I

    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 4

    .line 366
    iget-wide v0, p0, Lcom/a/a/c/aa$g;->a:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/a/a/c/aa$g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    iget-object v1, p0, Lcom/a/a/c/aa$g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    iget-wide v1, p0, Lcom/a/a/c/aa$g;->d:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    iget v1, p0, Lcom/a/a/c/aa$g;->e:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeProperties(Lcom/a/a/c/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-wide v0, p0, Lcom/a/a/c/aa$g;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 377
    iget-object v0, p0, Lcom/a/a/c/aa$g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 378
    iget-object v0, p0, Lcom/a/a/c/aa$g;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 379
    iget-wide v0, p0, Lcom/a/a/c/aa$g;->d:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 380
    iget v0, p0, Lcom/a/a/c/aa$g;->e:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeUInt32(II)V

    return-void
.end method
