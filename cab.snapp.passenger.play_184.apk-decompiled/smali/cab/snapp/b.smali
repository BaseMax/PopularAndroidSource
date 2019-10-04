.class public final Lcab/snapp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Z = false

.field private static g:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcab/snapp/c;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcab/snapp/d;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcab/snapp/a;

.field private e:Landroid/content/Context;

.field private f:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    sput-object v0, Lcab/snapp/b;->g:Lio/reactivex/j/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcab/snapp/c;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    .line 33
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/b;->f:Lio/reactivex/j/b;

    .line 37
    new-instance v0, Lcab/snapp/b$1;

    invoke-direct {v0, p0}, Lcab/snapp/b$1;-><init>(Lcab/snapp/b;)V

    iput-object v0, p0, Lcab/snapp/b;->c:Lcab/snapp/a;

    if-nez p3, :cond_0

    return-void

    .line 86
    :cond_0
    sput-boolean p2, Lcab/snapp/b;->d:Z

    .line 87
    iput-object p3, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    .line 88
    iput-object p1, p0, Lcab/snapp/b;->e:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Lcab/snapp/b;->init()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcab/snapp/d;
    .locals 1

    .line 133
    iget-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/d;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcab/snapp/b;)Lio/reactivex/j/b;
    .locals 0

    .line 23
    iget-object p0, p0, Lcab/snapp/b;->f:Lio/reactivex/j/b;

    return-object p0
.end method

.method static synthetic a(Lcab/snapp/b;Lcab/snapp/a/a;)V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcab/snapp/a/a;->getAckId()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    invoke-interface {v0, p1}, Lcab/snapp/c;->getAckRequest(Lcab/snapp/a/a;)Lcab/snapp/snappnetwork/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    invoke-interface {v0, p1}, Lcab/snapp/c;->getAckRequest(Lcab/snapp/a/a;)Lcab/snapp/snappnetwork/e;

    move-result-object p1

    new-instance v0, Lcab/snapp/b$2;

    invoke-direct {v0, p0}, Lcab/snapp/b$2;-><init>(Lcab/snapp/b;)V

    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/e;->performRequest(Lcab/snapp/snappnetwork/a/a;)V

    :cond_0
    return-void
.end method

