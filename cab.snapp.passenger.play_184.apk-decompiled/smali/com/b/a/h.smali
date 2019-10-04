.class public final Lcom/b/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/b/a/r;

.field c:Lcom/b/a/b;

.field d:Lcom/b/a/o;

.field e:Lcom/b/a/e;

.field f:Lcom/b/a/p;

.field private g:Lcom/b/a/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context"

    .line 24
    invoke-static {v0, p1}, Lcom/b/a/l;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a()Lcom/b/a/m;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/b/a/h;->g:Lcom/b/a/m;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/b/a/h$1;

    invoke-direct {v0, p0}, Lcom/b/a/h$1;-><init>(Lcom/b/a/h;)V

    iput-object v0, p0, Lcom/b/a/h;->g:Lcom/b/a/m;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/b/a/h;->g:Lcom/b/a/m;

    return-object v0
.end method

.method public final build()V
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/b/a/g;->a(Lcom/b/a/h;)V

    return-void
.end method

.method public final setConverter(Lcom/b/a/b;)Lcom/b/a/h;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/b/a/h;->c:Lcom/b/a/b;

    return-object p0
.end method

.method public final setEncryption(Lcom/b/a/e;)Lcom/b/a/h;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/b/a/h;->e:Lcom/b/a/e;

    return-object p0
.end method

.method public final setLogInterceptor(Lcom/b/a/m;)Lcom/b/a/h;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/b/a/h;->g:Lcom/b/a/m;

    return-object p0
.end method

.method public final setParser(Lcom/b/a/o;)Lcom/b/a/h;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/b/a/h;->d:Lcom/b/a/o;

    return-object p0
.end method

.method public final setSerializer(Lcom/b/a/p;)Lcom/b/a/h;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/b/a/h;->f:Lcom/b/a/p;

    return-object p0
.end method

.method public final setStorage(Lcom/b/a/r;)Lcom/b/a/h;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/b/a/h;->b:Lcom/b/a/r;

    return-object p0
.end method
