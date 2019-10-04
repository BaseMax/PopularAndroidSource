.class final Lcom/a/a/c/aa$d;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:F

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(FIZIJJ)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/a/a/c/aa$j;

    const/4 v1, 0x5

    .line 225
    invoke-direct {p0, v1, v0}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    .line 227
    iput p1, p0, Lcom/a/a/c/aa$d;->a:F

    .line 228
    iput p2, p0, Lcom/a/a/c/aa$d;->b:I

    .line 229
    iput-boolean p3, p0, Lcom/a/a/c/aa$d;->c:Z

    .line 230
    iput p4, p0, Lcom/a/a/c/aa$d;->d:I

    .line 231
    iput-wide p5, p0, Lcom/a/a/c/aa$d;->e:J

    .line 232
    iput-wide p7, p0, Lcom/a/a/c/aa$d;->f:J

    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 4

    .line 238
    iget v0, p0, Lcom/a/a/c/aa$d;->a:F

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/a/a/c/e;->computeFloatSize(IF)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 239
    iget v1, p0, Lcom/a/a/c/aa$d;->b:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    iget-boolean v1, p0, Lcom/a/a/c/aa$d;->c:Z

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    iget v1, p0, Lcom/a/a/c/aa$d;->d:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    iget-wide v1, p0, Lcom/a/a/c/aa$d;->e:J

    const/4 v3, 0x5

    invoke-static {v3, v1, v2}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    iget-wide v1, p0, Lcom/a/a/c/aa$d;->f:J

    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

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

    .line 249
    iget v0, p0, Lcom/a/a/c/aa$d;->a:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeFloat(IF)V

    .line 250
    iget v0, p0, Lcom/a/a/c/aa$d;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeSInt32(II)V

    .line 251
    iget-boolean v0, p0, Lcom/a/a/c/aa$d;->c:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBool(IZ)V

    .line 252
    iget v0, p0, Lcom/a/a/c/aa$d;->d:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeUInt32(II)V

    .line 253
    iget-wide v0, p0, Lcom/a/a/c/aa$d;->e:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 254
    iget-wide v0, p0, Lcom/a/a/c/aa$d;->f:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    return-void
.end method
