.class public final Lcom/ebay/common/util/EbayDateFormat;
.super Ljava/lang/Object;
.source "EbayDateFormat.java"


# static fields
.field public static final ABBREV_DATE_WITHOUT_YEAR:I = 0x10008


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final format(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final millisFromISO8601Duration(Ljava/lang/String;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_a

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_a

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x50

    if-eq v3, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    move-wide v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 108
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 112
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v7, v6, -0x30

    add-int/2addr v1, v7

    :cond_1
    const/16 v7, 0x4d

    if-nez v5, :cond_4

    const/16 v8, 0x59

    if-ne v6, v8, :cond_2

    mul-int/lit16 v1, v1, 0x16d

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v8, v1

    add-long/2addr v3, v8

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    if-ne v6, v7, :cond_3

    if-nez v5, :cond_3

    mul-int/lit8 v1, v1, 0x1e

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v8, v1

    add-long/2addr v3, v8

    goto :goto_1

    :cond_3
    const/16 v8, 0x44

    if-ne v6, v8, :cond_4

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v8, v1

    add-long/2addr v3, v8

    goto :goto_1

    :cond_4
    :goto_2
    const/16 v8, 0x54

    if-ne v6, v8, :cond_5

    const/4 v5, 0x1

    :cond_5
    if-eqz v5, :cond_8

    const/16 v8, 0x48

    if-ne v6, v8, :cond_6

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v6, v1

    add-long/2addr v3, v6

    :goto_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    if-ne v6, v7, :cond_7

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v6, v1

    add-long/2addr v3, v6

    goto :goto_3

    :cond_7
    const/16 v7, 0x53

    if-ne v6, v7, :cond_8

    int-to-long v6, v1

    add-long/2addr v3, v6

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    return-wide v3

    :cond_a
    :goto_5
    return-wide v0
.end method

.method public static final parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "."

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".000-00:00"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 72
    :catch_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0
.end method

.method public static final parseInventoryDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 92
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseSaasDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseIso8601DateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 42
    :catch_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0
.end method
