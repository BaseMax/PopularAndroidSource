.class public Lcom/yandex/metrica/impl/ob/kz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/kz$b;,
        Lcom/yandex/metrica/impl/ob/kz$a;,
        Lcom/yandex/metrica/impl/ob/kz$c;,
        Lcom/yandex/metrica/impl/ob/kz$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/yandex/metrica/impl/h;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/yandex/metrica/impl/ob/ma;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "public"

    goto :goto_0

    :cond_0
    const-string v0, "public_"

    :goto_0
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->d:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/yandex/metrica/impl/bm;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->e:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    invoke-virtual {v0}, Lcom/yandex/metrica/a;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->l:Ljava/lang/String;

    sget-object v1, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    invoke-virtual {v1}, Lcom/yandex/metrica/a;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->k:Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;

    return-object v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->a:Landroid/content/Context;

    return-void
.end method

.method protected a(Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->k:Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;

    return-void
.end method

.method protected a(Lcom/yandex/metrica/impl/h;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    return-void
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->n:Lcom/yandex/metrica/impl/ob/ma;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected d()Lcom/yandex/metrica/impl/ob/ma;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->n:Lcom/yandex/metrica/impl/ob/ma;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 185
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kz;->r()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kz;->q()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/kz;->j:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a([Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized f(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method protected declared-synchronized g(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 197
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2.2"

    return-object v0
.end method

.method final h(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->m:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "11392"

    return-object v0
.end method

.method i(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz;->l:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget v0, v0, Lcom/yandex/metrica/impl/h;->e:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized q()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->e:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget v0, v0, Lcom/yandex/metrica/impl/h$a;->a:I

    return v0
.end method

.method public v()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget v0, v0, Lcom/yandex/metrica/impl/h$a;->b:I

    return v0
.end method

.method public w()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget v0, v0, Lcom/yandex/metrica/impl/h$a;->c:I

    return v0
.end method

.method public x()F
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget-object v0, v0, Lcom/yandex/metrica/impl/h;->f:Lcom/yandex/metrica/impl/h$a;

    iget v0, v0, Lcom/yandex/metrica/impl/h$a;->d:F

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz;->c:Lcom/yandex/metrica/impl/h;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kz;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
