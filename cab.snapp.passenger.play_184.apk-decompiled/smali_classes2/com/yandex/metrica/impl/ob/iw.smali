.class public Lcom/yandex/metrica/impl/ob/iw;
.super Lcom/yandex/metrica/impl/ob/ix;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final c:Lcom/yandex/metrica/impl/ob/je;

.field private final d:Lcom/yandex/metrica/impl/ob/je;

.field private final e:Lcom/yandex/metrica/impl/ob/je;

.field private final f:Lcom/yandex/metrica/impl/ob/je;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ix;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iw;->i()Ljava/lang/String;

    move-result-object p2

    const-string v0, "init_event_pref_key"

    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iw;->c:Lcom/yandex/metrica/impl/ob/je;

    .line 32
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iw;->d:Lcom/yandex/metrica/impl/ob/je;

    .line 33
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iw;->i()Ljava/lang/String;

    move-result-object p2

    const-string v0, "first_event_pref_key"

    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iw;->e:Lcom/yandex/metrica/impl/ob/je;

    .line 34
    new-instance p1, Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/iw;->i()Ljava/lang/String;

    move-result-object p2

    const-string v0, "fitst_event_description_key"

    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/iw;->f:Lcom/yandex/metrica/impl/ob/je;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/je;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "init_event_pref_key"

    invoke-direct {v0, v1, p0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "init_event_pref_key"

    const-string v1, ""

    .line 115
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iw;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/iw;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ix;->j()V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iw;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->d:Lcom/yandex/metrica/impl/ob/je;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/iw;->a(Lcom/yandex/metrica/impl/ob/je;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iw;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->c:Lcom/yandex/metrica/impl/ob/je;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/iw;->a(Lcom/yandex/metrica/impl/ob/je;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->e:Lcom/yandex/metrica/impl/ob/je;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/iw;->a(Lcom/yandex/metrica/impl/ob/je;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/ob/je;

    const-string v1, "init_event_pref_key"

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/iw;->a(Lcom/yandex/metrica/impl/ob/je;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/iw;->f:Lcom/yandex/metrica/impl/ob/je;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->f:Lcom/yandex/metrica/impl/ob/je;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/iw;->a(Lcom/yandex/metrica/impl/ob/je;)V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "_initpreferences"

    return-object v0
.end method

.method g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/iw;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
