.class public Lcom/mapbox/mapboxsdk/module/http/HttpRequestUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->enableLog(Z)V

    return-void
.end method

.method public static setOkHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->setOkHttpClient(Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public static setPrintRequestUrlOnFailure(Z)V
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/module/http/HttpRequestImpl;->enablePrintRequestUrlOnFailure(Z)V

    return-void
.end method

.method static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x7f

    const/16 v5, 0x1f

    if-le v3, v5, :cond_1

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    new-instance v3, Lb/c;

    invoke-direct {v3}, Lb/c;-><init>()V

    .line 62
    invoke-virtual {v3, p0, v1, v2}, Lb/c;->writeUtf8(Ljava/lang/String;II)Lb/c;

    :goto_2
    if-ge v2, v0, :cond_3

    .line 64
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-le v1, v5, :cond_2

    if-ge v1, v4, :cond_2

    move v6, v1

    goto :goto_3

    :cond_2
    const/16 v6, 0x3f

    .line 65
    :goto_3
    invoke-virtual {v3, v6}, Lb/c;->writeUtf8CodePoint(I)Lb/c;

    .line 63
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v3}, Lb/c;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method
