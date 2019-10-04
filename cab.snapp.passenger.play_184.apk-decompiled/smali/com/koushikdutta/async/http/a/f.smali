.class public Lcom/koushikdutta/async/http/a/f;
.super Lcom/koushikdutta/async/http/e/f;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/e/f;",
        "Lcom/koushikdutta/async/http/a/a<",
        "Lcom/koushikdutta/async/http/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field d:Lcom/koushikdutta/async/y;

.field e:Lcom/koushikdutta/async/http/n;

.field f:Lcom/koushikdutta/async/l;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Lcom/koushikdutta/async/http/a/f$a;

.field j:I

.field k:I

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/http/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 213
    invoke-direct {p0}, Lcom/koushikdutta/async/http/e/f;-><init>()V

    const-string v0, "multipart/form-data"

    .line 102
    iput-object v0, p0, Lcom/koushikdutta/async/http/a/f;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 103
    invoke-direct {p0}, Lcom/koushikdutta/async/http/e/f;-><init>()V

    const-string v0, "multipart/form-data"

    .line 102
    iput-object v0, p0, Lcom/koushikdutta/async/http/a/f;->h:Ljava/lang/String;

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "="

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 106
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 108
    aget-object v4, v3, v1

    const-string v5, "boundary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    .line 110
    aget-object p1, v3, p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/a/f;->setBoundary(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No boundary found for multipart/form-data"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/a/f;->report(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f;->f:Lcom/koushikdutta/async/l;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f;->e:Lcom/koushikdutta/async/http/n;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/n;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a/f;->e:Lcom/koushikdutta/async/http/n;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f;->e:Lcom/koushikdutta/async/http/n;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a/f;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a/f;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {v2}, Lcom/koushikdutta/async/l;->peekString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/n;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/koushikdutta/async/http/a/f;->g:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/koushikdutta/async/http/a/f;->f:Lcom/koushikdutta/async/l;

    return-void
.end method

.method public addFilePart(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 221
    new-instance v0, Lcom/koushikdutta/async/http/a/d;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/a/d;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a/f;->addPart(Lcom/koushikdutta/async/http/a/g;)V

    return-void
.end method

.method public addPart(Lcom/koushikdutta/async/http/a/g;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a/f;->n:Ljava/util/ArrayList;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStringPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 225
    new-instance v0, Lcom/koushikdutta/async/http/a/k;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a/f;->addPart(Lcom/koushikdutta/async/http/a/g;)V

    return-void
.end method

.method public get()Lcom/koushikdutta/async/http/s;
    .locals 2

    .line 237
    new-instance v0, Lcom/koushikdutta/async/http/s;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a/f;->e:Lcom/koushikdutta/async/http/n;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/n;->getMultiMap()Lcom/koushikdutta/async/http/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/s;-><init>(Lcom/koushikdutta/async/http/s;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/f;->get()Lcom/koushikdutta/async/http/s;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/f;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a/f;->setBoundary(Ljava/lang/String;)V

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/a/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/f;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f;->e:Lcom/koushikdutta/async/http/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMultipartCallback()Lcom/koushikdutta/async/http/a/f$a;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f;->i:Lcom/koushikdutta/async/http/a/f$a;

    return-object v0
.end method

.method public length()I
    .locals 9

    .line 198
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/f;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a/f;->setBoundary(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/koushikdutta/async/http/a/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/a/g;

    .line 204
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/a/g;->getRawHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v3

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/f;->getBoundaryStart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/n;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/a/g;->length()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    int-to-long v4, v0

    .line 207
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/a/g;->length()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v2, v0

    add-long/2addr v6, v2

    const-wide/16 v2, 0x2

    add-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/f;->getBoundaryEnd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 210
    iput v0, p0, Lcom/koushikdutta/async/http/a/f;->k:I

    return v0
.end method

.method public final onBoundaryEnd()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/koushikdutta/async/http/e/f;->onBoundaryEnd()V

    .line 59
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/f;->a()V

    return-void
.end method

.method public final onBoundaryStart()V
    .locals 3

    .line 64
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/n;-><init>()V

    .line 65
    new-instance v1, Lcom/koushikdutta/async/y;

    invoke-direct {v1}, Lcom/koushikdutta/async/y;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/a/f;->d:Lcom/koushikdutta/async/y;

    .line 66
    iget-object v1, p0, Lcom/koushikdutta/async/http/a/f;->d:Lcom/koushikdutta/async/y;

    new-instance v2, Lcom/koushikdutta/async/http/a/f$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/a/f$1;-><init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/http/n;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/y;->setLineCallback(Lcom/koushikdutta/async/y$a;)V

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f;->d:Lcom/koushikdutta/async/y;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a/f;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void
.end method

.method public parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/a/f;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/a/f;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/f;->h:Ljava/lang/String;

    return-void
.end method

.method public setMultipartCallback(Lcom/koushikdutta/async/http/a/f$a;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/f;->i:Lcom/koushikdutta/async/http/a/f$a;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f;->n:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance p1, Lcom/koushikdutta/async/b/b;

    new-instance v0, Lcom/koushikdutta/async/http/a/f$2;

    invoke-direct {v0, p0, p3}, Lcom/koushikdutta/async/http/a/f$2;-><init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/a/a;)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/b/b;-><init>(Lcom/koushikdutta/async/a/a;)V

    .line 142
    iget-object p3, p0, Lcom/koushikdutta/async/http/a/f;->n:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/a/g;

    .line 143
    new-instance v1, Lcom/koushikdutta/async/http/a/f$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/koushikdutta/async/http/a/f$5;-><init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/http/a/g;Lcom/koushikdutta/async/q;)V

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/b/b;->add(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/a/f$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/koushikdutta/async/http/a/f$4;-><init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/http/a/g;Lcom/koushikdutta/async/q;)V

    .line 151
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/b/b;->add(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/a/f$3;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/a/f$3;-><init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/q;)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/b/b;->add(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;

    goto :goto_0

    .line 169
    :cond_1
    new-instance p3, Lcom/koushikdutta/async/http/a/f$6;

    invoke-direct {p3, p0, p2}, Lcom/koushikdutta/async/http/a/f$6;-><init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/q;)V

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/b/b;->add(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;

    .line 179
    invoke-virtual {p1}, Lcom/koushikdutta/async/b/b;->start()Lcom/koushikdutta/async/b/b;

    return-void
.end method
