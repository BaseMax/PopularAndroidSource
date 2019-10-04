.class final Lcom/a/a/c/aa$m;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/a/f;Lcom/a/a/c/aa$k;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/a/a/c/aa$j;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 317
    invoke-direct {p0, v0, v1}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    .line 318
    iget-object p2, p1, Lcom/a/a/c/a/a/f;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/c/aa$m;->a:Ljava/lang/String;

    .line 319
    iget p1, p1, Lcom/a/a/c/a/a/f;->importance:I

    iput p1, p0, Lcom/a/a/c/aa$m;->b:I

    return-void
.end method

.method private a()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/a/a/c/aa$m;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 3

    .line 324
    invoke-direct {p0}, Lcom/a/a/c/aa$m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/c/aa$m;->a:Ljava/lang/String;

    .line 325
    invoke-static {v1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    .line 326
    iget v2, p0, Lcom/a/a/c/aa$m;->b:I

    invoke-static {v1, v2}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final writeProperties(Lcom/a/a/c/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Lcom/a/a/c/aa$m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 332
    iget-object v1, p0, Lcom/a/a/c/aa$m;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    :cond_0
    const/4 v0, 0x2

    .line 334
    iget v1, p0, Lcom/a/a/c/aa$m;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/a/a/c/e;->writeUInt32(II)V

    return-void
.end method