.method public static getLogChannel()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    sget-object v0, Lcab/snapp/b;->g:Lio/reactivex/j/b;

    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 301
    sget-boolean v0, Lcab/snapp/b;->d:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    sget-object v0, Lcab/snapp/b;->g:Lio/reactivex/j/b;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 294
    invoke-virtual {p0, v0}, Lcab/snapp/b;->stop([Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcab/snapp/b;->f:Lio/reactivex/j/b;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lio/reactivex/j/b;->onComplete()V

    :cond_0
    return-void
.end method

.method public final getObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/a/a;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcab/snapp/b;->f:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final init()V
    .locals 5

    .line 95
    iget-object v0, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    invoke-interface {v0}, Lcab/snapp/c;->getIntervalPeriod()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    const-string v1, "POLING"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcab/snapp/d/b/a;

    iget-object v2, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    iget-object v3, p0, Lcab/snapp/b;->c:Lcab/snapp/a;

    invoke-direct {v0, v1, v2, v3}, Lcab/snapp/d/b/a;-><init>(Ljava/lang/String;Lcab/snapp/c;Lcab/snapp/a;)V

    .line 98
    invoke-interface {v0}, Lcab/snapp/d;->setup()V

    .line 99
    iget-object v2, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    iget-object v0, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    invoke-interface {v0}, Lcab/snapp/c;->getSideRequestIntervalPeriod()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    const-string v1, "POLUNG_SIDE_REQUEST"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lcab/snapp/d/b/a;

    iget-object v2, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    iget-object v3, p0, Lcab/snapp/b;->c:Lcab/snapp/a;

    invoke-direct {v0, v1, v2, v3}, Lcab/snapp/d/b/a;-><init>(Ljava/lang/String;Lcab/snapp/c;Lcab/snapp/a;)V

    .line 105
    invoke-interface {v0}, Lcab/snapp/d;->setup()V

    .line 106
    iget-object v2, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    iget-object v0, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    invoke-interface {v0}, Lcab/snapp/c;->getPusherConfig()Lcab/snapp/d/c/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    const-string v1, "PUSHER"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    new-instance v0, Lcab/snapp/d/c/c;

    iget-object v2, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    iget-object v3, p0, Lcab/snapp/b;->c:Lcab/snapp/a;

    invoke-direct {v0, v2, v3}, Lcab/snapp/d/c/c;-><init>(Lcab/snapp/c;Lcab/snapp/a;)V

    .line 112
    invoke-interface {v0}, Lcab/snapp/d;->setup()V

    .line 113
    iget-object v2, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    iget-object v0, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    invoke-interface {v0}, Lcab/snapp/c;->getEmqConnectionData()Lcab/snapp/d/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    const-string v1, "MQTT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    new-instance v0, Lcab/snapp/d/a/c;

    iget-object v2, p0, Lcab/snapp/b;->e:Landroid/content/Context;

    iget-object v3, p0, Lcab/snapp/b;->a:Lcab/snapp/c;

    invoke-interface {v3}, Lcab/snapp/c;->getEmqConnectionData()Lcab/snapp/d/a/a;

    move-result-object v3

    iget-object v4, p0, Lcab/snapp/b;->c:Lcab/snapp/a;

    invoke-direct {v0, v2, v3, v4}, Lcab/snapp/d/a/c;-><init>(Landroid/content/Context;Lcab/snapp/d/a/a;Lcab/snapp/a;)V

    .line 119
    invoke-interface {v0}, Lcab/snapp/d;->setup()V

    .line 120
    iget-object v2, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final isChannelInitilized(Ljava/lang/String;)Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final varargs publish(Lcom/google/gson/JsonObject;[Ljava/lang/String;)V
    .locals 5

    .line 188
    new-instance v0, Lcab/snapp/a/a;

    invoke-direct {v0}, Lcab/snapp/a/a;-><init>()V

    const-string v1, "PUBLISH"

    .line 189
    invoke-virtual {v0, v1}, Lcab/snapp/a/a;->setEventType(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Lcab/snapp/a/a;->setData(Lcom/google/gson/JsonObject;)V

    .line 192
    array-length p1, p2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 194
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    .line 196
    invoke-direct {p0, v2}, Lcab/snapp/b;->a(Ljava/lang/String;)Lcab/snapp/d;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 197
    invoke-interface {v3}, Lcab/snapp/d;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    new-instance v2, Lcom/google/gson/e;

    invoke-direct {v2}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcab/snapp/d;->publish(Ljava/lang/String;)Z

    goto :goto_1

    .line 202
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not implemented"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 205
    :cond_2
    iget-object p1, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 207
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/d;

    if-eqz p2, :cond_3

    .line 209
    invoke-interface {p2}, Lcab/snapp/d;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcab/snapp/d;->publish(Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final varargs start([Ljava/lang/String;)V
    .locals 5

    .line 227
    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 229
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 231
    invoke-direct {p0, v2}, Lcab/snapp/b;->a(Ljava/lang/String;)Lcab/snapp/d;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 232
    invoke-interface {v3}, Lcab/snapp/d;->isStarted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    invoke-interface {v3}, Lcab/snapp/d;->start()V

    goto :goto_1

    .line 237
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not implemented"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 240
    :cond_2
    iget-object p1, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 242
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/d;

    if-eqz v0, :cond_3

    .line 244
    invoke-interface {v0}, Lcab/snapp/d;->isStarted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 246
    invoke-interface {v0}, Lcab/snapp/d;->start()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final varargs stop([Ljava/lang/String;)V
    .locals 5

    .line 262
    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 264
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 266
    invoke-direct {p0, v2}, Lcab/snapp/b;->a(Ljava/lang/String;)Lcab/snapp/d;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 269
    invoke-interface {v3}, Lcab/snapp/d;->stop()V

    goto :goto_1

    .line 272
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not implemented"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 275
    :cond_2
    iget-object p1, p0, Lcab/snapp/b;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 277
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/d;

    if-eqz v0, :cond_3

    .line 284
    invoke-interface {v0}, Lcab/snapp/d;->stop()V

    goto :goto_2

    :cond_4
    return-void
.end method
