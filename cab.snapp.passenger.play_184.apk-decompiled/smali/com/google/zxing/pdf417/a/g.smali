.class Lcom/google/zxing/pdf417/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/zxing/pdf417/a/c;

.field final b:[Lcom/google/zxing/pdf417/a/d;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/a/c;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/zxing/pdf417/a/c;

    invoke-direct {v0, p1}, Lcom/google/zxing/pdf417/a/c;-><init>(Lcom/google/zxing/pdf417/a/c;)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/a/g;->a:Lcom/google/zxing/pdf417/a/c;

    .line 1138
    iget v0, p1, Lcom/google/zxing/pdf417/a/c;->i:I

    .line 2134
    iget p1, p1, Lcom/google/zxing/pdf417/a/c;->h:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 33
    new-array p1, v0, [Lcom/google/zxing/pdf417/a/d;

    iput-object p1, p0, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    return-void
.end method


# virtual methods
.method final a(I)Lcom/google/zxing/pdf417/a/d;
    .locals 4

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/a/g;->c(I)Lcom/google/zxing/pdf417/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/a/g;->b(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 44
    iget-object v2, p0, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    return-object v1

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/a/g;->b(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 50
    iget-object v2, p0, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 51
    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(ILcom/google/zxing/pdf417/a/d;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/a/g;->b(I)I

    move-result p1

    aput-object p2, v0, p1

    return-void
.end method

.method final b(I)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/zxing/pdf417/a/g;->a:Lcom/google/zxing/pdf417/a/c;

    .line 3134
    iget v0, v0, Lcom/google/zxing/pdf417/a/c;->h:I

    sub-int/2addr p1, v0

    return p1
.end method

.method final c(I)Lcom/google/zxing/pdf417/a/d;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/a/g;->b(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 82
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    const/4 v7, 0x1

    if-nez v6, :cond_0

    const-string v6, "%3d:    |   %n"

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v8

    goto :goto_1

    :cond_0
    const-string v8, "%3d: %3d|%3d%n"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v5, 0x1

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v3

    .line 4072
    iget v5, v6, Lcom/google/zxing/pdf417/a/d;->e:I

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v7

    const/4 v5, 0x2

    .line 5068
    iget v6, v6, Lcom/google/zxing/pdf417/a/d;->d:I

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v10

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 82
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 92
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
