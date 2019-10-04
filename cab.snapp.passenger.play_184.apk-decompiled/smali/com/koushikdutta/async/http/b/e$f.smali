.class final Lcom/koushikdutta/async/http/b/e$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field final a:Lcom/koushikdutta/async/http/b/c;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/koushikdutta/async/http/b/c;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/security/cert/Certificate;

.field private final g:[Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/c;Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/b/c;)V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$f;->b:Ljava/lang/String;

    .line 605
    iput-object p2, p0, Lcom/koushikdutta/async/http/b/e$f;->c:Lcom/koushikdutta/async/http/b/c;

    .line 606
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/d;->getMethod()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$f;->d:Ljava/lang/String;

    .line 607
    iput-object p4, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    const/4 p1, 0x0

    .line 620
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$f;->e:Ljava/lang/String;

    .line 621
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$f;->f:[Ljava/security/cert/Certificate;

    .line 622
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$f;->g:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 569
    :try_start_0
    new-instance v4, Lcom/koushikdutta/async/http/b/h;

    sget-object v5, Lcom/koushikdutta/async/e/b;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Lcom/koushikdutta/async/http/b/h;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 570
    :try_start_1
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/h;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/b/e$f;->b:Ljava/lang/String;

    .line 571
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/h;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/b/e$f;->d:Ljava/lang/String;

    .line 572
    new-instance v5, Lcom/koushikdutta/async/http/b/c;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/b/c;-><init>()V

    iput-object v5, p0, Lcom/koushikdutta/async/http/b/e$f;->c:Lcom/koushikdutta/async/http/b/c;

    .line 573
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/h;->readInt()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 575
    iget-object v7, p0, Lcom/koushikdutta/async/http/b/e$f;->c:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/h;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/http/b/c;->addLine(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 578
    :cond_0
    new-instance v5, Lcom/koushikdutta/async/http/b/c;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/b/c;-><init>()V

    iput-object v5, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    .line 579
    iget-object v5, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/h;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/http/b/c;->setStatusLine(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/h;->readInt()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 582
    iget-object v7, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/h;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/http/b/c;->addLine(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 594
    :cond_1
    iput-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->e:Ljava/lang/String;

    .line 595
    iput-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->f:[Ljava/security/cert/Certificate;

    .line 596
    iput-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->g:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    .line 599
    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :goto_2
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method

.method private static a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "-1\n"

    .line 680
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 684
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 685
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 686
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    .line 687
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 691
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method final a()Z
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$f;->b:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final matches(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$f;->d:Ljava/lang/String;

    .line 698
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/koushikdutta/async/http/b/f;

    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    invoke-direct {p2, p1, v0}, Lcom/koushikdutta/async/http/b/f;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/c;)V

    iget-object p1, p0, Lcom/koushikdutta/async/http/b/e$f;->c:Lcom/koushikdutta/async/http/b/c;

    .line 700
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/b/c;->toMultimap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/koushikdutta/async/http/b/f;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final writeTo(Lcom/koushikdutta/async/http/b/e$h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 627
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/b/e$h;->a(I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 628
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/koushikdutta/async/e/b;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 630
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/async/http/b/e$f;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 632
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->c:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/b/c;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 633
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->c:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/b/c;->length()I

    move-result v3

    const-string v4, ": "

    if-ge p1, v3, :cond_0

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/koushikdutta/async/http/b/e$f;->c:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {v5, p1}, Lcom/koushikdutta/async/http/b/c;->getFieldName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/b/e$f;->c:Lcom/koushikdutta/async/http/b/c;

    .line 635
    invoke-virtual {v4, p1}, Lcom/koushikdutta/async/http/b/c;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 638
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/b/c;->getStatusLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/b/c;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 640
    :goto_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/b/c;->length()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/http/b/c;->getFieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    .line 642
    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/http/b/c;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 641
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$f;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 646
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 648
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/e$f;->f:[Ljava/security/cert/Certificate;

    invoke-static {v1, p1}, Lcom/koushikdutta/async/http/b/e$f;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 649
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/e$f;->g:[Ljava/security/cert/Certificate;

    invoke-static {v1, p1}, Lcom/koushikdutta/async/http/b/e$f;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 651
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-void
.end method
