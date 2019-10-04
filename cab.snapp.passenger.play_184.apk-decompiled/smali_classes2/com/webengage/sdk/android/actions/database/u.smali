.class Lcom/webengage/sdk/android/actions/database/u;
.super Lcom/webengage/sdk/android/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/u;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/u;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/u;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/u;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/webengage/sdk/android/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->STRING:Lcom/webengage/sdk/android/utils/DataType;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/webengage/sdk/android/utils/DataType;->convert(Ljava/lang/Object;Lcom/webengage/sdk/android/utils/DataType;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/r;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/transit+json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/webengage/sdk/android/utils/a/f$a;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/database/u;->c:Ljava/lang/String;

    sget-object v3, Lcom/webengage/sdk/android/utils/a/e;->b:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/database/u;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/lang/Object;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/util/Map;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f;->i()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/webengage/sdk/android/utils/a/g$a;

    invoke-direct {p1}, Lcom/webengage/sdk/android/utils/a/g$a;-><init>()V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "action_data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/u;->d:Ljava/lang/Object;

    const-string v0, "server_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/u;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/database/u;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/actions/database/u;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_6

    check-cast p1, Lcom/webengage/sdk/android/utils/a/g;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/u;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->a()Ljava/lang/Exception;

    move-result-object v1

    const-string v2, "WebEngage"

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v1

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v1

    const/16 v3, 0x1f4

    if-ge v1, v3, :cond_1

    sget-object v1, Lcom/webengage/sdk/android/actions/database/q;->a:Lcom/webengage/sdk/android/actions/database/t;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/database/t;->b()Lcom/webengage/sdk/android/actions/database/r;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/webengage/sdk/android/actions/database/r;->a(Z)V

    sget-object v1, Lcom/webengage/sdk/android/actions/database/q;->a:Lcom/webengage/sdk/android/actions/database/t;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/database/t;->b()Lcom/webengage/sdk/android/actions/database/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/database/r;->d()V

    const-string v1, "Events successfully Logged to server, scheduling next sync"

    invoke-static {v2, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/webengage/sdk/android/l;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/l;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/u;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/database/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/actions/database/i;->a(Ljava/util/List;)I

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/r;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/webengage/sdk/android/actions/database/r;->b(Z)V

    sget-object v3, Lcom/webengage/sdk/android/actions/database/q;->a:Lcom/webengage/sdk/android/actions/database/t;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/database/t;->b()Lcom/webengage/sdk/android/actions/database/r;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/webengage/sdk/android/actions/database/r;->a(Z)V

    sget-object v1, Lcom/webengage/sdk/android/actions/database/q;->a:Lcom/webengage/sdk/android/actions/database/t;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/database/t;->b()Lcom/webengage/sdk/android/actions/database/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/database/r;->b()V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/webengage/sdk/android/l;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/l;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/u;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/database/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/actions/database/i;->b(Ljava/util/List;)I

    const-string v0, "Event Logging failed, scheduling next sync"

    invoke-static {v2, v0}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->a()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event sync failed due to Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->a()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->a()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    :cond_6
    return-void
.end method
