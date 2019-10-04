.class public Lc/e/a/a/j/c/a/c;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lc/e/a/a/n/y$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/c/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lc/e/a/a/n/y$a<",
        "Lc/e/a/a/j/c/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final d:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/e/a/a/j/c/a/c;->a:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/e/a/a/j/c/a/c;->b:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/e/a/a/j/c/a/c;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/j/c/a/c;->d:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 265
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 266
    sget-object v0, Lc/e/a/a/j/c/a/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 269
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 271
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method public static a(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 257
    :goto_0
    invoke-static {p1}, Lc/e/a/a/o/e;->b(Z)V

    return p0
.end method

.method public static a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 258
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 259
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/c/a/d;

    .line 260
    iget-object v2, v1, Lc/e/a/a/j/c/a/d;->a:Ljava/lang/String;

    const-string v3, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 261
    sget-object v3, Lc/e/a/a/j/c/a/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 263
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 264
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 272
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 273
    :cond_0
    invoke-static {p0}, Lc/e/a/a/o/I;->i(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 274
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 275
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lc/e/a/a/o/H;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 247
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 248
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 249
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 250
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 242
    invoke-static {p0}, Lc/e/a/a/o/J;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 243
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 244
    invoke-static {p0}, Lc/e/a/a/o/J;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {p0}, Lc/e/a/a/o/J;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 252
    invoke-static {p0}, Lc/e/a/a/o/s;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 255
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-608"

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/c/a/d;

    .line 12
    iget-object v2, v1, Lc/e/a/a/j/c/a/d;->a:Ljava/lang/String;

    const-string v3, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 13
    sget-object v3, Lc/e/a/a/j/c/a/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 15
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 16
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 18
    :cond_0
    invoke-static {p0}, Lc/e/a/a/o/I;->j(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lc/e/a/a/j/c/a/d;
    .locals 4

    const-string v0, "schemeIdUri"

    const-string v1, ""

    .line 4
    invoke-static {p0, v0, v1}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "value"

    .line 5
    invoke-static {p0, v2, v1}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 6
    invoke-static {p0, v3, v1}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    invoke-static {p0, p1}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    new-instance p0, Lc/e/a/a/j/c/a/d;

    invoke-direct {p0, v0, v2, v1}, Lc/e/a/a/j/c/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lc/e/a/a/o/e;->b(Z)V

    return-object p0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0
.end method

.method public static c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 42
    invoke-static {p0}, Lc/e/a/a/o/s;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p1}, Lc/e/a/a/o/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    invoke-static {p0}, Lc/e/a/a/o/s;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {p1}, Lc/e/a/a/o/s;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_1
    invoke-static {p0}, Lc/e/a/a/j/c/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-string v0, "application/mp4"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_7

    const-string p0, "stpp"

    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "application/ttml+xml"

    return-object p0

    :cond_3
    const-string p0, "wvtt"

    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "application/x-mp4-vtt"

    return-object p0

    :cond_4
    const-string v0, "application/x-rawcc"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    const-string p0, "cea708"

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "application/cea-708"

    return-object p0

    :cond_5
    const-string p0, "eia608"

    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "cea608"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const-string p0, "application/cea-608"

    return-object p0

    :cond_7
    return-object v1
.end method

.method public static c(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 54
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/c/a/d;

    .line 55
    iget-object v2, v1, Lc/e/a/a/j/c/a/d;->a:Ljava/lang/String;

    const-string v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    const-string v2, "ec+3"

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "audio/eac3-joc"

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "audio/eac3"

    return-object p0
.end method

.method public static f(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "value"

    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/e/a/a/o/I;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "fa01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "f801"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "a000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "4000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    return v0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0

    :cond_4
    return v3

    :cond_5
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_3
        0x2cd22f -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 72
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 74
    :cond_0
    invoke-static {p1}, Lc/e/a/a/o/s;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 75
    :cond_1
    invoke-static {p1}, Lc/e/a/a/o/s;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 76
    :cond_2
    invoke-static {p1}, Lc/e/a/a/j/c/a/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v1
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/io/ByteArrayOutputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    const-string v3, "id"

    .line 195
    invoke-static {v0, v3, v1, v2}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v3, "duration"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 196
    invoke-static {v0, v3, v4, v5}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "presentationTime"

    .line 197
    invoke-static {v0, v3, v1, v2}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    move-wide/from16 v13, p4

    .line 198
    invoke-static/range {v9 .. v14}, Lc/e/a/a/o/I;->c(JJJ)J

    move-result-wide v9

    const-wide/32 v13, 0xf4240

    move-wide v11, v1

    move-wide/from16 v15, p4

    .line 199
    invoke-static/range {v11 .. v16}, Lc/e/a/a/o/I;->c(JJJ)J

    move-result-wide v1

    const-string v3, "messageData"

    const/4 v4, 0x0

    .line 200
    invoke-static {v0, v3, v4}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v12, p0

    move-object/from16 v4, p6

    .line 201
    invoke-virtual {v12, v0, v4}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 202
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-nez v3, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {v3}, Lc/e/a/a/o/I;->e(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    move-object v11, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 204
    invoke-virtual/range {v4 .. v11}, Lc/e/a/a/j/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v0

    .line 205
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public a(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lc/e/a/a/j/c/a/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/j;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)",
            "Lc/e/a/a/j/c/a/a;"
        }
    .end annotation

    .line 71
    new-instance v6, Lc/e/a/a/j/c/a/a;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/j/c/a/a;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lc/e/a/a/j/c/a/k;)Lc/e/a/a/j/c/a/a;
    .locals 40

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const/4 v0, -0x1

    const-string v1, "id"

    .line 12
    invoke-static {v14, v1, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 13
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v13, 0x0

    const-string v2, "mimeType"

    .line 14
    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "codecs"

    .line 15
    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "width"

    .line 16
    invoke-static {v14, v2, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    const-string v2, "height"

    .line 17
    invoke-static {v14, v2, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    const/high16 v2, -0x40800000    # -1.0f

    .line 18
    invoke-static {v14, v2}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v21

    const-string v2, "audioSamplingRate"

    .line 19
    invoke-static {v14, v2, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    const-string v12, "lang"

    .line 20
    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "label"

    .line 21
    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 22
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v5, p2

    move-object/from16 v27, p3

    move v3, v1

    move-object v4, v2

    move-object/from16 v28, v13

    const/16 v25, 0x0

    const/16 v26, -0x1

    .line 28
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    .line 29
    invoke-static {v14, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v25, :cond_0

    .line 30
    invoke-static {v14, v5}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move-object v5, v0

    move v2, v3

    move-object/from16 v30, v4

    move-object v3, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object v4, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object v1, v14

    move-object/from16 v0, v28

    const/16 v25, 0x1

    goto/16 :goto_6

    :cond_0
    :goto_1
    move v2, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object v3, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object v4, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object v1, v14

    goto/16 :goto_5

    :cond_1
    const-string v0, "ContentProtection"

    .line 31
    invoke-static {v14, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->d(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    .line 33
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 34
    move-object/from16 v28, v1

    check-cast v28, Ljava/lang/String;

    .line 35
    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    move v2, v3

    goto :goto_3

    :cond_4
    const-string v0, "ContentComponent"

    .line 37
    invoke-static {v14, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/e/a/a/j/c/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    invoke-static {v3, v0}, Lc/e/a/a/j/c/a/c;->a(II)I

    move-result v0

    move v2, v0

    :goto_3
    move-object/from16 v30, v4

    move-object v3, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object v4, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object v1, v14

    move-object/from16 v0, v28

    goto/16 :goto_6

    :cond_5
    const-string v0, "Role"

    .line 40
    invoke-static {v14, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 41
    invoke-static {v14, v0}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lc/e/a/a/j/c/a/d;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v0, "AudioChannelConfiguration"

    .line 42
    invoke-static {v14, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v26

    goto :goto_2

    :cond_7
    const-string v0, "Accessibility"

    .line 44
    invoke-static {v14, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 45
    invoke-static {v14, v0}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lc/e/a/a/j/c/a/d;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    const-string v0, "SupplementalProperty"

    .line 46
    invoke-static {v14, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 47
    invoke-static {v14, v0}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lc/e/a/a/j/c/a/d;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    const-string v0, "Representation"

    .line 48
    invoke-static {v14, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move/from16 v29, v3

    move-object/from16 v3, v23

    move-object/from16 v30, v4

    move-object/from16 v4, v17

    move-object/from16 v31, v5

    move-object/from16 v5, v18

    move-object/from16 v32, v6

    move/from16 v6, v19

    move-object/from16 v33, v7

    move/from16 v7, v20

    move-object/from16 v34, v8

    move/from16 v8, v21

    move-object/from16 v35, v9

    move/from16 v9, v26

    move-object/from16 v36, v10

    move/from16 v10, v22

    move-object/from16 v37, v11

    move-object/from16 v11, v30

    move-object/from16 v38, v12

    move-object/from16 v12, v34

    move-object/from16 v39, v13

    move-object/from16 v13, v35

    move-object/from16 v14, v27

    .line 49
    invoke-virtual/range {v0 .. v14}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Lc/e/a/a/j/c/a/k;)Lc/e/a/a/j/c/a/c$a;

    move-result-object v0

    .line 50
    iget-object v1, v0, Lc/e/a/a/j/c/a/c$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 51
    invoke-virtual {v15, v1}, Lc/e/a/a/j/c/a/c;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    move/from16 v2, v29

    .line 52
    invoke-static {v2, v1}, Lc/e/a/a/j/c/a/c;->a(II)I

    move-result v1

    move-object/from16 v3, v32

    .line 53
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    move-object/from16 v0, v28

    move-object/from16 v5, v31

    move-object/from16 v4, v36

    move-object/from16 v1, p1

    goto/16 :goto_6

    :cond_a
    move v2, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object v3, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    const-string v0, "SegmentBase"

    move-object/from16 v1, p1

    .line 54
    invoke-static {v1, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 55
    move-object/from16 v0, v27

    check-cast v0, Lc/e/a/a/j/c/a/k$e;

    invoke-virtual {v15, v1, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$e;)Lc/e/a/a/j/c/a/k$e;

    move-result-object v0

    :goto_4
    move-object/from16 v27, v0

    move-object/from16 v0, v28

    move-object/from16 v5, v31

    move-object/from16 v4, v36

    goto :goto_6

    :cond_b
    const-string v0, "SegmentList"

    .line 56
    invoke-static {v1, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 57
    move-object/from16 v0, v27

    check-cast v0, Lc/e/a/a/j/c/a/k$b;

    invoke-virtual {v15, v1, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$b;)Lc/e/a/a/j/c/a/k$b;

    move-result-object v0

    goto :goto_4

    :cond_c
    const-string v0, "SegmentTemplate"

    .line 58
    invoke-static {v1, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 59
    move-object/from16 v0, v27

    check-cast v0, Lc/e/a/a/j/c/a/k$c;

    invoke-virtual {v15, v1, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$c;)Lc/e/a/a/j/c/a/k$c;

    move-result-object v0

    goto :goto_4

    :cond_d
    const-string v0, "InbandEventStream"

    .line 60
    invoke-static {v1, v0}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 61
    invoke-static {v1, v0}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lc/e/a/a/j/c/a/d;

    move-result-object v0

    move-object/from16 v4, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    move-object/from16 v4, v36

    .line 62
    invoke-static/range {p1 .. p1}, Lc/e/a/a/o/J;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 63
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_f
    :goto_5
    move-object/from16 v0, v28

    move-object/from16 v5, v31

    :goto_6
    const-string v6, "AdaptationSet"

    .line 64
    invoke-static {v1, v6}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 65
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 66
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_10

    .line 67
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/a/a/j/c/a/c$a;

    move-object/from16 v7, v37

    .line 68
    invoke-virtual {v15, v6, v0, v7, v4}, Lc/e/a/a/j/c/a/c;->a(Lc/e/a/a/j/c/a/c$a;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lc/e/a/a/j/c/a/j;

    move-result-object v6

    .line 69
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v3, v5

    move-object/from16 v4, v35

    move-object/from16 v5, v33

    .line 70
    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/j/c/a/c;->a(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lc/e/a/a/j/c/a/a;

    move-result-object v0

    return-object v0

    :cond_11
    move-object/from16 v28, v0

    move-object v14, v1

    move-object v6, v3

    move-object v10, v4

    move-object/from16 v4, v30

    move-object/from16 v7, v33

    move-object/from16 v8, v34

    move-object/from16 v9, v35

    move-object/from16 v11, v37

    move-object/from16 v12, v38

    move-object/from16 v13, v39

    move v3, v2

    goto/16 :goto_0
.end method

.method public a(JJJZJJJJLc/e/a/a/j/c/a/g;Lc/e/a/a/j/c/a/n;Landroid/net/Uri;Ljava/util/List;)Lc/e/a/a/j/c/a/b;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lc/e/a/a/j/c/a/g;",
            "Lc/e/a/a/j/c/a/n;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/f;",
            ">;)",
            "Lc/e/a/a/j/c/a/b;"
        }
    .end annotation

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    .line 9
    new-instance v20, Lc/e/a/a/j/c/a/b;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lc/e/a/a/j/c/a/b;-><init>(JJJZJJJJLc/e/a/a/j/c/a/g;Lc/e/a/a/j/c/a/n;Landroid/net/Uri;Ljava/util/List;)V

    return-object v20
.end method

.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lc/e/a/a/j/c/a/b;
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lc/e/a/a/j/c/a/c;->d:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string p2, "MPD"

    .line 5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lc/e/a/a/j/c/a/b;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "inputStream does not contain a valid media presentation description"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Lc/e/a/a/j/c/a/k;)Lc/e/a/a/j/c/a/c$a;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;",
            "Lc/e/a/a/j/c/a/k;",
            ")",
            "Lc/e/a/a/j/c/a/c$a;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "id"

    .line 77
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bandwidth"

    const/4 v4, -0x1

    .line 78
    invoke-static {v0, v3, v4}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    const-string v3, "mimeType"

    move-object/from16 v4, p4

    .line 79
    invoke-static {v0, v3, v4}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "codecs"

    move-object/from16 v5, p5

    .line 80
    invoke-static {v0, v4, v5}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "width"

    move/from16 v5, p6

    .line 81
    invoke-static {v0, v4, v5}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "height"

    move/from16 v6, p7

    .line 82
    invoke-static {v0, v5, v6}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    move/from16 v6, p8

    .line 83
    invoke-static {v0, v6}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v6

    const-string v7, "audioSamplingRate"

    move/from16 v8, p10

    .line 84
    invoke-static {v0, v7, v8}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 85
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move/from16 v16, p9

    move-object/from16 v10, p14

    move-object/from16 v17, v1

    move-object/from16 v1, p2

    .line 88
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 p4, v13

    const-string v13, "BaseURL"

    .line 89
    invoke-static {v0, v13}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez v7, :cond_0

    .line 90
    invoke-static {v0, v1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    :goto_1
    move/from16 v13, v16

    move-object/from16 v18, v17

    move-object/from16 v16, v1

    goto/16 :goto_3

    :cond_0
    move-object/from16 p2, v1

    goto/16 :goto_2

    :cond_1
    const-string v13, "AudioChannelConfiguration"

    .line 91
    invoke-static {v0, v13}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 92
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v13

    move-object/from16 v16, v1

    move-object/from16 v18, v17

    goto/16 :goto_3

    :cond_2
    const-string v13, "SegmentBase"

    .line 93
    invoke-static {v0, v13}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 94
    check-cast v10, Lc/e/a/a/j/c/a/k$e;

    invoke-virtual {v15, v0, v10}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$e;)Lc/e/a/a/j/c/a/k$e;

    move-result-object v10

    goto :goto_1

    :cond_3
    const-string v13, "SegmentList"

    .line 95
    invoke-static {v0, v13}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 96
    check-cast v10, Lc/e/a/a/j/c/a/k$b;

    invoke-virtual {v15, v0, v10}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$b;)Lc/e/a/a/j/c/a/k$b;

    move-result-object v10

    goto :goto_1

    :cond_4
    const-string v13, "SegmentTemplate"

    .line 97
    invoke-static {v0, v13}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 98
    check-cast v10, Lc/e/a/a/j/c/a/k$c;

    invoke-virtual {v15, v0, v10}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$c;)Lc/e/a/a/j/c/a/k$c;

    move-result-object v10

    goto :goto_1

    :cond_5
    const-string v13, "ContentProtection"

    .line 99
    invoke-static {v0, v13}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 100
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->d(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v13

    move-object/from16 p2, v1

    .line 101
    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 102
    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/String;

    .line 103
    :cond_6
    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 104
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object/from16 p2, v1

    const-string v1, "InbandEventStream"

    .line 105
    invoke-static {v0, v1}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 106
    invoke-static {v0, v1}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lc/e/a/a/j/c/a/d;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string v1, "SupplementalProperty"

    .line 107
    invoke-static {v0, v1}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 108
    invoke-static {v0, v1}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lc/e/a/a/j/c/a/d;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    :cond_9
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_a
    :goto_2
    move/from16 v13, v16

    move-object/from16 v18, v17

    move-object/from16 v16, p2

    :goto_3
    move-object/from16 v17, v10

    const-string v1, "Representation"

    .line 110
    invoke-static {v0, v1}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p3

    move v7, v13

    move-object/from16 v10, p11

    move-object/from16 v19, v11

    move-object/from16 v11, p12

    move-object/from16 v20, v12

    move-object/from16 v12, p13

    move-object/from16 v13, p4

    move-object/from16 v21, v14

    move-object/from16 v14, v19

    .line 111
    invoke-virtual/range {v0 .. v14}, Lc/e/a/a/j/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v17, :cond_b

    move-object/from16 v1, v17

    goto :goto_4

    .line 112
    :cond_b
    new-instance v1, Lc/e/a/a/j/c/a/k$e;

    invoke-direct {v1}, Lc/e/a/a/j/c/a/k$e;-><init>()V

    .line 113
    :goto_4
    new-instance v2, Lc/e/a/a/j/c/a/c$a;

    const-wide/16 v3, -0x1

    move-object/from16 p1, v2

    move-object/from16 p2, v0

    move-object/from16 p3, v16

    move-object/from16 p4, v1

    move-object/from16 p5, v18

    move-object/from16 p6, v21

    move-object/from16 p7, v20

    move-wide/from16 p8, v3

    invoke-direct/range {p1 .. p9}, Lc/e/a/a/j/c/a/c$a;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-object v2

    :cond_c
    move-object/from16 v1, v16

    move-object/from16 v10, v17

    move-object/from16 v17, v18

    move/from16 v16, v13

    move-object/from16 v13, p4

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lc/e/a/a/j/c/a/e;
    .locals 8

    .line 194
    new-instance v7, Lc/e/a/a/j/c/a/e;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lc/e/a/a/j/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    return-object v7
.end method

.method public a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lc/e/a/a/j/c/a/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/a;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/e;",
            ">;)",
            "Lc/e/a/a/j/c/a/f;"
        }
    .end annotation

    .line 11
    new-instance v6, Lc/e/a/a/j/c/a/f;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/j/c/a/f;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method public a(Ljava/lang/String;JJ)Lc/e/a/a/j/c/a/h;
    .locals 7

    .line 241
    new-instance v6, Lc/e/a/a/j/c/a/h;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/j/c/a/h;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lc/e/a/a/j/c/a/h;
    .locals 7

    const/4 v0, 0x0

    .line 234
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, -0x1

    if-eqz p1, :cond_0

    const-string v0, "-"

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 237
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 238
    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 p2, 0x1

    .line 239
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    move-wide v5, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    move-wide v5, p2

    :goto_0
    move-wide v3, v0

    move-object v1, p0

    .line 240
    invoke-virtual/range {v1 .. v6}, Lc/e/a/a/j/c/a/c;->a(Ljava/lang/String;JJ)Lc/e/a/a/j/c/a/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/a/a/j/c/a/c$a;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lc/e/a/a/j/c/a/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/c/a/c$a;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)",
            "Lc/e/a/a/j/c/a/j;"
        }
    .end annotation

    .line 131
    iget-object v0, p1, Lc/e/a/a/j/c/a/c$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 132
    iget-object v1, p1, Lc/e/a/a/j/c/a/c$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object p2, v1

    .line 133
    :cond_0
    iget-object v1, p1, Lc/e/a/a/j/c/a/c$a;->e:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 136
    invoke-static {v1}, Lc/e/a/a/j/c/a/c;->a(Ljava/util/ArrayList;)V

    .line 137
    new-instance p3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {p3, p2, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 138
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :cond_1
    move-object v3, v0

    .line 139
    iget-object v6, p1, Lc/e/a/a/j/c/a/c$a;->f:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v6, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-wide v1, p1, Lc/e/a/a/j/c/a/c$a;->g:J

    iget-object v4, p1, Lc/e/a/a/j/c/a/c$a;->b:Ljava/lang/String;

    iget-object v5, p1, Lc/e/a/a/j/c/a/c$a;->c:Lc/e/a/a/j/c/a/k;

    invoke-static/range {v1 .. v6}, Lc/e/a/a/j/c/a/j;->a(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k;Ljava/util/List;)Lc/e/a/a/j/c/a/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;Ljava/util/List;)Lc/e/a/a/j/c/a/k$b;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/c/a/h;",
            "JJJJ",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/k$d;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/h;",
            ">;)",
            "Lc/e/a/a/j/c/a/k$b;"
        }
    .end annotation

    .line 176
    new-instance v12, Lc/e/a/a/j/c/a/k$b;

    move-object v0, v12

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lc/e/a/a/j/c/a/k$b;-><init>(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;Ljava/util/List;)V

    return-object v12
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$b;)Lc/e/a/a/j/c/a/k$b;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 158
    iget-wide v4, v1, Lc/e/a/a/j/c/a/k;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v1, :cond_1

    .line 159
    iget-wide v4, v1, Lc/e/a/a/j/c/a/k;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    const-string v6, "presentationTimeOffset"

    invoke-static {v0, v6, v4, v5}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 160
    iget-wide v4, v1, Lc/e/a/a/j/c/a/k$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v6, "duration"

    invoke-static {v0, v6, v4, v5}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    if-eqz v1, :cond_3

    .line 161
    iget-wide v2, v1, Lc/e/a/a/j/c/a/k$a;->d:J

    :cond_3
    const-string v4, "startNumber"

    invoke-static {v0, v4, v2, v3}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 162
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "Initialization"

    .line 163
    invoke-static {v0, v5}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 164
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->h(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/h;

    move-result-object v3

    goto :goto_3

    :cond_5
    const-string v5, "SegmentTimeline"

    .line 165
    invoke-static {v0, v5}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 166
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v5, "SegmentURL"

    .line 167
    invoke-static {v0, v5}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v2, :cond_7

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->k(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/h;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 170
    :cond_8
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    const-string v5, "SegmentList"

    .line 171
    invoke-static {v0, v5}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_c

    if-eqz v3, :cond_9

    goto :goto_4

    .line 172
    :cond_9
    iget-object v3, v1, Lc/e/a/a/j/c/a/k;->a:Lc/e/a/a/j/c/a/h;

    :goto_4
    if-eqz v4, :cond_a

    goto :goto_5

    .line 173
    :cond_a
    iget-object v4, v1, Lc/e/a/a/j/c/a/k$a;->f:Ljava/util/List;

    :goto_5
    if-eqz v2, :cond_b

    goto :goto_6

    .line 174
    :cond_b
    iget-object v2, v1, Lc/e/a/a/j/c/a/k$b;->g:Ljava/util/List;

    :cond_c
    :goto_6
    move-object/from16 v18, v2

    move-object v8, v3

    move-object/from16 v17, v4

    move-object/from16 v7, p0

    .line 175
    invoke-virtual/range {v7 .. v18}, Lc/e/a/a/j/c/a/c;->a(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;Ljava/util/List;)Lc/e/a/a/j/c/a/k$b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;Lc/e/a/a/j/c/a/m;Lc/e/a/a/j/c/a/m;)Lc/e/a/a/j/c/a/k$c;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/c/a/h;",
            "JJJJ",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/k$d;",
            ">;",
            "Lc/e/a/a/j/c/a/m;",
            "Lc/e/a/a/j/c/a/m;",
            ")",
            "Lc/e/a/a/j/c/a/k$c;"
        }
    .end annotation

    .line 193
    new-instance v13, Lc/e/a/a/j/c/a/k$c;

    move-object v0, v13

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lc/e/a/a/j/c/a/k$c;-><init>(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;Lc/e/a/a/j/c/a/m;Lc/e/a/a/j/c/a/m;)V

    return-object v13
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$c;)Lc/e/a/a/j/c/a/k$c;
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 177
    iget-wide v4, v1, Lc/e/a/a/j/c/a/k;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz v1, :cond_1

    .line 178
    iget-wide v6, v1, Lc/e/a/a/j/c/a/k;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    :goto_1
    const-string v8, "presentationTimeOffset"

    invoke-static {v0, v8, v6, v7}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz v1, :cond_2

    .line 179
    iget-wide v8, v1, Lc/e/a/a/j/c/a/k$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v10, "duration"

    invoke-static {v0, v10, v8, v9}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v1, :cond_3

    .line 180
    iget-wide v2, v1, Lc/e/a/a/j/c/a/k$a;->d:J

    :cond_3
    const-string v10, "startNumber"

    invoke-static {v0, v10, v2, v3}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 181
    iget-object v3, v1, Lc/e/a/a/j/c/a/k$c;->h:Lc/e/a/a/j/c/a/m;

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    const-string v12, "media"

    invoke-virtual {v13, v0, v12, v3}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lc/e/a/a/j/c/a/m;)Lc/e/a/a/j/c/a/m;

    move-result-object v12

    if-eqz v1, :cond_5

    .line 182
    iget-object v3, v1, Lc/e/a/a/j/c/a/k$c;->g:Lc/e/a/a/j/c/a/m;

    goto :goto_4

    :cond_5
    move-object v3, v2

    :goto_4
    const-string v14, "initialization"

    invoke-virtual {v13, v0, v14, v3}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lc/e/a/a/j/c/a/m;)Lc/e/a/a/j/c/a/m;

    move-result-object v14

    move-object v3, v2

    .line 183
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v15, "Initialization"

    .line 184
    invoke-static {v0, v15}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 185
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->h(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/h;

    move-result-object v2

    goto :goto_5

    :cond_7
    const-string v15, "SegmentTimeline"

    .line 186
    invoke-static {v0, v15}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 187
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    goto :goto_5

    .line 188
    :cond_8
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_5
    const-string v15, "SegmentTemplate"

    .line 189
    invoke-static {v0, v15}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v1, :cond_b

    if-eqz v2, :cond_9

    goto :goto_6

    .line 190
    :cond_9
    iget-object v2, v1, Lc/e/a/a/j/c/a/k;->a:Lc/e/a/a/j/c/a/h;

    :goto_6
    if-eqz v3, :cond_a

    goto :goto_7

    .line 191
    :cond_a
    iget-object v3, v1, Lc/e/a/a/j/c/a/k$a;->f:Ljava/util/List;

    :cond_b
    :goto_7
    move-object v1, v2

    move-object v15, v3

    move-object/from16 v0, p0

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v10

    move-object v10, v15

    move-object v11, v14

    .line 192
    invoke-virtual/range {v0 .. v12}, Lc/e/a/a/j/c/a/c;->a(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;Lc/e/a/a/j/c/a/m;Lc/e/a/a/j/c/a/m;)Lc/e/a/a/j/c/a/k$c;

    move-result-object v0

    return-object v0
.end method

.method public a(JJ)Lc/e/a/a/j/c/a/k$d;
    .locals 1

    .line 231
    new-instance v0, Lc/e/a/a/j/c/a/k$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lc/e/a/a/j/c/a/k$d;-><init>(JJ)V

    return-object v0
.end method

.method public a(Lc/e/a/a/j/c/a/h;JJJJ)Lc/e/a/a/j/c/a/k$e;
    .locals 11

    .line 157
    new-instance v10, Lc/e/a/a/j/c/a/k$e;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lc/e/a/a/j/c/a/k$e;-><init>(Lc/e/a/a/j/c/a/h;JJJJ)V

    return-object v10
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$e;)Lc/e/a/a/j/c/a/k$e;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 142
    iget-wide v4, v1, Lc/e/a/a/j/c/a/k;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 143
    iget-wide v6, v1, Lc/e/a/a/j/c/a/k;->c:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    invoke-static {v0, v8, v6, v7}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 144
    iget-wide v6, v1, Lc/e/a/a/j/c/a/k$e;->d:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    .line 145
    iget-wide v4, v1, Lc/e/a/a/j/c/a/k$e;->e:J

    :cond_3
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 146
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 147
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 148
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 149
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide v15, v13

    move-wide v13, v5

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v13, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 150
    iget-object v8, v1, Lc/e/a/a/j/c/a/k;->a:Lc/e/a/a/j/c/a/h;

    .line 151
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 152
    invoke-static {v0, v1}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->h(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/h;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    .line 154
    :cond_6
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v1, "SegmentBase"

    .line 155
    invoke-static {v0, v1}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v7, p0

    .line 156
    invoke-virtual/range {v7 .. v16}, Lc/e/a/a/j/c/a/c;->a(Lc/e/a/a/j/c/a/h;JJJJ)Lc/e/a/a/j/c/a/k$e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lc/e/a/a/j/c/a/m;)Lc/e/a/a/j/c/a/m;
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    invoke-static {p1}, Lc/e/a/a/j/c/a/m;->a(Ljava/lang/String;)Lc/e/a/a/j/c/a/m;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/a/j/c/a/n;
    .locals 1

    .line 10
    new-instance v0, Lc/e/a/a/j/c/a/n;

    invoke-direct {v0, p1, p2}, Lc/e/a/a/j/c/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p11

    move-object/from16 v3, p3

    move-object/from16 v5, p13

    .line 114
    invoke-static {v3, v5}, Lc/e/a/a/j/c/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p0, v1}, Lc/e/a/a/j/c/a/c;->f(Ljava/util/List;)I

    move-result v11

    .line 116
    invoke-virtual {p0, v1}, Lc/e/a/a/j/c/a/c;->e(Ljava/util/List;)I

    move-result v1

    move-object/from16 v4, p12

    .line 117
    invoke-virtual {p0, v4}, Lc/e/a/a/j/c/a/c;->d(Ljava/util/List;)I

    move-result v6

    or-int v12, v1, v6

    if-eqz v2, :cond_6

    const-string v1, "audio/eac3"

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static/range {p14 .. p14}, Lc/e/a/a/j/c/a/c;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 120
    :goto_0
    invoke-static {v6}, Lc/e/a/a/o/s;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v6

    move-object/from16 v5, p13

    move/from16 v6, p9

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 121
    invoke-static/range {v1 .. v12}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1

    .line 122
    :cond_1
    invoke-static {v6}, Lc/e/a/a/o/s;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v6

    move-object/from16 v5, p13

    move/from16 v6, p9

    move/from16 v7, p7

    move/from16 v8, p8

    move v10, v11

    move v11, v12

    move-object/from16 v12, p10

    .line 123
    invoke-static/range {v1 .. v12}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1

    .line 124
    :cond_2
    invoke-static {v6}, Lc/e/a/a/j/c/a/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "application/cea-608"

    .line 125
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    invoke-static/range {p12 .. p12}, Lc/e/a/a/j/c/a/c;->a(Ljava/util/List;)I

    move-result v1

    :goto_1
    move v10, v1

    goto :goto_2

    :cond_3
    const-string v1, "application/cea-708"

    .line 127
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    invoke-static/range {p12 .. p12}, Lc/e/a/a/j/c/a/c;->b(Ljava/util/List;)I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    const/4 v10, -0x1

    :goto_2
    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v6

    move-object/from16 v5, p13

    move/from16 v6, p9

    move v7, v11

    move v8, v12

    move-object/from16 v9, p10

    .line 129
    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1

    :cond_5
    move-object v4, v6

    goto :goto_3

    :cond_6
    move-object v4, v2

    :goto_3
    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p13

    move/from16 v6, p9

    move v7, v11

    move v8, v12

    move-object/from16 v9, p10

    .line 130
    invoke-static/range {v1 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 9

    .line 230
    new-instance v8, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-wide v5, p3

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v8
.end method

.method public bridge synthetic a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/c/a/c;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lc/e/a/a/j/c/a/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .locals 5

    .line 206
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 207
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 208
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 209
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    :goto_0
    const-string v1, "Event"

    .line 210
    invoke-static {p1, v1}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 212
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 213
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_2

    .line 214
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_2

    .line 215
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_2

    .line 217
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_2

    .line 218
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 219
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 220
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 222
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    :pswitch_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_2

    :pswitch_a
    const/4 v1, 0x0

    .line 226
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 227
    :cond_0
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    goto/16 :goto_0

    .line 228
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 229
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "supplementary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "emergency"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "commentary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "caption"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "sign"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_5
    const-string v2, "main"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v2, "dub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v2, "alternate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v2, "enhanced-audio-intelligibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_9
    const-string v2, "description"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_a
    const-string v2, "subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p1, 0x800

    return p1

    :pswitch_1
    const/16 p1, 0x200

    return p1

    :pswitch_2
    const/16 p1, 0x100

    return p1

    :pswitch_3
    const/16 p1, 0x80

    return p1

    :pswitch_4
    const/16 p1, 0x40

    return p1

    :pswitch_5
    const/16 p1, 0x20

    return p1

    :pswitch_6
    const/16 p1, 0x10

    return p1

    :pswitch_7
    return v3

    :pswitch_8
    return v4

    :pswitch_9
    return v5

    :pswitch_a
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_a
        -0x66ca7c04 -> :sswitch_9
        -0x5e3a5c50 -> :sswitch_8
        -0x53ecbf86 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v2, "6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_2
    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_3
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_4
    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v5, :cond_2

    return v0

    :cond_2
    return v6

    :cond_3
    const/16 p1, 0x8

    return p1

    :cond_4
    return v5

    :cond_5
    const/16 p1, 0x800

    return p1

    :cond_6
    const/16 p1, 0x200

    return p1

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 34
    invoke-static {p1, v0, v1}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v0, "value"

    .line 36
    invoke-static {p1, v0, v2}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const-string v1, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {p1}, Lc/e/a/a/j/c/a/c;->f(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    .line 39
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    .line 40
    invoke-static {p1, v0}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2
.end method

.method public c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lc/e/a/a/j/c/a/b;
    .locals 32

    move-object/from16 v0, p1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-string v3, "availabilityStartTime"

    .line 1
    invoke-static {v0, v3, v1, v2}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    const-string v3, "mediaPresentationDuration"

    .line 2
    invoke-static {v0, v3, v1, v2}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v7, "minBufferTime"

    .line 3
    invoke-static {v0, v7, v1, v2}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v7, 0x0

    const-string v8, "type"

    .line 4
    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    if-eqz v8, :cond_0

    const-string v13, "dynamic"

    .line 5
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_1

    const-string v8, "minimumUpdatePeriod"

    .line 6
    invoke-static {v0, v8, v1, v2}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    goto :goto_1

    :cond_1
    move-wide v14, v1

    :goto_1
    if-eqz v13, :cond_2

    const-string v8, "timeShiftBufferDepth"

    .line 7
    invoke-static {v0, v8, v1, v2}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v1

    :goto_2
    if-eqz v13, :cond_3

    const-string v8, "suggestedPresentationDelay"

    .line 8
    invoke-static {v0, v8, v1, v2}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    goto :goto_3

    :cond_3
    move-wide/from16 v18, v1

    :goto_3
    const-string v8, "publishTime"

    .line 9
    invoke-static {v0, v8, v1, v2}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_4

    move-wide/from16 v22, v1

    goto :goto_4

    :cond_4
    const-wide/16 v22, 0x0

    :goto_4
    move-object/from16 v25, v7

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-wide/from16 v1, v22

    const/16 v22, 0x0

    move-object/from16 v7, p2

    .line 11
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v11, "BaseURL"

    .line 12
    invoke-static {v0, v11}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v12, :cond_5

    .line 13
    invoke-static {v0, v7}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v30, v14

    const/4 v12, 0x1

    goto/16 :goto_9

    :cond_5
    move-wide/from16 v28, v1

    move/from16 p2, v12

    move-wide/from16 v30, v14

    goto/16 :goto_8

    :cond_6
    const-string v11, "ProgramInformation"

    .line 14
    invoke-static {v0, v11}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 15
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->i(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/g;

    move-result-object v11

    move-object/from16 v25, v11

    :goto_6
    move-wide/from16 v30, v14

    goto/16 :goto_9

    :cond_7
    const-string v11, "UTCTiming"

    .line 16
    invoke-static {v0, v11}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 17
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/c/a/c;->l(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/n;

    move-result-object v11

    move-object/from16 v26, v11

    goto :goto_6

    :cond_8
    const-string v11, "Location"

    .line 18
    invoke-static {v0, v11}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 19
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v27, v11

    goto :goto_6

    :cond_9
    const-string v11, "Period"

    .line 20
    invoke-static {v0, v11}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez v22, :cond_d

    move-object/from16 v11, p0

    move/from16 p2, v12

    .line 21
    invoke-virtual {v11, v0, v7, v1, v2}, Lc/e/a/a/j/c/a/c;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v12

    move-wide/from16 v28, v1

    .line 22
    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lc/e/a/a/j/c/a/f;

    move-wide/from16 v30, v14

    .line 23
    iget-wide v14, v1, Lc/e/a/a/j/c/a/f;->b:J

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v14, v23

    if-nez v2, :cond_b

    if-eqz v13, :cond_a

    const/16 v22, 0x1

    goto :goto_8

    .line 24
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine start of period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_b
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v14, v23

    if-nez v2, :cond_c

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_7

    .line 26
    :cond_c
    iget-wide v11, v1, Lc/e/a/a/j/c/a/f;->b:J

    add-long/2addr v11, v14

    .line 27
    :goto_7
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v28, v11

    goto :goto_8

    :cond_d
    move-wide/from16 v28, v1

    move/from16 p2, v12

    move-wide/from16 v30, v14

    .line 28
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8
    move/from16 v12, p2

    move-wide/from16 v1, v28

    :goto_9
    const-string v11, "MPD"

    .line 29
    invoke-static {v0, v11}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v14

    if-nez v0, :cond_10

    cmp-long v0, v1, v14

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    if-eqz v13, :cond_f

    goto :goto_a

    .line 30
    :cond_f
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unable to determine duration of static manifest."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_a
    move-wide v1, v3

    .line 31
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    move-object/from16 v4, p0

    move-object/from16 v23, v8

    move-wide v7, v1

    move v11, v13

    move-wide/from16 v12, v30

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    .line 32
    invoke-virtual/range {v4 .. v23}, Lc/e/a/a/j/c/a/c;->a(JJJZJJJJLc/e/a/a/j/c/a/g;Lc/e/a/a/j/c/a/n;Landroid/net/Uri;Ljava/util/List;)Lc/e/a/a/j/c/a/b;

    move-result-object v0

    return-object v0

    .line 33
    :cond_11
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "No periods found."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v14, v30

    goto/16 :goto_5
.end method

.method public d(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 59
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/c/a/d;

    .line 60
    iget-object v3, v2, Lc/e/a/a/j/c/a/d;->a:Ljava/lang/String;

    const-string v4, "urn:mpeg:dash:role:2011"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    iget-object v2, v2, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lc/e/a/a/j/c/a/c;->b(Ljava/lang/String;)I

    move-result v2

    :goto_1
    or-int/2addr v1, v2

    goto :goto_2

    .line 62
    :cond_0
    iget-object v3, v2, Lc/e/a/a/j/c/a/d;->a:Ljava/lang/String;

    const-string v4, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    iget-object v2, v2, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lc/e/a/a/j/c/a/c;->c(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public d(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "schemeIdUri"

    .line 22
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    .line 23
    invoke-static {v2}, Lc/e/a/a/o/I;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x1d2c5beb

    const/4 v8, 0x2

    if-eq v6, v7, :cond_2

    const v7, 0x2d06c692

    if-eq v6, v7, :cond_1

    const v7, 0x6c0c9d2a

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const-string v6, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    const-string v6, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    :cond_3
    :goto_0
    if-eqz v5, :cond_6

    if-eq v5, v3, :cond_5

    if-eq v5, v8, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    sget-object v2, Lc/e/a/a/q;->d:Ljava/util/UUID;

    goto :goto_1

    .line 25
    :cond_5
    sget-object v2, Lc/e/a/a/q;->e:Ljava/util/UUID;

    :goto_1
    move-object v5, v1

    goto :goto_4

    :cond_6
    const-string v2, "value"

    .line 26
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "default_KID"

    .line 27
    invoke-static {v0, v5}, Lc/e/a/a/o/J;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "00000000-0000-0000-0000-000000000000"

    .line 29
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "\\s+"

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 31
    array-length v6, v5

    new-array v6, v6, [Ljava/util/UUID;

    const/4 v7, 0x0

    .line 32
    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_7

    .line 33
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 34
    :cond_7
    sget-object v5, Lc/e/a/a/q;->b:Ljava/util/UUID;

    invoke-static {v5, v6, v1}, Lc/e/a/a/e/e/l;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v5

    .line 35
    sget-object v6, Lc/e/a/a/q;->b:Ljava/util/UUID;

    move-object v7, v1

    const/4 v8, 0x0

    move-object v15, v6

    move-object v6, v2

    move-object v2, v15

    goto :goto_5

    :cond_8
    move-object v5, v1

    move-object v7, v5

    move-object v6, v2

    const/4 v8, 0x0

    move-object v2, v7

    goto :goto_5

    :cond_9
    :goto_3
    move-object v2, v1

    move-object v5, v2

    :goto_4
    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    .line 36
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "ms:laurl"

    .line 37
    invoke-static {v0, v9}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v7, "licenseUrl"

    .line 38
    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_6
    move-object v10, v2

    move-object v13, v5

    :goto_7
    move-object v11, v7

    move v14, v8

    goto/16 :goto_9

    :cond_a
    const-string v9, "widevine:license"

    .line 39
    invoke-static {v0, v9}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v8, "robustness_level"

    .line 40
    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    const-string v9, "HW"

    .line 41
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    goto :goto_6

    :cond_c
    const/4 v9, 0x4

    if-nez v5, :cond_e

    const-string v10, "pssh"

    .line 42
    invoke-static {v0, v10}, Lc/e/a/a/o/J;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 43
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-ne v10, v9, :cond_e

    .line 44
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 45
    invoke-static {v2}, Lc/e/a/a/e/e/l;->b([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_d

    const-string v2, "MpdParser"

    const-string v9, "Skipping malformed cenc:pssh data"

    .line 46
    invoke-static {v2, v9}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v1

    goto :goto_8

    :cond_d
    move-object v13, v2

    :goto_8
    move-object v10, v5

    goto :goto_7

    :cond_e
    if-nez v5, :cond_f

    .line 47
    sget-object v10, Lc/e/a/a/q;->e:Ljava/util/UUID;

    .line 48
    invoke-virtual {v10, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, "mspr:pro"

    .line 49
    invoke-static {v0, v10}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 50
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-ne v10, v9, :cond_f

    .line 51
    sget-object v5, Lc/e/a/a/q;->e:Ljava/util/UUID;

    .line 52
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    .line 53
    invoke-static {v5, v9}, Lc/e/a/a/e/e/l;->a(Ljava/util/UUID;[B)[B

    move-result-object v5

    goto :goto_6

    .line 54
    :cond_f
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :goto_9
    const-string v2, "ContentProtection"

    .line 55
    invoke-static {v0, v2}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v10, :cond_10

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v12, "video/mp4"

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    goto :goto_a

    :cond_10
    move-object v0, v1

    .line 57
    :goto_a
    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_11
    move-object v2, v10

    move-object v7, v11

    move-object v5, v13

    move v8, v14

    goto/16 :goto_5
.end method

.method public d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair<",
            "Lc/e/a/a/j/c/a/f;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "id"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "start"

    .line 2
    invoke-static {p1, v1, p3, p4}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string p3, "duration"

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-static {p1, p3, v1, v2}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p3

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object v2, v0

    .line 6
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "BaseURL"

    .line 7
    invoke-static {p1, v8}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v1, :cond_7

    .line 8
    invoke-static {p1, p2}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "AdaptationSet"

    .line 9
    invoke-static {p1, v8}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lc/e/a/a/j/c/a/k;)Lc/e/a/a/j/c/a/a;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v8, "EventStream"

    .line 11
    invoke-static {p1, v8}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 12
    invoke-virtual {p0, p1}, Lc/e/a/a/j/c/a/c;->g(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/e;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v8, "SegmentBase"

    .line 13
    invoke-static {p1, v8}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 14
    invoke-virtual {p0, p1, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$e;)Lc/e/a/a/j/c/a/k$e;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v8, "SegmentList"

    .line 15
    invoke-static {p1, v8}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 16
    invoke-virtual {p0, p1, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$b;)Lc/e/a/a/j/c/a/k$b;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v8, "SegmentTemplate"

    .line 17
    invoke-static {p1, v8}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 18
    invoke-virtual {p0, p1, v0}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lc/e/a/a/j/c/a/k$c;)Lc/e/a/a/j/c/a/k$c;

    move-result-object v2

    goto :goto_0

    .line 19
    :cond_6
    invoke-static {p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_7
    :goto_0
    const-string v8, "Period"

    .line 20
    invoke-static {p1, v8}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v2, p0

    .line 21
    invoke-virtual/range {v2 .. v7}, Lc/e/a/a/j/c/a/c;->a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lc/e/a/a/j/c/a/f;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/c/a/d;

    .line 8
    iget-object v3, v2, Lc/e/a/a/j/c/a/d;->a:Ljava/lang/String;

    const-string v4, "urn:mpeg:dash:role:2011"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    iget-object v2, v2, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lc/e/a/a/j/c/a/c;->b(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public e(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "video"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "text"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    return v1
.end method

.method public f(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/c/a/d;

    .line 3
    iget-object v3, v2, Lc/e/a/a/j/c/a/d;->a:Ljava/lang/String;

    const-string v4, "urn:mpeg:dash:role:2011"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lc/e/a/a/j/c/a/d;->b:Ljava/lang/String;

    const-string v3, "main"

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/e;
    .locals 13

    const-string v0, ""

    const-string v1, "schemeIdUri"

    .line 1
    invoke-static {p1, v1, v0}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 2
    invoke-static {p1, v2, v0}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "timescale"

    const-wide/16 v3, 0x1

    .line 3
    invoke-static {p1, v2, v3, v4}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v12, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "Event"

    .line 7
    invoke-static {p1, v2}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v0

    move-wide v6, v9

    move-object v8, v12

    .line 8
    invoke-virtual/range {v2 .. v8}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;

    move-result-object v2

    .line 9
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    const-string v2, "EventStream"

    .line 11
    invoke-static {p1, v2}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    new-array v7, p1, [J

    .line 13
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    new-array v8, p1, [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    const/4 p1, 0x0

    .line 14
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 15
    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 16
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v7, p1

    .line 17
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    aput-object v2, v8, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, p0

    move-object v3, v1

    move-object v4, v0

    move-wide v5, v9

    .line 18
    invoke-virtual/range {v2 .. v8}, Lc/e/a/a/j/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lc/e/a/a/j/c/a/e;

    move-result-object p1

    return-object p1
.end method

.method public h(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/h;
    .locals 2

    const-string v0, "sourceURL"

    const-string v1, "range"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lc/e/a/a/j/c/a/h;

    move-result-object p1

    return-object p1
.end method

.method public i(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/g;
    .locals 8

    const/4 v0, 0x0

    const-string v1, "moreInformationURL"

    .line 1
    invoke-static {p1, v1, v0}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "lang"

    .line 2
    invoke-static {p1, v1, v0}, Lc/e/a/a/j/c/a/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move-object v2, v1

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "Title"

    .line 4
    invoke-static {p1, v3}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_0
    const-string v3, "Source"

    .line 6
    invoke-static {p1, v3}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v3, "Copyright"

    .line 8
    invoke-static {p1, v3}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :goto_2
    const-string v2, "ProgramInformation"

    .line 11
    invoke-static {p1, v2}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    new-instance p1, Lc/e/a/a/j/c/a/g;

    move-object v2, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lc/e/a/a/j/c/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    move-object v2, v5

    goto :goto_0
.end method

.method public j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/k$d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "S"

    .line 3
    invoke-static {p1, v3}, Lc/e/a/a/o/J;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "t"

    .line 4
    invoke-static {p1, v3, v1, v2}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-string v5, "d"

    .line 5
    invoke-static {p1, v5, v3, v4}, Lc/e/a/a/j/c/a/c;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v5, 0x0

    const-string v6, "r"

    .line 6
    invoke-static {p1, v6, v5}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    :goto_0
    if-ge v5, v6, :cond_2

    .line 7
    invoke-virtual {p0, v1, v2, v3, v4}, Lc/e/a/a/j/c/a/c;->a(JJ)Lc/e/a/a/j/c/a/k$d;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_2
    const-string v3, "SegmentTimeline"

    .line 9
    invoke-static {p1, v3}, Lc/e/a/a/o/J;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0
.end method

.method public k(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/h;
    .locals 2

    const-string v0, "media"

    const-string v1, "mediaRange"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/a/j/c/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lc/e/a/a/j/c/a/h;

    move-result-object p1

    return-object p1
.end method

.method public l(Lorg/xmlpull/v1/XmlPullParser;)Lc/e/a/a/j/c/a/n;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 2
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, v1, p1}, Lc/e/a/a/j/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/a/j/c/a/n;

    move-result-object p1

    return-object p1
.end method
