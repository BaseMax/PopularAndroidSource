.class final Lcom/squareup/picasso/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/i$c;,
        Lcom/squareup/picasso/i$b;,
        Lcom/squareup/picasso/i$a;
    }
.end annotation


# instance fields
.field final a:Lcom/squareup/picasso/i$b;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/concurrent/ExecutorService;

.field final d:Lcom/squareup/picasso/j;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/c;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroid/os/Handler;

.field final j:Landroid/os/Handler;

.field final k:Lcom/squareup/picasso/d;

.field final l:Lcom/squareup/picasso/aa;

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/c;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lcom/squareup/picasso/i$c;

.field final o:Z

.field p:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/j;Lcom/squareup/picasso/d;Lcom/squareup/picasso/aa;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/squareup/picasso/i$b;

    invoke-direct {v0}, Lcom/squareup/picasso/i$b;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/i$b;

    .line 103
    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/i$b;

    invoke-virtual {v0}, Lcom/squareup/picasso/i$b;->start()V

    .line 104
    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/i$b;

    invoke-virtual {v0}, Lcom/squareup/picasso/i$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Landroid/os/Looper;)V

    .line 105
    iput-object p1, p0, Lcom/squareup/picasso/i;->b:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/squareup/picasso/i;->c:Ljava/util/concurrent/ExecutorService;

    .line 107
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/squareup/picasso/i;->e:Ljava/util/Map;

    .line 108
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lcom/squareup/picasso/i;->f:Ljava/util/Map;

    .line 109
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lcom/squareup/picasso/i;->g:Ljava/util/Map;

    .line 110
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/squareup/picasso/i;->h:Ljava/util/Set;

    .line 111
    new-instance p2, Lcom/squareup/picasso/i$a;

    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/i$b;

    invoke-virtual {v0}, Lcom/squareup/picasso/i$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/squareup/picasso/i$a;-><init>(Landroid/os/Looper;Lcom/squareup/picasso/i;)V

    iput-object p2, p0, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    .line 112
    iput-object p4, p0, Lcom/squareup/picasso/i;->d:Lcom/squareup/picasso/j;

    .line 113
    iput-object p3, p0, Lcom/squareup/picasso/i;->j:Landroid/os/Handler;

    .line 114
    iput-object p5, p0, Lcom/squareup/picasso/i;->k:Lcom/squareup/picasso/d;

    .line 115
    iput-object p6, p0, Lcom/squareup/picasso/i;->l:Lcom/squareup/picasso/aa;

    .line 116
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/squareup/picasso/i;->m:Ljava/util/List;

    .line 117
    iget-object p2, p0, Lcom/squareup/picasso/i;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/squareup/picasso/af;->c(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/squareup/picasso/i;->p:Z

    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 118
    invoke-static {p1, p2}, Lcom/squareup/picasso/af;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/squareup/picasso/i;->o:Z

    .line 119
    new-instance p1, Lcom/squareup/picasso/i$c;

    invoke-direct {p1, p0}, Lcom/squareup/picasso/i$c;-><init>(Lcom/squareup/picasso/i;)V

    iput-object p1, p0, Lcom/squareup/picasso/i;->n:Lcom/squareup/picasso/i$c;

    .line 120
    iget-object p1, p0, Lcom/squareup/picasso/i;->n:Lcom/squareup/picasso/i$c;

    .line 1543
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.AIRPLANE_MODE"

    .line 1544
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1545
    iget-object p3, p1, Lcom/squareup/picasso/i$c;->a:Lcom/squareup/picasso/i;

    iget-boolean p3, p3, Lcom/squareup/picasso/i;->o:Z

    if-eqz p3, :cond_0

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1546
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1548
    :cond_0
    iget-object p3, p1, Lcom/squareup/picasso/i$c;->a:Lcom/squareup/picasso/i;

    iget-object p3, p3, Lcom/squareup/picasso/i;->b:Landroid/content/Context;

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/c;",
            ">;)V"
        }
    .end annotation

    .line 446
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 447
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/c;

    .line 15394
    iget-object v0, v0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    .line 449
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_3

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/c;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_1
    invoke-static {v1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Dispatcher"

    const-string v1, "delivered"

    invoke-static {v0, v1, p0}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private c(Lcom/squareup/picasso/a;)V
    .locals 2

    .line 425
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 427
    iput-boolean v1, p1, Lcom/squareup/picasso/a;->k:Z

    .line 428
    iget-object v1, p0, Lcom/squareup/picasso/i;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/net/NetworkInfo;)V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/squareup/picasso/i;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v0, Lcom/squareup/picasso/u;

    if-eqz v1, :cond_4

    .line 387
    check-cast v0, Lcom/squareup/picasso/u;

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    .line 13042
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 13046
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 13075
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/u;->a(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 13050
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/u;->a(I)V

    goto :goto_1

    .line 13053
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 13071
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/u;->a(I)V

    goto :goto_1

    .line 13057
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/u;->a(I)V

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    .line 13064
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/u;->a(I)V

    goto :goto_1

    .line 13068
    :pswitch_2
    invoke-virtual {v0, v3}, Lcom/squareup/picasso/u;->a(I)V

    goto :goto_1

    .line 13043
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/u;->a(I)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    .line 390
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13396
    iget-object p1, p0, Lcom/squareup/picasso/i;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 13397
    iget-object p1, p0, Lcom/squareup/picasso/i;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 13398
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13399
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    .line 13400
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 14101
    iget-object v1, v0, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    .line 13401
    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_5

    .line 15073
    iget-object v1, v0, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    .line 13402
    invoke-virtual {v1}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dispatcher"

    const-string v3, "replaying"

    invoke-static {v2, v3, v1}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x0

    .line 13404
    invoke-virtual {p0, v0, v1}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/a;Z)V

    goto :goto_2

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final a(Lcom/squareup/picasso/a;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final a(Lcom/squareup/picasso/a;Z)V
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/squareup/picasso/i;->h:Ljava/util/Set;

    .line 2109
    iget-object v1, p1, Lcom/squareup/picasso/a;->j:Ljava/lang/Object;

    .line 180
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Dispatcher"

    if-eqz v0, :cond_1

    .line 181
    iget-object p2, p0, Lcom/squareup/picasso/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    iget-object p2, p1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    .line 182
    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz p2, :cond_0

    .line 183
    iget-object p2, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    invoke-virtual {p2}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "because tag \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3109
    iget-object p1, p1, Lcom/squareup/picasso/a;->j:Ljava/lang/Object;

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is paused"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paused"

    .line 183
    invoke-static {v1, v0, p2, p1}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/i;->e:Ljava/util/Map;

    .line 4081
    iget-object v2, p1, Lcom/squareup/picasso/a;->i:Ljava/lang/String;

    .line 189
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/c;

    if-eqz v0, :cond_9

    .line 4270
    iget-object p2, v0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->n:Z

    .line 4271
    iget-object v1, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    .line 4273
    iget-object v2, v0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_5

    .line 4274
    iput-object p1, v0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    if-eqz p2, :cond_4

    .line 4276
    iget-object p1, v0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 4279
    :cond_2
    invoke-virtual {v1}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, v4, p1, p2}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4277
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "to empty hunter"

    invoke-static {v5, v4, p1, p2}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    .line 4285
    :cond_5
    iget-object v2, v0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-nez v2, :cond_6

    .line 4286
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    .line 4289
    :cond_6
    iget-object v2, v0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_7

    .line 4292
    invoke-virtual {v1}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v3}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, p2, v1}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    :cond_7
    iget-object p1, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    iget-object p1, p1, Lcom/squareup/picasso/w;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 4296
    invoke-virtual {p1}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result p2

    iget-object v1, v0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v1

    if-le p2, v1, :cond_8

    .line 4297
    iput-object p1, v0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    :cond_8
    return-void

    .line 195
    :cond_9
    iget-object v0, p0, Lcom/squareup/picasso/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6101
    iget-object p2, p1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    .line 196
    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz p2, :cond_a

    .line 197
    iget-object p1, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    invoke-virtual {p1}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignored"

    const-string v0, "because shut down"

    invoke-static {v1, p2, p1, v0}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    .line 7101
    :cond_b
    iget-object v0, p1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    .line 202
    iget-object v2, p0, Lcom/squareup/picasso/i;->k:Lcom/squareup/picasso/d;

    iget-object v3, p0, Lcom/squareup/picasso/i;->l:Lcom/squareup/picasso/aa;

    invoke-static {v0, p0, v2, v3, p1}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/aa;Lcom/squareup/picasso/a;)Lcom/squareup/picasso/c;

    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/squareup/picasso/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/squareup/picasso/c;->n:Ljava/util/concurrent/Future;

    .line 204
    iget-object v2, p0, Lcom/squareup/picasso/i;->e:Ljava/util/Map;

    .line 8081
    iget-object v3, p1, Lcom/squareup/picasso/a;->i:Ljava/lang/String;

    .line 204
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_c

    .line 206
    iget-object p2, p0, Lcom/squareup/picasso/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8101
    :cond_c
    iget-object p2, p1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    .line 209
    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz p2, :cond_d

    .line 210
    iget-object p1, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    invoke-virtual {p1}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueued"

    invoke-static {v1, p2, p1}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method final a(Lcom/squareup/picasso/c;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final a(Lcom/squareup/picasso/c;Z)V
    .locals 3

    .line 11394
    iget-object v0, p1, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    .line 373
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_1

    .line 374
    invoke-static {p1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "for error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, " (will replay)"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {v1, v2, v0, p2}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    iget-object p2, p0, Lcom/squareup/picasso/i;->e:Ljava/util/Map;

    .line 12378
    iget-object v0, p1, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    .line 377
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/i;->c(Lcom/squareup/picasso/c;)V

    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/squareup/picasso/i;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lcom/squareup/picasso/i;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/a;

    .line 8109
    iget-object v3, v2, Lcom/squareup/picasso/a;->j:Ljava/lang/Object;

    .line 307
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 317
    iget-object p1, p0, Lcom/squareup/picasso/i;->j:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method final b(Lcom/squareup/picasso/a;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final b(Lcom/squareup/picasso/c;)V
    .locals 4

    .line 323
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0, p1, v1}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 331
    iget-boolean v2, p0, Lcom/squareup/picasso/i;->o:Z

    if-eqz v2, :cond_2

    .line 332
    iget-object v0, p0, Lcom/squareup/picasso/i;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-static {v0, v2}, Lcom/squareup/picasso/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 333
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 8361
    :cond_2
    iget v2, p1, Lcom/squareup/picasso/c;->r:I

    const/4 v3, 0x1

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 8365
    :cond_4
    iget v2, p1, Lcom/squareup/picasso/c;->r:I

    sub-int/2addr v2, v3

    iput v2, p1, Lcom/squareup/picasso/c;->r:I

    .line 8366
    iget-object v2, p1, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/y;

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/y;->a(Landroid/net/NetworkInfo;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_7

    .line 8394
    iget-object v0, p1, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    .line 337
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_5

    .line 338
    invoke-static {p1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dispatcher"

    const-string v2, "retrying"

    invoke-static {v1, v2, v0}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8402
    :cond_5
    iget-object v0, p1, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 340
    instance-of v0, v0, Lcom/squareup/picasso/r$a;

    if-eqz v0, :cond_6

    .line 341
    iget v0, p1, Lcom/squareup/picasso/c;->i:I

    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->NO_CACHE:Lcom/squareup/picasso/NetworkPolicy;

    iget v1, v1, Lcom/squareup/picasso/NetworkPolicy;->a:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/squareup/picasso/c;->i:I

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/squareup/picasso/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/squareup/picasso/c;->n:Ljava/util/concurrent/Future;

    return-void

    .line 346
    :cond_7
    iget-boolean v0, p0, Lcom/squareup/picasso/i;->o:Z

    if-eqz v0, :cond_8

    .line 9370
    iget-object v0, p1, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/y;

    invoke-virtual {v0}, Lcom/squareup/picasso/y;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    .line 347
    :goto_2
    invoke-virtual {p0, p1, v3}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;Z)V

    if-eqz v3, :cond_a

    .line 10390
    iget-object v0, p1, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    if-eqz v0, :cond_9

    .line 9412
    invoke-direct {p0, v0}, Lcom/squareup/picasso/i;->c(Lcom/squareup/picasso/a;)V

    .line 10398
    :cond_9
    iget-object p1, p1, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-eqz p1, :cond_a

    .line 9417
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_a

    .line 9418
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/a;

    .line 9419
    invoke-direct {p0, v2}, Lcom/squareup/picasso/i;->c(Lcom/squareup/picasso/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method final c(Lcom/squareup/picasso/c;)V
    .locals 3

    .line 433
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p1, Lcom/squareup/picasso/c;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p1, Lcom/squareup/picasso/c;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/i;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object p1, p0, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 441
    iget-object p1, p0, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
