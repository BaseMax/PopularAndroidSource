.class abstract Lcom/a/a/c/aa$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "j"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lcom/a/a/c/aa$j;


# direct methods
.method public varargs constructor <init>(I[Lcom/a/a/c/aa$j;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/a/a/c/aa$j;->a:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/a/a/c/aa;->a()[Lcom/a/a/c/aa$j;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/a/a/c/aa$j;->b:[Lcom/a/a/c/aa$j;

    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/a/a/c/aa$j;->getSizeNoTag()I

    move-result v0

    .line 62
    invoke-static {v0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    iget v1, p0, Lcom/a/a/c/aa$j;->a:I

    invoke-static {v1}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSizeNoTag()I
    .locals 5

    .line 73
    invoke-virtual {p0}, Lcom/a/a/c/aa$j;->getPropertiesSize()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/a/a/c/aa$j;->b:[Lcom/a/a/c/aa$j;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 75
    invoke-virtual {v4}, Lcom/a/a/c/aa$j;->getSize()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public write(Lcom/a/a/c/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/a/a/c/aa$j;->a:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/c/e;->writeTag(II)V

    .line 88
    invoke-virtual {p0}, Lcom/a/a/c/aa$j;->getSizeNoTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/a/a/c/aa$j;->writeProperties(Lcom/a/a/c/e;)V

    .line 90
    iget-object v0, p0, Lcom/a/a/c/aa$j;->b:[Lcom/a/a/c/aa$j;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 91
    invoke-virtual {v3, p1}, Lcom/a/a/c/aa$j;->write(Lcom/a/a/c/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeProperties(Lcom/a/a/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
