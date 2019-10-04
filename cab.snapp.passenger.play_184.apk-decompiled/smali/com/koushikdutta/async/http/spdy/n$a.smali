.class final Lcom/koushikdutta/async/http/spdy/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/koushikdutta/async/http/spdy/h;

.field final b:Z

.field final c:Lcom/koushikdutta/async/http/spdy/e$a;

.field final d:Lcom/koushikdutta/async/p;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field final k:Lcom/koushikdutta/async/l;

.field l:Lcom/koushikdutta/async/l;

.field final m:Lcom/koushikdutta/async/a/d;

.field final n:Lcom/koushikdutta/async/a/d;

.field private final o:Lcom/koushikdutta/async/n;

.field private final p:Lcom/koushikdutta/async/a/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/http/spdy/e$a;Z)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Lcom/koushikdutta/async/http/spdy/h;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/h;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a;->a:Lcom/koushikdutta/async/http/spdy/h;

    .line 160
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a;->k:Lcom/koushikdutta/async/l;

    .line 161
    new-instance v0, Lcom/koushikdutta/async/http/spdy/n$a$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/n$a$2;-><init>(Lcom/koushikdutta/async/http/spdy/n$a;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a;->p:Lcom/koushikdutta/async/a/d;

    .line 189
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a;->l:Lcom/koushikdutta/async/l;

    .line 190
    new-instance v0, Lcom/koushikdutta/async/http/spdy/n$a$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/n$a$3;-><init>(Lcom/koushikdutta/async/http/spdy/n$a;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a;->m:Lcom/koushikdutta/async/a/d;

    .line 207
    new-instance v0, Lcom/koushikdutta/async/http/spdy/n$a$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/n$a$4;-><init>(Lcom/koushikdutta/async/http/spdy/n$a;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a;->n:Lcom/koushikdutta/async/a/d;

    .line 134
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$a;->o:Lcom/koushikdutta/async/n;

    .line 135
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    .line 136
    iput-boolean p3, p0, Lcom/koushikdutta/async/http/spdy/n$a;->b:Z

    .line 138
    new-instance p2, Lcom/koushikdutta/async/http/spdy/n$a$1;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/http/spdy/n$a$1;-><init>(Lcom/koushikdutta/async/http/spdy/n$a;)V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/n;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 145
    new-instance p1, Lcom/koushikdutta/async/p;

    invoke-direct {p1}, Lcom/koushikdutta/async/p;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$a;->d:Lcom/koushikdutta/async/p;

    .line 146
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/n$a;->a()V

    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/n$a;Lcom/koushikdutta/async/l;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1341
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    .line 1345
    new-instance p3, Lcom/koushikdutta/async/http/spdy/m;

    invoke-direct {p3}, Lcom/koushikdutta/async/http/spdy/m;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1347
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v4

    .line 1348
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0x18

    const v7, 0xffffff

    and-int/2addr v4, v7

    .line 1351
    invoke-virtual {p3, v4, v6, v5}, Lcom/koushikdutta/async/http/spdy/m;->set(III)Lcom/koushikdutta/async/http/spdy/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 1354
    :cond_1
    iget-object p0, p0, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {p0, v2, p3}, Lcom/koushikdutta/async/http/spdy/e$a;->settings(ZLcom/koushikdutta/async/http/spdy/m;)V

    return-void

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 1343
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {p1, p0}, Lcom/koushikdutta/async/http/spdy/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a;->o:Lcom/koushikdutta/async/n;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/n$a;->d:Lcom/koushikdutta/async/p;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a;->d:Lcom/koushikdutta/async/p;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/n$a;->p:Lcom/koushikdutta/async/a/d;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/p;->read(ILcom/koushikdutta/async/a/d;)V

    return-void
.end method
