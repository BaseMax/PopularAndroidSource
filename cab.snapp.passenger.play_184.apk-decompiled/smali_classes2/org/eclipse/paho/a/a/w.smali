.class public final Lorg/eclipse/paho/a/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MULTI_LEVEL_WILDCARD:Ljava/lang/String; = "#"

.field public static final MULTI_LEVEL_WILDCARD_PATTERN:Ljava/lang/String; = "/#"

.field public static final SINGLE_LEVEL_WILDCARD:Ljava/lang/String; = "+"

.field public static final TOPIC_LEVEL_SEPARATOR:Ljava/lang/String; = "/"

.field public static final TOPIC_WILDCARDS:Ljava/lang/String; = "#+"


# instance fields
.field private a:Lorg/eclipse/paho/a/a/a/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/paho/a/a/a/a;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lorg/eclipse/paho/a/a/w;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 75
    iput-object p1, p0, Lorg/eclipse/paho/a/a/w;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "+"

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, "/"

    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 235
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v6, v5, -0x1

    if-ltz v6, :cond_1

    .line 238
    aget-char v6, v3, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v5, 0x1

    if-ge v7, v4, :cond_2

    .line 239
    aget-char v8, v3, v7

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 241
    :goto_2
    aget-char v5, v3, v5

    if-ne v5, v1, :cond_5

    if-eq v6, v2, :cond_3

    if-nez v6, :cond_4

    :cond_3
    if-eq v8, v2, :cond_5

    if-nez v8, :cond_4

    goto :goto_3

    .line 244
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string p0, "Invalid usage of single-level wildcard in topic string \'%s\'!"

    .line 245
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    move v5, v7

    goto :goto_0
.end method

.method public static isMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 270
    invoke-static {p0, v2}, Lorg/eclipse/paho/a/a/w;->validate(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    .line 271
    invoke-static {p1, v3}, Lorg/eclipse/paho/a/a/w;->validate(Ljava/lang/String;Z)V

    .line 273
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_7

    if-lt v5, v0, :cond_1

    goto :goto_3

    .line 278
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_7

    .line 281
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x23

    const/16 v9, 0x2b

    if-eq v6, v9, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_3

    .line 282
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v6, v10, :cond_7

    .line 284
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_5

    :goto_1
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v0, :cond_6

    .line 286
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 288
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_6

    add-int/lit8 v5, v0, -0x1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v2

    goto :goto_0

    :cond_7
    :goto_3
    if-ne v5, v0, :cond_8

    if-ne v4, v1, :cond_8

    return v2

    .line 301
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "/#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "filterSub equals topicName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " == "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    :cond_9
    return v3
.end method

.method public static validate(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0xffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lez v0, :cond_5

    if-gt v0, v1, :cond_5

    if-eqz p1, :cond_3

    new-array p1, v3, [Ljava/lang/String;

    const-string v0, "#"

    aput-object v0, p1, v2

    const-string v1, "+"

    aput-object v1, p1, v4

    .line 191
    invoke-static {p0, p1}, Lorg/eclipse/paho/a/a/e/b;->equalsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-static {p0, v0}, Lorg/eclipse/paho/a/a/e/b;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    if-gt p1, v4, :cond_2

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "/#"

    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 217
    :cond_1
    invoke-static {p0}, Lorg/eclipse/paho/a/a/w;->a(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 207
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid usage of multi-level wildcard in topic string: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "#+"

    .line 225
    invoke-static {p0, p1}, Lorg/eclipse/paho/a/a/e/b;->containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return-void

    .line 226
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The topic name MUST NOT contain any wildcard characters (#+)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v3, [Ljava/lang/Object;

    .line 183
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "Invalid topic length, should be in range[%d, %d]!"

    .line 182
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 173
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/eclipse/paho/a/a/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final publish(Lorg/eclipse/paho/a/a/q;)Lorg/eclipse/paho/a/a/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 126
    new-instance v0, Lorg/eclipse/paho/a/a/o;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/w;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/o;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/o;->a(Lorg/eclipse/paho/a/a/q;)V

    .line 128
    iget-object v1, p0, Lorg/eclipse/paho/a/a/w;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 1146
    new-instance v2, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/w;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lorg/eclipse/paho/a/a/a/a/o;-><init>(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V

    .line 128
    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/a/a/a/a;->sendNoWait(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 129
    iget-object p1, v0, Lorg/eclipse/paho/a/a/o;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/q;->waitUntilSent()V

    return-object v0
.end method

.method public final publish([BIZ)Lorg/eclipse/paho/a/a/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 103
    new-instance v0, Lorg/eclipse/paho/a/a/q;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/a/a/q;-><init>([B)V

    .line 104
    invoke-virtual {v0, p2}, Lorg/eclipse/paho/a/a/q;->setQos(I)V

    .line 105
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/a/a/q;->setRetained(Z)V

    .line 106
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/a/a/w;->publish(Lorg/eclipse/paho/a/a/q;)Lorg/eclipse/paho/a/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/w;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
