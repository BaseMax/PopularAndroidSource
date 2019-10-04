.class final Lcom/koushikdutta/async/http/e/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a;->directory(Ljava/lang/String;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Z

.field final synthetic c:Lcom/koushikdutta/async/http/e/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a;Ljava/io/File;Z)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$6;->c:Lcom/koushikdutta/async/http/e/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/e/a$6;->a:Ljava/io/File;

    iput-boolean p3, p0, Lcom/koushikdutta/async/http/e/a$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequest(Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V
    .locals 6

    .line 461
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/b;->getMatcher()Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 462
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e/a$6;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/koushikdutta/async/http/e/a$6;->b:Z

    if-eqz p1, :cond_2

    .line 465
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 468
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 471
    :cond_0
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/http/e/a$6$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/e/a$6$1;-><init>(Lcom/koushikdutta/async/http/e/a$6;)V

    .line 481
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 482
    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 484
    invoke-virtual {p2, v2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-void

    .line 488
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    const/16 v1, 0x194

    if-nez p1, :cond_3

    .line 489
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/e/d;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 490
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->end()V

    return-void

    .line 494
    :cond_3
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0xc8

    .line 495
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/e/d;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 496
    new-instance v0, Lcom/koushikdutta/async/http/e/a$6$2;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/e/a$6$2;-><init>(Lcom/koushikdutta/async/http/e/a$6;Lcom/koushikdutta/async/http/e/d;)V

    invoke-static {p1, p2, v0}, Lcom/koushikdutta/async/af;->pump(Ljava/io/InputStream;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 504
    :catch_0
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/e/d;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 505
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->end()V

    return-void
.end method
