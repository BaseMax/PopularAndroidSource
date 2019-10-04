.class final Lcom/a/a/c/aa$b;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/a/a;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/a/a/c/aa$j;

    const/4 v1, 0x4

    .line 431
    invoke-direct {p0, v1, v0}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    .line 432
    iget-wide v0, p1, Lcom/a/a/c/a/a/a;->baseAddress:J

    iput-wide v0, p0, Lcom/a/a/c/aa$b;->a:J

    .line 433
    iget-wide v0, p1, Lcom/a/a/c/a/a/a;->size:J

    iput-wide v0, p0, Lcom/a/a/c/aa$b;->b:J

    .line 434
    iget-object v0, p1, Lcom/a/a/c/a/a/a;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c/aa$b;->c:Ljava/lang/String;

    .line 435
    iget-object p1, p1, Lcom/a/a/c/a/a/a;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/a/a/c/aa$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 5

    .line 440
    iget-wide v0, p0, Lcom/a/a/c/aa$b;->a:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v0

    .line 441
    iget-wide v1, p0, Lcom/a/a/c/aa$b;->b:J

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v1

    .line 442
    iget-object v2, p0, Lcom/a/a/c/aa$b;->c:Ljava/lang/String;

    .line 443
    invoke-static {v2}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v2

    .line 444
    iget-object v3, p0, Lcom/a/a/c/aa$b;->d:Ljava/lang/String;

    .line 445
    invoke-static {v3}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v3

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    return v2
.end method

.method public final writeProperties(Lcom/a/a/c/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-wide v0, p0, Lcom/a/a/c/aa$b;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 453
    iget-wide v0, p0, Lcom/a/a/c/aa$b;->b:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 454
    iget-object v0, p0, Lcom/a/a/c/aa$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 455
    iget-object v0, p0, Lcom/a/a/c/aa$b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    return-void
.end method
