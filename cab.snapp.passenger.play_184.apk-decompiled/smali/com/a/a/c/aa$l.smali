.class final Lcom/a/a/c/aa$l;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/a/e;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/a/a/c/aa$j;

    const/4 v1, 0x3

    .line 396
    invoke-direct {p0, v1, v0}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    .line 397
    iget-object v0, p1, Lcom/a/a/c/a/a/e;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c/aa$l;->a:Ljava/lang/String;

    .line 398
    iget-object v0, p1, Lcom/a/a/c/a/a/e;->code:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c/aa$l;->b:Ljava/lang/String;

    .line 399
    iget-wide v0, p1, Lcom/a/a/c/a/a/e;->faultAddress:J

    iput-wide v0, p0, Lcom/a/a/c/aa$l;->c:J

    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/a/a/c/aa$l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/a/a/c/aa$l;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    iget-wide v1, p0, Lcom/a/a/c/aa$l;->c:J

    const/4 v3, 0x3

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

    .line 412
    iget-object v0, p0, Lcom/a/a/c/aa$l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 413
    iget-object v0, p0, Lcom/a/a/c/aa$l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 414
    iget-wide v0, p0, Lcom/a/a/c/aa$l;->c:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    return-void
.end method
