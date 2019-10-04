.class Lcom/webengage/sdk/android/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/User;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/webengage/sdk/android/Analytics;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/webengage/sdk/android/Analytics;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "WebEngage"

    const-string v0, "Found user attribute value as null"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Rejecting user attribute : "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "WebEngage"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "we_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Found prefix \"we_\" on custom attribute name : "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Rejecting user attribute : "

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const-string v2, "Attribute name is Invalid"

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Rejecting  user attribute : "

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 5

    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "New luid: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebEngage"

    invoke-static {v2, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/webengage/sdk/android/f;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v1

    iget-object v2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/i;->onAnonymousIdChanged(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public deleteAttribute(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const-string v3, "user_delete_attributes"

    invoke-static {v3, v1, v0, v1, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteAttributes(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "WebEngage"

    const-string v0, "Attribute list is Invalid"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const-string v3, "user_delete_attributes"

    invoke-static {v3, v2, v0, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public loggedIn(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x64

    invoke-static {p1, v1}, Lcom/webengage/sdk/android/utils/k;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_logged_in"

    invoke-static {v3, v2, v2, v0, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "WebEngage"

    const-string v0, "ILLEGAL ARGUMENT : User Identifier"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loggedOut()V
    .locals 4

    iget-object v0, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_logged_out"

    invoke-static {v3, v2, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public login(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/ak;->loggedIn(Ljava/lang/String;)V

    return-void
.end method

.method public logout()V
    .locals 0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/ak;->loggedOut()V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object p2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "user_update"

    invoke-static {v2, v1, v0, v1, p2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object p2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "user_update"

    invoke-static {v2, v1, v0, v1, p2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object p2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "user_update"

    invoke-static {v2, v1, v0, v1, p2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object p2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "user_update"

    invoke-static {v2, v1, v0, v1, p2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object p2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "user_update"

    invoke-static {v2, v1, v0, v1, p2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update"

    invoke-static {v3, v2, v0, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "WebEngage"

    const-string v0, "ILLEGAL ARGUMENT : attributes"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBirthDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/am;->e:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/am;->e:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/am;->e:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sget-object p3, Lcom/webengage/sdk/android/am;->e:Lcom/webengage/sdk/android/am;

    invoke-virtual {p3}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    const-string p3, "user_update"

    iget-object v0, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p3, p2, v1, v1, v0}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public setBirthDate(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/am;->e:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    const-string v1, "user_update"

    iget-object v2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v3, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/am;->i:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/am;->i:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/am;->c:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/am;->c:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/am;->a:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/am;->a:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setGender(Lcom/webengage/sdk/android/utils/Gender;)V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/am;->f:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/am;->f:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/Gender;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setHashedEmail(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/am;->d:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/am;->d:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setHashedPhoneNumber(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/am;->h:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/am;->h:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/am;->b:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/am;->b:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setLocation(DD)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object p2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 p3, 0x0

    const-string p4, "user_update_geo_info"

    invoke-static {p4, v0, p3, p3, p2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setOptIn(Lcom/webengage/sdk/android/Channel;Z)V
    .locals 3

    const-class v0, Lcom/webengage/sdk/android/Channel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Channel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object p2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "user_update"

    invoke-static {v2, v0, v1, v1, p2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/am;->g:Lcom/webengage/sdk/android/am;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/webengage/sdk/android/ak;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/am;->g:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    iget-object v1, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserProfile(Lcom/webengage/sdk/android/UserProfile;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/UserProfile;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/UserProfile;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/webengage/sdk/android/ak;->b:Lcom/webengage/sdk/android/Analytics;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/UserProfile;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/webengage/sdk/android/ak;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "user_update"

    invoke-static {v4, v1, v3, v3, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/webengage/sdk/android/UserProfile;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/UserProfile;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/UserProfile;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "latitude"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/UserProfile;->b()Ljava/util/Map;

    move-result-object p1

    const-string v2, "longitude"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/webengage/sdk/android/ak;->setLocation(DD)V

    :cond_2
    return-void
.end method
