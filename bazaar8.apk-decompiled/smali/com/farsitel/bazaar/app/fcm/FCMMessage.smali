.class public final Lcom/farsitel/bazaar/app/fcm/FCMMessage;
.super Ljava/lang/Object;
.source "FCMMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "n"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "false"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->a:Z

    const-string v0, "t"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->b:Ljava/lang/String;

    const-string v0, "x"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->c:Ljava/lang/String;

    const-string v0, "k"

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->d:Ljava/lang/String;

    const-string v0, "hasSound"

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->e:Z

    const-string v0, "bx"

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->c:Ljava/lang/String;

    :goto_5
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->f:Ljava/lang/String;

    const-string v0, "bp"

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move-object v0, v2

    :goto_6
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->g:Ljava/lang/String;

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->k:Landroid/os/Bundle;

    const-string v0, "ay"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v3, 0x41

    if-eq v1, v3, :cond_8

    goto :goto_7

    :cond_8
    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12
    sget-object v2, Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;->ACTIVITY:Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    .line 13
    :cond_9
    :goto_7
    iput-object v2, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->h:Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    const-string v0, "aa"

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->i:Ljava/lang/String;

    const-string v0, "ad"

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->j:Ljava/lang/String;

    const-string v0, "ab"

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 17
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "jsonObject.keys()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :cond_a
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->k:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    .line 22
    :cond_b
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->k:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_8

    .line 23
    :cond_c
    instance-of v3, v2, Ljava/lang/Byte;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->k:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_8

    .line 24
    :cond_d
    instance-of v3, v2, Ljava/lang/Character;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->k:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_8

    .line 25
    :cond_e
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->k:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 26
    :cond_f
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->k:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_10
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->h:Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lc/c/a/b/c/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public final d()Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->h:Lcom/farsitel/bazaar/app/fcm/FCMMessage$ActionType;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->e:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/app/fcm/FCMMessage;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
