.class public Lcom/koushikdutta/async/http/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field static final synthetic d:Z


# instance fields
.field private a:J

.field b:Lcom/koushikdutta/async/http/n;

.field c:Lcom/koushikdutta/async/http/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/koushikdutta/async/http/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/a/g;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/n;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/koushikdutta/async/http/a/g;->a:J

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/g;->b:Lcom/koushikdutta/async/http/n;

    .line 20
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/g;->b:Lcom/koushikdutta/async/http/n;

    const-string v0, "Content-Disposition"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/koushikdutta/async/http/s;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/s;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/a/g;->c:Lcom/koushikdutta/async/http/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/t;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/koushikdutta/async/http/a/g;->a:J

    .line 29
    iput-wide p2, p0, Lcom/koushikdutta/async/http/a/g;->a:J

    .line 30
    new-instance p2, Lcom/koushikdutta/async/http/n;

    invoke-direct {p2}, Lcom/koushikdutta/async/http/n;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/g;->b:Lcom/koushikdutta/async/http/n;

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "form-data; name=\"%s\""

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 33
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/koushikdutta/async/http/t;

    .line 34
    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p3}, Lcom/koushikdutta/async/http/t;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p3}, Lcom/koushikdutta/async/http/t;->getValue()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v0

    const-string p3, "; %s=\"%s\""

    invoke-static {p4, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/g;->b:Lcom/koushikdutta/async/http/n;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-Disposition"

    invoke-virtual {p1, p3, p2}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 38
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/g;->b:Lcom/koushikdutta/async/http/n;

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/koushikdutta/async/http/s;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/s;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/a/g;->c:Lcom/koushikdutta/async/http/s;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/g;->b:Lcom/koushikdutta/async/http/n;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/g;->c:Lcom/koushikdutta/async/http/s;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/s;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/g;->c:Lcom/koushikdutta/async/http/s;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/s;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawHeaders()Lcom/koushikdutta/async/http/n;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/g;->b:Lcom/koushikdutta/async/http/n;

    return-object v0
.end method

.method public isFile()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/g;->c:Lcom/koushikdutta/async/http/s;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/s;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/koushikdutta/async/http/a/g;->a:J

    return-wide v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/g;->b:Lcom/koushikdutta/async/http/n;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 69
    sget-boolean p1, Lcom/koushikdutta/async/http/a/g;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
