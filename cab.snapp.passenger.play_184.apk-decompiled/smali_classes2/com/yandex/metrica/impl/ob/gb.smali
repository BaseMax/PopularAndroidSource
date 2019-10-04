.class public Lcom/yandex/metrica/impl/ob/gb;
.super Lcom/yandex/metrica/impl/ob/ge;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/je;

.field private final b:Lcom/yandex/metrica/impl/ob/je;

.field private final c:Lcom/yandex/metrica/impl/ob/je;

.field private final d:Lcom/yandex/metrica/impl/ob/je;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fr;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ge;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    .line 25
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    const-string v0, "init_event_pref_key"

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/je;

    .line 26
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    const-string v0, "first_event_pref_key"

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gb;->b:Lcom/yandex/metrica/impl/ob/je;

    .line 27
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    const-string v0, "first_event_description_key"

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 28
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    const-string v0, "preload_info_auto_tracking_enabled"

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gb;->d:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gb;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->a:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ge;->i()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gb;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ge;->i()V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->b:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gb;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->b:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/gb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ge;->i()V

    return-void
.end method

.method public b(Z)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gb;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ge;->i()V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/gb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/gb;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gb;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 1076
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/gb;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ge;->i()V

    return-void
.end method
