.class public final Lorg/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:C

.field protected b:Ljava/lang/Appendable;

.field private c:Z

.field private final d:[Lorg/a/c;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lorg/a/h;->c:Z

    const/16 v1, 0x69

    .line 100
    iput-char v1, p0, Lorg/a/h;->a:C

    const/16 v1, 0xc8

    new-array v1, v1, [Lorg/a/c;

    .line 101
    iput-object v1, p0, Lorg/a/h;->d:[Lorg/a/c;

    .line 102
    iput v0, p0, Lorg/a/h;->e:I

    .line 103
    iput-object p1, p0, Lorg/a/h;->b:Ljava/lang/Appendable;

    return-void
.end method

.method private a(CC)Lorg/a/h;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 164
    iget-char v0, p0, Lorg/a/h;->a:C

    const/16 v1, 0x61

    if-eq v0, p1, :cond_1

    .line 165
    new-instance p2, Lorg/a/b;

    if-ne p1, v1, :cond_0

    const-string p1, "Misplaced endArray."

    goto :goto_0

    :cond_0
    const-string p1, "Misplaced endObject."

    .line 167
    :goto_0
    invoke-direct {p2, p1}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1271
    :cond_1
    iget v0, p0, Lorg/a/h;->e:I

    const-string v2, "Nesting error."

    if-lez v0, :cond_6

    .line 1274
    iget-object v3, p0, Lorg/a/h;->d:[Lorg/a/c;

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    aget-object v0, v3, v0

    const/16 v3, 0x6b

    if-nez v0, :cond_2

    const/16 v0, 0x61

    goto :goto_1

    :cond_2
    const/16 v0, 0x6b

    :goto_1
    if-ne v0, p1, :cond_5

    .line 1278
    iget p1, p0, Lorg/a/h;->e:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/a/h;->e:I

    .line 1279
    iget p1, p0, Lorg/a/h;->e:I

    if-nez p1, :cond_3

    const/16 v1, 0x64

    goto :goto_2

    .line 1281
    :cond_3
    iget-object v0, p0, Lorg/a/h;->d:[Lorg/a/c;

    sub-int/2addr p1, v4

    aget-object p1, v0, p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x6b

    .line 1283
    :goto_2
    iput-char v1, p0, Lorg/a/h;->a:C

    .line 171
    :try_start_0
    iget-object p1, p0, Lorg/a/h;->b:Ljava/lang/Appendable;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    iput-boolean v4, p0, Lorg/a/h;->c:Z

    return-object p0

    :catch_0
    move-exception p1

    .line 176
    new-instance p2, Lorg/a/b;

    invoke-direct {p2, p1}, Lorg/a/b;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1276
    :cond_5
    new-instance p1, Lorg/a/b;

    invoke-direct {p1, v2}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1272
    :cond_6
    new-instance p1, Lorg/a/b;

    invoke-direct {p1, v2}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Lorg/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 116
    iget-char v0, p0, Lorg/a/h;->a:C

    const/16 v1, 0x61

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance p1, Lorg/a/b;

    const-string v0, "Value out of sequence."

    invoke-direct {p1, v0}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/a/h;->c:Z

    if-eqz v0, :cond_2

    iget-char v0, p0, Lorg/a/h;->a:C

    if-ne v0, v1, :cond_2

    .line 119
    iget-object v0, p0, Lorg/a/h;->b:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 121
    :cond_2
    iget-object v0, p0, Lorg/a/h;->b:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-char p1, p0, Lorg/a/h;->a:C

    if-ne p1, v2, :cond_3

    const/16 p1, 0x6b

    .line 129
    iput-char p1, p0, Lorg/a/h;->a:C

    :cond_3
    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lorg/a/h;->c:Z

    return-object p0

    :catch_0
    move-exception p1

    .line 126
    new-instance v0, Lorg/a/b;

    invoke-direct {v0, p1}, Lorg/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :cond_4
    new-instance p1, Lorg/a/b;

    const-string v0, "Null pointer"

    invoke-direct {p1, v0}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lorg/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 292
    iget v0, p0, Lorg/a/h;->e:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    .line 295
    iget-object v1, p0, Lorg/a/h;->d:[Lorg/a/c;

    aput-object p1, v1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x61

    goto :goto_0

    :cond_0
    const/16 p1, 0x6b

    .line 296
    :goto_0
    iput-char p1, p0, Lorg/a/h;->a:C

    .line 297
    iget p1, p0, Lorg/a/h;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/a/h;->e:I

    return-void

    .line 293
    :cond_1
    new-instance p1, Lorg/a/b;

    const-string v0, "Nesting too deep."

    invoke-direct {p1, v0}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 328
    :cond_0
    instance-of v0, p0, Lorg/a/f;

    if-eqz v0, :cond_2

    .line 331
    :try_start_0
    check-cast p0, Lorg/a/f;

    invoke-interface {p0}, Lorg/a/f;->toJSONString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 336
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 338
    :cond_1
    new-instance v0, Lorg/a/b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Bad value from toJSONString: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    .line 333
    new-instance v0, Lorg/a/b;

    invoke-direct {v0, p0}, Lorg/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 340
    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 342
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/a/c;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    .line 346
    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 352
    :catch_1
    invoke-static {p0}, Lorg/a/c;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 355
    :cond_3
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_9

    instance-of v0, p0, Lorg/a/c;

    if-nez v0, :cond_9

    instance-of v0, p0, Lorg/a/a;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 359
    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 360
    check-cast p0, Ljava/util/Map;

    .line 361
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p0}, Lorg/a/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 363
    :cond_5
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_6

    .line 364
    check-cast p0, Ljava/util/Collection;

    .line 365
    new-instance v0, Lorg/a/a;

    invoke-direct {v0, p0}, Lorg/a/a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/a/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 367
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    new-instance v0, Lorg/a/a;

    invoke-direct {v0, p0}, Lorg/a/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/a/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 370
    :cond_7
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_8

    .line 371
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/a/c;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 373
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/a/c;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 357
    :cond_9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_1
    const-string p0, "null"

    return-object p0
.end method


# virtual methods
.method public final array()Lorg/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 147
    iget-char v0, p0, Lorg/a/h;->a:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lorg/a/b;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lorg/a/h;->a(Lorg/a/c;)V

    const-string v0, "["

    .line 149
    invoke-direct {p0, v0}, Lorg/a/h;->a(Ljava/lang/String;)Lorg/a/h;

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lorg/a/h;->c:Z

    return-object p0
.end method

.method public final endArray()Lorg/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    const/16 v0, 0x61

    const/16 v1, 0x5d

    .line 189
    invoke-direct {p0, v0, v1}, Lorg/a/h;->a(CC)Lorg/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final endObject()Lorg/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    const/16 v0, 0x6b

    const/16 v1, 0x7d

    .line 199
    invoke-direct {p0, v0, v1}, Lorg/a/h;->a(CC)Lorg/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final key(Ljava/lang/String;)Lorg/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 214
    iget-char v0, p0, Lorg/a/h;->a:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_2

    .line 216
    :try_start_0
    iget-object v0, p0, Lorg/a/h;->d:[Lorg/a/c;

    iget v1, p0, Lorg/a/h;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 218
    invoke-virtual {v0, p1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-virtual {v0, p1, v2}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    .line 222
    iget-boolean v0, p0, Lorg/a/h;->c:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/a/h;->b:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/a/h;->b:Ljava/lang/Appendable;

    invoke-static {p1}, Lorg/a/c;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 226
    iget-object p1, p0, Lorg/a/h;->b:Ljava/lang/Appendable;

    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p1, 0x0

    .line 227
    iput-boolean p1, p0, Lorg/a/h;->c:Z

    const/16 p1, 0x6f

    .line 228
    iput-char p1, p0, Lorg/a/h;->a:C

    return-object p0

    .line 219
    :cond_1
    new-instance v0, Lorg/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate key \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 234
    new-instance v0, Lorg/a/b;

    invoke-direct {v0, p1}, Lorg/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 237
    :cond_2
    new-instance p1, Lorg/a/b;

    const-string v0, "Misplaced key."

    invoke-direct {p1, v0}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_3
    new-instance p1, Lorg/a/b;

    const-string v0, "Null key."

    invoke-direct {p1, v0}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final object()Lorg/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 251
    iget-char v0, p0, Lorg/a/h;->a:C

    const/16 v1, 0x6f

    const/16 v2, 0x69

    if-ne v0, v2, :cond_0

    .line 252
    iput-char v1, p0, Lorg/a/h;->a:C

    .line 254
    :cond_0
    iget-char v0, p0, Lorg/a/h;->a:C

    if-eq v0, v1, :cond_2

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    new-instance v0, Lorg/a/b;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "{"

    .line 255
    invoke-direct {p0, v0}, Lorg/a/h;->a(Ljava/lang/String;)Lorg/a/h;

    .line 256
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    invoke-direct {p0, v0}, Lorg/a/h;->a(Lorg/a/c;)V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lorg/a/h;->c:Z

    return-object p0
.end method

.method public final value(D)Lorg/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 394
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/h;->value(Ljava/lang/Object;)Lorg/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final value(J)Lorg/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 404
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/h;->a(Ljava/lang/String;)Lorg/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final value(Ljava/lang/Object;)Lorg/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 416
    invoke-static {p1}, Lorg/a/h;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/h;->a(Ljava/lang/String;)Lorg/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final value(Z)Lorg/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 384
    :goto_0
    invoke-direct {p0, p1}, Lorg/a/h;->a(Ljava/lang/String;)Lorg/a/h;

    move-result-object p1

    return-object p1
.end method
