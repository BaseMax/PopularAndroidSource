.class public final Lorg/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private c:J

.field private d:J

.field private e:C

.field private final f:Ljava/io/Reader;

.field private g:Z

.field private h:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 84
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/a/g;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/a/g;->f:Ljava/io/Reader;

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lorg/a/g;->b:Z

    .line 70
    iput-boolean p1, p0, Lorg/a/g;->g:Z

    .line 71
    iput-char p1, p0, Lorg/a/g;->e:C

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lorg/a/g;->c:J

    const-wide/16 v2, 0x1

    .line 73
    iput-wide v2, p0, Lorg/a/g;->a:J

    .line 74
    iput-wide v0, p0, Lorg/a/g;->h:J

    .line 75
    iput-wide v2, p0, Lorg/a/g;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 94
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/a/g;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public static dehexchar(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final back()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Lorg/a/g;->g:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/a/g;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 1118
    iput-wide v0, p0, Lorg/a/g;->c:J

    .line 1119
    iget-char v0, p0, Lorg/a/g;->e:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1122
    :cond_0
    iget-wide v0, p0, Lorg/a/g;->a:J

    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    sub-long/2addr v0, v4

    .line 1123
    iput-wide v0, p0, Lorg/a/g;->a:J

    goto :goto_1

    .line 1120
    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/a/g;->d:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/a/g;->d:J

    .line 1121
    iget-wide v0, p0, Lorg/a/g;->h:J

    iput-wide v0, p0, Lorg/a/g;->a:J

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lorg/a/g;->g:Z

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lorg/a/g;->b:Z

    return-void

    .line 107
    :cond_3
    new-instance v0, Lorg/a/b;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final end()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/a/g;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/a/g;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final more()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 164
    iget-boolean v0, p0, Lorg/a/g;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/a/g;->f:Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/io/Reader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :try_start_1
    iget-object v0, p0, Lorg/a/g;->f:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-gtz v0, :cond_1

    .line 175
    iput-boolean v1, p0, Lorg/a/g;->b:Z

    const/4 v0, 0x0

    return v0

    .line 178
    :cond_1
    iget-object v0, p0, Lorg/a/g;->f:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Lorg/a/b;

    const-string v2, "Unable to read the next character from the stream"

    invoke-direct {v1, v2, v0}, Lorg/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 170
    new-instance v1, Lorg/a/b;

    const-string v2, "Unable to preserve stream position"

    invoke-direct {v1, v2, v0}, Lorg/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final next()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 194
    iget-boolean v0, p0, Lorg/a/g;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    iput-boolean v1, p0, Lorg/a/g;->g:Z

    .line 196
    iget-char v0, p0, Lorg/a/g;->e:C

    goto :goto_0

    .line 199
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/a/g;->f:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lorg/a/g;->b:Z

    return v1

    :cond_1
    if-lez v0, :cond_5

    .line 1220
    iget-wide v1, p0, Lorg/a/g;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/a/g;->c:J

    const-wide/16 v1, 0x0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_2

    .line 1222
    iget-wide v5, p0, Lorg/a/g;->d:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/a/g;->d:J

    .line 1223
    iget-wide v3, p0, Lorg/a/g;->a:J

    iput-wide v3, p0, Lorg/a/g;->h:J

    .line 1224
    iput-wide v1, p0, Lorg/a/g;->a:J

    goto :goto_1

    :cond_2
    const/16 v6, 0xa

    if-ne v0, v6, :cond_4

    .line 1226
    iget-char v6, p0, Lorg/a/g;->e:C

    if-eq v6, v5, :cond_3

    .line 1227
    iget-wide v5, p0, Lorg/a/g;->d:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/a/g;->d:J

    .line 1228
    iget-wide v3, p0, Lorg/a/g;->a:J

    iput-wide v3, p0, Lorg/a/g;->h:J

    .line 1230
    :cond_3
    iput-wide v1, p0, Lorg/a/g;->a:J

    goto :goto_1

    .line 1232
    :cond_4
    iget-wide v1, p0, Lorg/a/g;->a:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/a/g;->a:J

    :cond_5
    :goto_1
    int-to-char v0, v0

    .line 209
    iput-char v0, p0, Lorg/a/g;->e:C

    .line 210
    iget-char v0, p0, Lorg/a/g;->e:C

    return v0

    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Lorg/a/b;

    invoke-direct {v1, v0}, Lorg/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final next(C)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lorg/a/g;->next()C

    move-result v0

    if-eq v0, p1, :cond_1

    const-string v1, "Expected \'"

    if-lez v0, :cond_0

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' and instead saw \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/g;->syntaxError(Ljava/lang/String;)Lorg/a/b;

    move-result-object p1

    throw p1

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' and instead saw \'\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/g;->syntaxError(Ljava/lang/String;)Lorg/a/b;

    move-result-object p1

    throw p1

    :cond_1
    return v0
.end method

.method public final next(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 271
    :cond_0
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 275
    invoke-virtual {p0}, Lorg/a/g;->next()C

    move-result v2

    aput-char v2, v0, v1

    .line 276
    invoke-virtual {p0}, Lorg/a/g;->end()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Substring bounds error"

    .line 277
    invoke-virtual {p0, p1}, Lorg/a/g;->syntaxError(Ljava/lang/String;)Lorg/a/b;

    move-result-object p1

    throw p1

    .line 281
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public final nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 292
    :cond_0
    invoke-virtual {p0}, Lorg/a/g;->next()C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_1
    return v0
.end method

.method public final nextString(C)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    :goto_0
    invoke-virtual {p0}, Lorg/a/g;->next()C

    move-result v1

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v3, 0xd

    if-eq v1, v3, :cond_9

    const/16 v4, 0x5c

    if-eq v1, v4, :cond_1

    if-ne v1, p1, :cond_0

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 360
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lorg/a/g;->next()C

    move-result v1

    const/16 v5, 0x22

    if-eq v1, v5, :cond_8

    const/16 v5, 0x27

    if-eq v1, v5, :cond_8

    const/16 v5, 0x2f

    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_8

    const/16 v4, 0x62

    if-eq v1, v4, :cond_7

    const/16 v4, 0x66

    if-eq v1, v4, :cond_6

    const/16 v4, 0x6e

    if-eq v1, v4, :cond_5

    const/16 v2, 0x72

    if-eq v1, v2, :cond_4

    const/16 v2, 0x74

    if-eq v1, v2, :cond_3

    const/16 v2, 0x75

    const-string v3, "Illegal escape."

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    .line 341
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/a/g;->next(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 343
    invoke-virtual {p0, v3, p1}, Lorg/a/g;->syntaxError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/a/b;

    move-result-object p1

    throw p1

    .line 353
    :cond_2
    invoke-virtual {p0, v3}, Lorg/a/g;->syntaxError(Ljava/lang/String;)Lorg/a/b;

    move-result-object p1

    throw p1

    :cond_3
    const/16 v1, 0x9

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const/16 v1, 0xc

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const/16 v1, 0x8

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 350
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    const-string p1, "Unterminated string"

    .line 320
    invoke-virtual {p0, p1}, Lorg/a/g;->syntaxError(Ljava/lang/String;)Lorg/a/b;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final nextTo(C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    :goto_0
    invoke-virtual {p0}, Lorg/a/g;->next()C

    move-result v1

    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {p0}, Lorg/a/g;->back()V

    .line 382
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    :goto_0
    invoke-virtual {p0}, Lorg/a/g;->next()C

    move-result v1

    .line 402
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 409
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 405
    invoke-virtual {p0}, Lorg/a/g;->back()V

    .line 407
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final nextValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lorg/a/g;->nextClean()C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    .line 447
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p0}, Lorg/a/g;->next()C

    move-result v0

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0}, Lorg/a/g;->back()V

    .line 453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 454
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 457
    invoke-static {v0}, Lorg/a/c;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Missing value"

    .line 455
    invoke-virtual {p0, v0}, Lorg/a/g;->syntaxError(Ljava/lang/String;)Lorg/a/b;

    move-result-object v0

    throw v0

    .line 430
    :cond_2
    invoke-virtual {p0}, Lorg/a/g;->back()V

    .line 431
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p0}, Lorg/a/c;-><init>(Lorg/a/g;)V

    return-object v0

    .line 433
    :cond_3
    invoke-virtual {p0}, Lorg/a/g;->back()V

    .line 434
    new-instance v0, Lorg/a/a;

    invoke-direct {v0, p0}, Lorg/a/a;-><init>(Lorg/a/g;)V

    return-object v0

    .line 428
    :cond_4
    invoke-virtual {p0, v0}, Lorg/a/g;->nextString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final skipTo(C)C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 473
    :try_start_0
    iget-wide v0, p0, Lorg/a/g;->c:J

    .line 474
    iget-wide v2, p0, Lorg/a/g;->a:J

    .line 475
    iget-wide v4, p0, Lorg/a/g;->d:J

    .line 476
    iget-object v6, p0, Lorg/a/g;->f:Ljava/io/Reader;

    const v7, 0xf4240

    invoke-virtual {v6, v7}, Ljava/io/Reader;->mark(I)V

    .line 478
    :cond_0
    invoke-virtual {p0}, Lorg/a/g;->next()C

    move-result v6

    if-nez v6, :cond_1

    .line 483
    iget-object p1, p0, Lorg/a/g;->f:Ljava/io/Reader;

    invoke-virtual {p1}, Ljava/io/Reader;->reset()V

    .line 484
    iput-wide v0, p0, Lorg/a/g;->c:J

    .line 485
    iput-wide v2, p0, Lorg/a/g;->a:J

    .line 486
    iput-wide v4, p0, Lorg/a/g;->d:J

    const/4 p1, 0x0

    return p1

    :cond_1
    if-ne v6, p1, :cond_0

    .line 490
    iget-object p1, p0, Lorg/a/g;->f:Ljava/io/Reader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/Reader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    invoke-virtual {p0}, Lorg/a/g;->back()V

    return v6

    :catch_0
    move-exception p1

    .line 492
    new-instance v0, Lorg/a/b;

    invoke-direct {v0, p1}, Lorg/a/b;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public final syntaxError(Ljava/lang/String;)Lorg/a/b;
    .locals 2

    .line 505
    new-instance v0, Lorg/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/a/g;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final syntaxError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/a/b;
    .locals 2

    .line 516
    new-instance v0, Lorg/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/a/g;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/a/g;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/a/g;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/a/g;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
