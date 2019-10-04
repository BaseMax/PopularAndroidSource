.class public Lcom/yandex/metrica/impl/ob/gs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/gr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/gr<",
        "Lcom/yandex/metrica/impl/ob/lp;",
        "Lcom/yandex/metrica/impl/ob/kh$a$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0

    .line 16
    check-cast p1, Lcom/yandex/metrica/impl/ob/lp;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gs;->a(Lcom/yandex/metrica/impl/ob/lp;)Lcom/yandex/metrica/impl/ob/kh$a$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/lp;)Lcom/yandex/metrica/impl/ob/kh$a$b;
    .locals 2

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/kh$a$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kh$a$b;-><init>()V

    .line 23
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->g:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->h:Z

    .line 24
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->d:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->e:Z

    .line 25
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->c:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->d:Z

    .line 26
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->b:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->c:Z

    .line 27
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->a:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->b:Z

    .line 28
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->e:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->f:Z

    .line 29
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->f:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->g:Z

    .line 30
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->l:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->l:Z

    .line 31
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->j:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->k:Z

    .line 32
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->n:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->n:Z

    .line 33
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->m:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->m:Z

    .line 34
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/lp;->h:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->i:Z

    .line 35
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/lp;->i:Z

    iput-boolean p1, v0, Lcom/yandex/metrica/impl/ob/kh$a$b;->j:Z

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kh$a$b;)Lcom/yandex/metrica/impl/ob/lp;
    .locals 2

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/lp$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lp$a;-><init>()V

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->b:Z

    .line 43
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->a(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->n:Z

    .line 44
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->m(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->m:Z

    .line 45
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->l(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->l:Z

    .line 46
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->k(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->k:Z

    .line 47
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->j(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->j:Z

    .line 48
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->i(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->i:Z

    .line 49
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->h(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->g:Z

    .line 50
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->f(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->f:Z

    .line 51
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->e(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->e:Z

    .line 52
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->d(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->d:Z

    .line 53
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->c(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->c:Z

    .line 54
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lp$a;->b(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/kh$a$b;->h:Z

    .line 55
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lp$a;->g(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lp$a;->a()Lcom/yandex/metrica/impl/ob/lp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/e;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/yandex/metrica/impl/ob/kh$a$b;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gs;->a(Lcom/yandex/metrica/impl/ob/kh$a$b;)Lcom/yandex/metrica/impl/ob/lp;

    move-result-object p1

    return-object p1
.end method
