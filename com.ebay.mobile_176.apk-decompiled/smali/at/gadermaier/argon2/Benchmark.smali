.class public Lat/gadermaier/argon2/Benchmark;
.super Ljava/lang/Object;
.source "Benchmark.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static benchmark(I)V
    .locals 21

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "threads;memory;seconds"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 31
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [Lat/gadermaier/argon2/model/Argon2Type;

    sget-object v3, Lat/gadermaier/argon2/model/Argon2Type;->Argon2i:Lat/gadermaier/argon2/model/Argon2Type;

    const/4 v13, 0x0

    aput-object v3, v2, v13

    sget-object v3, Lat/gadermaier/argon2/model/Argon2Type;->Argon2d:Lat/gadermaier/argon2/model/Argon2Type;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0x10

    .line 34
    new-array v14, v3, [B

    .line 35
    new-array v15, v3, [B

    fill-array-data v15, :array_1

    .line 38
    invoke-static {}, Lat/gadermaier/argon2/Argon2Factory;->create()Lat/gadermaier/argon2/Argon2;

    move-result-object v3

    const/16 v4, 0xa

    .line 39
    invoke-virtual {v3, v4}, Lat/gadermaier/argon2/Argon2;->setIterations(I)Lat/gadermaier/argon2/Argon2;

    move-result-object v3

    .line 40
    invoke-virtual {v3, v0}, Lat/gadermaier/argon2/Argon2;->setParallelism(I)Lat/gadermaier/argon2/Argon2;

    move-result-object v3

    const-string v5, "password"

    .line 41
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const-string/jumbo v6, "saltsalt"

    invoke-virtual {v3, v5, v6}, Lat/gadermaier/argon2/Argon2;->hash([CLjava/lang/String;)V

    const/16 v11, 0xa

    :goto_0
    move/from16 v12, p0

    if-gt v11, v12, :cond_1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_0

    const-wide/16 v16, 0x0

    .line 48
    aget v18, v1, v9

    const/16 v19, 0x3

    const/16 v3, 0x10

    const/4 v4, 0x3

    move v5, v11

    move-object v6, v2

    move-object v7, v14

    move-object v8, v15

    move/from16 v20, v9

    move-wide/from16 v9, v16

    move/from16 v16, v11

    move/from16 v11, v18

    move/from16 v12, v19

    .line 51
    invoke-static/range {v3 .. v12}, Lat/gadermaier/argon2/Benchmark;->run(III[Lat/gadermaier/argon2/model/Argon2Type;[B[BDII)V

    .line 52
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v9, v20, 0x1

    move/from16 v12, p0

    move/from16 v11, v16

    goto :goto_1

    :cond_0
    move/from16 v16, v11

    add-int/lit8 v11, v16, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 12
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 13
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lat/gadermaier/argon2/Benchmark;->benchmark(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x12

    .line 15
    invoke-static {p0}, Lat/gadermaier/argon2/Benchmark;->benchmark(I)V

    :goto_0
    return-void
.end method

.method private static run(III[Lat/gadermaier/argon2/model/Argon2Type;[B[BDII)V
    .locals 17

    move/from16 v0, p2

    move/from16 v1, p8

    move/from16 v2, p9

    move-wide/from16 v5, p6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    move-wide v6, v5

    const/4 v5, 0x0

    :goto_1
    const/4 v8, 0x2

    if-ge v5, v8, :cond_0

    .line 63
    aget-object v9, p3, v5

    .line 66
    invoke-static {}, Lat/gadermaier/argon2/Argon2Factory;->create()Lat/gadermaier/argon2/Argon2;

    move-result-object v10

    move/from16 v11, p1

    .line 67
    invoke-virtual {v10, v11}, Lat/gadermaier/argon2/Argon2;->setIterations(I)Lat/gadermaier/argon2/Argon2;

    move-result-object v10

    .line 68
    invoke-virtual {v10, v0}, Lat/gadermaier/argon2/Argon2;->setMemory(I)Lat/gadermaier/argon2/Argon2;

    move-result-object v10

    .line 69
    invoke-virtual {v10, v1}, Lat/gadermaier/argon2/Argon2;->setParallelism(I)Lat/gadermaier/argon2/Argon2;

    move-result-object v10

    .line 70
    invoke-virtual {v10, v9}, Lat/gadermaier/argon2/Argon2;->setType(Lat/gadermaier/argon2/model/Argon2Type;)Lat/gadermaier/argon2/Argon2;

    move-result-object v9

    const/16 v10, 0x13

    .line 71
    invoke-virtual {v9, v10}, Lat/gadermaier/argon2/Argon2;->setVersion(I)Lat/gadermaier/argon2/Argon2;

    move-result-object v9

    move/from16 v10, p0

    .line 72
    invoke-virtual {v9, v10}, Lat/gadermaier/argon2/Argon2;->setOutputLength(I)Lat/gadermaier/argon2/Argon2;

    move-result-object v9

    .line 74
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 75
    invoke-virtual {v9, v14, v15}, Lat/gadermaier/argon2/Argon2;->hash([B[B)V

    move/from16 v16, v4

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-double v3, v3

    long-to-double v12, v12

    sub-double/2addr v3, v12

    add-double/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    goto :goto_1

    :cond_0
    move/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, v4

    add-int/lit8 v4, v16, 0x1

    move-wide v5, v6

    goto :goto_0

    :cond_1
    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    int-to-double v7, v2

    mul-double v7, v7, v3

    div-double/2addr v5, v7

    .line 86
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
