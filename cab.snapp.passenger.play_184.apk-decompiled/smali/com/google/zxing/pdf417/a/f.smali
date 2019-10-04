.class final Lcom/google/zxing/pdf417/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/zxing/pdf417/a/a;

.field final b:[Lcom/google/zxing/pdf417/a/g;

.field c:Lcom/google/zxing/pdf417/a/c;

.field final d:I


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/a/a;Lcom/google/zxing/pdf417/a/c;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/pdf417/a/f;->a:Lcom/google/zxing/pdf417/a/a;

    .line 1039
    iget p1, p1, Lcom/google/zxing/pdf417/a/a;->a:I

    .line 37
    iput p1, p0, Lcom/google/zxing/pdf417/a/f;->d:I

    .line 38
    iput-object p2, p0, Lcom/google/zxing/pdf417/a/f;->c:Lcom/google/zxing/pdf417/a/c;

    .line 39
    iget p1, p0, Lcom/google/zxing/pdf417/a/f;->d:I

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/google/zxing/pdf417/a/g;

    iput-object p1, p0, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    return-void
.end method

.method static a(IILcom/google/zxing/pdf417/a/d;)I
    .locals 1

    if-nez p2, :cond_0

    return p1

    .line 175
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8076
    iput p0, p2, Lcom/google/zxing/pdf417/a/d;->e:I

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method final a(Lcom/google/zxing/pdf417/a/g;)V
    .locals 13

    if-eqz p1, :cond_e

    .line 56
    check-cast p1, Lcom/google/zxing/pdf417/a/h;

    iget-object v0, p0, Lcom/google/zxing/pdf417/a/f;->a:Lcom/google/zxing/pdf417/a/a;

    .line 2077
    iget-object v1, p1, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 3077
    iget-object v2, p1, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 3035
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    .line 3037
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/a/d;->b()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1049
    :cond_1
    invoke-virtual {p1, v1, v0}, Lcom/google/zxing/pdf417/a/h;->a([Lcom/google/zxing/pdf417/a/d;Lcom/google/zxing/pdf417/a/a;)V

    .line 4073
    iget-object v2, p1, Lcom/google/zxing/pdf417/a/g;->a:Lcom/google/zxing/pdf417/a/c;

    .line 1051
    iget-boolean v3, p1, Lcom/google/zxing/pdf417/a/h;->c:Z

    if-eqz v3, :cond_2

    .line 4142
    iget-object v3, v2, Lcom/google/zxing/pdf417/a/c;->b:Lcom/google/zxing/m;

    goto :goto_1

    .line 4146
    :cond_2
    iget-object v3, v2, Lcom/google/zxing/pdf417/a/c;->d:Lcom/google/zxing/m;

    .line 1052
    :goto_1
    iget-boolean v5, p1, Lcom/google/zxing/pdf417/a/h;->c:Z

    if-eqz v5, :cond_3

    .line 4150
    iget-object v2, v2, Lcom/google/zxing/pdf417/a/c;->c:Lcom/google/zxing/m;

    goto :goto_2

    .line 4154
    :cond_3
    iget-object v2, v2, Lcom/google/zxing/pdf417/a/c;->e:Lcom/google/zxing/m;

    .line 1053
    :goto_2
    invoke-virtual {v3}, Lcom/google/zxing/m;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v3}, Lcom/google/zxing/pdf417/a/h;->b(I)I

    move-result v3

    .line 1054
    invoke-virtual {v2}, Lcom/google/zxing/m;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/google/zxing/pdf417/a/h;->b(I)I

    move-result p1

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_3
    if-ge v3, p1, :cond_e

    .line 1062
    aget-object v8, v1, v3

    if-eqz v8, :cond_d

    .line 1065
    aget-object v8, v1, v3

    .line 5072
    iget v9, v8, Lcom/google/zxing/pdf417/a/d;->e:I

    sub-int/2addr v9, v2

    if-nez v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_4
    if-ne v9, v5, :cond_5

    .line 1082
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6072
    iget v6, v8, Lcom/google/zxing/pdf417/a/d;->e:I

    move v7, v2

    move v2, v6

    :goto_4
    const/4 v6, 0x1

    goto :goto_9

    :cond_5
    const/4 v10, 0x0

    if-ltz v9, :cond_c

    .line 7072
    iget v11, v8, Lcom/google/zxing/pdf417/a/d;->e:I

    .line 8047
    iget v12, v0, Lcom/google/zxing/pdf417/a/a;->e:I

    if-ge v11, v12, :cond_c

    if-le v9, v3, :cond_6

    goto :goto_8

    :cond_6
    const/4 v11, 0x2

    if-le v7, v11, :cond_7

    add-int/lit8 v11, v7, -0x2

    mul-int v9, v9, v11

    :cond_7
    if-lt v9, v3, :cond_8

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_5
    move v12, v11

    const/4 v11, 0x1

    :goto_6
    if-gt v11, v9, :cond_a

    if-nez v12, :cond_a

    sub-int v12, v3, v11

    .line 1100
    aget-object v12, v1, v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    if-eqz v12, :cond_b

    .line 1103
    aput-object v10, v1, v3

    goto :goto_9

    .line 8072
    :cond_b
    iget v2, v8, Lcom/google/zxing/pdf417/a/d;->e:I

    goto :goto_4

    .line 1088
    :cond_c
    :goto_8
    aput-object v10, v1, v3

    :cond_d
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 270
    iget-object v0, p0, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 272
    iget v2, p0, Lcom/google/zxing/pdf417/a/f;->d:I

    add-int/2addr v2, v3

    aget-object v2, v0, v2

    .line 274
    :cond_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v4, 0x0

    .line 9077
    :goto_0
    :try_start_0
    iget-object v5, v2, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 275
    array-length v5, v5

    if-ge v4, v5, :cond_4

    const-string v5, "CW %3d:"

    new-array v6, v3, [Ljava/lang/Object;

    .line 276
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v5, 0x0

    .line 277
    :goto_1
    iget v6, p0, Lcom/google/zxing/pdf417/a/f;->d:I

    const/4 v7, 0x2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    .line 278
    iget-object v6, p0, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v6, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "    |   "

    if-nez v6, :cond_1

    :try_start_1
    new-array v6, v1, [Ljava/lang/Object;

    .line 279
    invoke-virtual {v0, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 282
    :cond_1
    iget-object v6, p0, Lcom/google/zxing/pdf417/a/f;->b:[Lcom/google/zxing/pdf417/a/g;

    aget-object v6, v6, v5

    .line 10077
    iget-object v6, v6, Lcom/google/zxing/pdf417/a/g;->b:[Lcom/google/zxing/pdf417/a/d;

    .line 282
    aget-object v6, v6, v4

    if-nez v6, :cond_2

    new-array v6, v1, [Ljava/lang/Object;

    .line 284
    invoke-virtual {v0, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_2
    const-string v8, " %3d|%3d"

    new-array v7, v7, [Ljava/lang/Object;

    .line 11072
    iget v9, v6, Lcom/google/zxing/pdf417/a/d;->e:I

    .line 287
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v1

    .line 12068
    iget v6, v6, Lcom/google/zxing/pdf417/a/d;->d:I

    .line 287
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-virtual {v0, v8, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "%n"

    new-array v6, v1, [Ljava/lang/Object;

    .line 289
    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 291
    :cond_4
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 274
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 292
    :try_start_3
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
