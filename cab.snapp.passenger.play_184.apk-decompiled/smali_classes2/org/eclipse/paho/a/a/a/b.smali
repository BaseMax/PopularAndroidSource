.class public Lorg/eclipse/paho/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/Object;

.field private B:I

.field private C:Z

.field private D:Lorg/eclipse/paho/a/a/t;

.field b:Lorg/eclipse/paho/a/a/b/b;

.field c:Ljava/util/Hashtable;

.field volatile d:Ljava/util/Vector;

.field volatile e:Ljava/util/Vector;

.field f:Lorg/eclipse/paho/a/a/a/f;

.field g:Lorg/eclipse/paho/a/a/a/a;

.field h:Lorg/eclipse/paho/a/a/a/c;

.field i:J

.field j:Z

.field k:Lorg/eclipse/paho/a/a/m;

.field l:I

.field m:Z

.field n:J

.field o:Lorg/eclipse/paho/a/a/a/a/u;

.field p:Ljava/util/Hashtable;

.field q:Ljava/util/Hashtable;

.field r:Ljava/util/Hashtable;

.field s:Ljava/util/Hashtable;

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Object;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    const-class v0, Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/paho/a/a/m;Lorg/eclipse/paho/a/a/a/f;Lorg/eclipse/paho/a/a/a/c;Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v0, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->g:Lorg/eclipse/paho/a/a/a/a;

    .line 121
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    .line 126
    iput v0, p0, Lorg/eclipse/paho/a/a/a/b;->l:I

    .line 127
    iput v0, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    .line 128
    iput v0, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    .line 130
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    .line 131
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->x:Ljava/lang/Object;

    .line 132
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/b;->m:Z

    const-wide/16 v2, 0x0

    .line 134
    iput-wide v2, p0, Lorg/eclipse/paho/a/a/a/b;->y:J

    .line 135
    iput-wide v2, p0, Lorg/eclipse/paho/a/a/a/b;->n:J

    .line 136
    iput-wide v2, p0, Lorg/eclipse/paho/a/a/a/b;->z:J

    .line 138
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->A:Ljava/lang/Object;

    .line 139
    iput v0, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    .line 141
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/b;->C:Z

    .line 143
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    .line 144
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    .line 145
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->r:Ljava/util/Hashtable;

    .line 146
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    .line 148
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->D:Lorg/eclipse/paho/a/a/t;

    .line 153
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    invoke-virtual {p4}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v3, "<Init>"

    const-string v4, ""

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    .line 157
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    .line 158
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    .line 159
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    .line 160
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->r:Ljava/util/Hashtable;

    .line 161
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    .line 162
    new-instance v1, Lorg/eclipse/paho/a/a/a/a/i;

    invoke-direct {v1}, Lorg/eclipse/paho/a/a/a/a/i;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->o:Lorg/eclipse/paho/a/a/a/a/u;

    .line 163
    iput v0, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    .line 164
    iput v0, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    .line 166
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    .line 167
    iput-object p3, p0, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    .line 168
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    .line 169
    iput-object p4, p0, Lorg/eclipse/paho/a/a/a/b;->g:Lorg/eclipse/paho/a/a/a/a;

    .line 170
    iput-object p5, p0, Lorg/eclipse/paho/a/a/a/b;->D:Lorg/eclipse/paho/a/a/t;

    .line 172
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/a/b;->e()V

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 1

    .line 213
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "r-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "r-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 7

    .line 288
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 290
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 297
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_4

    .line 305
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/a/a/a/a/u;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v2

    const v6, 0xffff

    sub-int/2addr v6, v3

    add-int/2addr v6, v2

    if-le v6, v4, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    move v2, v6

    .line 314
    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    :goto_3
    if-lt v1, v6, :cond_2

    return-object v0

    .line 320
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 315
    :cond_3
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 298
    :cond_4
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/paho/a/a/a/a/u;

    invoke-virtual {v6}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v6

    sub-int v3, v6, v3

    if-le v3, v4, :cond_5

    move v5, v2

    move v4, v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)Lorg/eclipse/paho/a/a/a/a/u;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 241
    :try_start_0
    invoke-static {p2}, Lorg/eclipse/paho/a/a/a/a/u;->createWireMessage(Lorg/eclipse/paho/a/a/r;)Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object p2
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 245
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v0

    const-string v4, "restoreMessage"

    const-string v5, "602"

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 246
    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/p;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/EOFException;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 249
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-interface {p2, p1}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 257
    :goto_0
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    const-string p1, "restoreMessage"

    const-string v0, "601"

    invoke-interface {v2, v3, p1, v0, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 253
    :cond_1
    throw p2
.end method

.method private static a(Ljava/util/Vector;Lorg/eclipse/paho/a/a/a/a/u;)V
    .locals 3

    .line 267
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v0

    const/4 v1, 0x0

    .line 268
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 269
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/a/a/a/a/u;

    .line 270
    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 272
    invoke-virtual {p0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V
    .locals 9

    .line 1174
    iget-object v0, p2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/paho/a/a/a/q;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V

    .line 1175
    iget-object v0, p2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->a()V

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "notifyResult"

    if-eqz p1, :cond_0

    .line 1178
    instance-of v5, p1, Lorg/eclipse/paho/a/a/a/a/b;

    if-eqz v5, :cond_0

    instance-of v5, p1, Lorg/eclipse/paho/a/a/a/a/m;

    if-nez v5, :cond_0

    .line 1180
    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v6, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object p1, v7, v0

    aput-object v1, v7, v3

    const-string v8, "648"

    invoke-interface {v5, v6, v4, v8, v7}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v5, p2}, Lorg/eclipse/paho/a/a/a/c;->asyncOperationComplete(Lorg/eclipse/paho/a/a/v;)V

    :cond_0
    if-nez p1, :cond_1

    .line 1187
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v6}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    aput-object v1, v3, v0

    const-string v0, "649"

    invoke-interface {p1, v5, v4, v0, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1188
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/a/a/a/c;->asyncOperationComplete(Lorg/eclipse/paho/a/a/v;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    .line 1282
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static c(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sc-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v2, "clearState"

    const-string v3, ">"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/m;->clear()V

    .line 226
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 227
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 228
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 229
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 230
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 231
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->r:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 232
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 233
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/f;->clear()V

    return-void
.end method

.method private static e(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sb-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/m;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 335
    iget v1, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    .line 336
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 338
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v5, "restoreState"

    const-string v6, "600"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_2

    .line 427
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 428
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    iput v1, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    return-void

    .line 429
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 431
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v7, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v4

    const-string v9, "609"

    invoke-interface {v2, v7, v5, v9, v8}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-interface {v2, v0}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 341
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 342
    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-interface {v7, v3}, Lorg/eclipse/paho/a/a/m;->get(Ljava/lang/String;)Lorg/eclipse/paho/a/a/r;

    move-result-object v7

    .line 343
    invoke-direct {p0, v3, v7}, Lorg/eclipse/paho/a/a/a/b;->a(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, "r-"

    .line 345
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_3

    .line 347
    iget-object v8, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v10, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    const-string v3, "604"

    invoke-interface {v8, v10, v5, v3, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    invoke-virtual {v7}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v8, "s-"

    .line 351
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v10, "608"

    const-string v11, "607"

    if-eqz v8, :cond_7

    .line 352
    move-object v8, v7

    check-cast v8, Lorg/eclipse/paho/a/a/a/a/o;

    .line 353
    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v12

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 354
    iget-object v12, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v8}, Lorg/eclipse/paho/a/a/a/b;->d(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/eclipse/paho/a/a/m;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 355
    iget-object v10, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v8}, Lorg/eclipse/paho/a/a/a/b;->d(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/eclipse/paho/a/a/m;->get(Ljava/lang/String;)Lorg/eclipse/paho/a/a/r;

    move-result-object v10

    .line 359
    invoke-direct {p0, v3, v10}, Lorg/eclipse/paho/a/a/a/b;->a(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v10

    check-cast v10, Lorg/eclipse/paho/a/a/a/a/n;

    if-eqz v10, :cond_4

    .line 363
    iget-object v11, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v12, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    const-string v3, "605"

    invoke-interface {v11, v12, v5, v3, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {v10}, Lorg/eclipse/paho/a/a/a/a/n;->getMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 368
    :cond_4
    iget-object v10, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v11, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    const-string v3, "606"

    invoke-interface {v10, v11, v5, v3, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 373
    :cond_5
    invoke-virtual {v8, v6}, Lorg/eclipse/paho/a/a/a/a/o;->setDuplicate(Z)V

    .line 374
    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v12

    if-ne v12, v9, :cond_6

    .line 376
    iget-object v10, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v12, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    invoke-interface {v10, v12, v5, v11, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 381
    :cond_6
    iget-object v11, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v12, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    invoke-interface {v11, v12, v5, v10, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :goto_2
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v3, v8}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/a/a/o;)Lorg/eclipse/paho/a/a/o;

    move-result-object v3

    .line 387
    iget-object v3, v3, Lorg/eclipse/paho/a/a/o;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/b;->g:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v4

    .line 2285
    iput-object v4, v3, Lorg/eclipse/paho/a/a/a/q;->j:Lorg/eclipse/paho/a/a/d;

    .line 388
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-string v8, "sb-"

    .line 389
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 392
    move-object v8, v7

    check-cast v8, Lorg/eclipse/paho/a/a/a/a/o;

    .line 393
    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v12

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 394
    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v12

    if-ne v12, v9, :cond_8

    .line 396
    iget-object v10, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v12, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    invoke-interface {v10, v12, v5, v11, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 398
    :cond_8
    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v11

    if-ne v11, v6, :cond_9

    .line 400
    iget-object v11, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v12, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    invoke-interface {v11, v12, v5, v10, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 406
    :cond_9
    iget-object v10, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v11, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    const-string v4, "511"

    invoke-interface {v10, v11, v5, v4, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/b;->r:Ljava/util/Hashtable;

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-interface {v4, v3}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 413
    :goto_3
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v3, v8}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/a/a/o;)Lorg/eclipse/paho/a/a/o;

    move-result-object v3

    .line 414
    iget-object v3, v3, Lorg/eclipse/paho/a/a/o;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/b;->g:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v4

    .line 3285
    iput-object v4, v3, Lorg/eclipse/paho/a/a/a/q;->j:Lorg/eclipse/paho/a/a/d;

    .line 415
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const-string v4, "sc-"

    .line 418
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    check-cast v7, Lorg/eclipse/paho/a/a/a/a/n;

    .line 420
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v7}, Lorg/eclipse/paho/a/a/a/b;->c(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/eclipse/paho/a/a/m;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 421
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private f()V
    .locals 8

    .line 944
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 945
    :try_start_0
    iget v1, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    .line 947
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v4, "decrementInFlight"

    const-string v5, "646"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-interface {v1, v3, v4, v5, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 944
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized g()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    monitor-enter p0

    .line 1292
    :try_start_0
    iget v0, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    const/4 v1, 0x0

    .line 1297
    :cond_0
    iget v2, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    .line 1298
    iget v2, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    const v4, 0xffff

    if-le v2, v4, :cond_1

    .line 1299
    iput v3, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    .line 1301
    :cond_1
    iget v2, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    if-ne v2, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d01

    .line 1304
    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object v0

    throw v0

    .line 1307
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    iget v3, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1308
    iget v0, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1309
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    iget v0, p0, Lorg/eclipse/paho/a/a/a/b;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method protected final a()J
    .locals 3

    .line 187
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/eclipse/paho/a/a/a/b;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(Lorg/eclipse/paho/a/a/a/a/b;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 988
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/a/a/a/b;->n:J

    .line 991
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 992
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/b;->getMessageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "notifyReceivedAck"

    const-string v6, "627"

    .line 991
    invoke-interface {v0, v1, v5, v6, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 994
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/f;->getToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    move-result-object v0

    if-nez v0, :cond_0

    .line 999
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 1000
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/b;->getMessageId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "notifyReceivedAck"

    const-string v3, "662"

    .line 999
    invoke-interface {v0, v1, p1, v3, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1001
    :cond_0
    instance-of v1, p1, Lorg/eclipse/paho/a/a/a/a/m;

    if-eqz v1, :cond_1

    .line 1006
    new-instance v1, Lorg/eclipse/paho/a/a/a/a/n;

    check-cast p1, Lorg/eclipse/paho/a/a/a/a/m;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/a/a/a/a/n;-><init>(Lorg/eclipse/paho/a/a/a/a/m;)V

    .line 1007
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/a/a/a/b;->send(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    goto/16 :goto_4

    .line 1008
    :cond_1
    instance-of v1, p1, Lorg/eclipse/paho/a/a/a/a/k;

    if-nez v1, :cond_d

    instance-of v1, p1, Lorg/eclipse/paho/a/a/a/a/l;

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 1014
    :cond_2
    instance-of v1, p1, Lorg/eclipse/paho/a/a/a/a/j;

    if-eqz v1, :cond_4

    .line 1015
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    :try_start_0
    iget v2, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    .line 1017
    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 1018
    iget v0, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    if-nez v0, :cond_3

    .line 1019
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    .line 1015
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v0, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "notifyReceivedAck"

    const-string v3, "636"

    invoke-interface {p1, v0, v2, v3, v1}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    .line 1015
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1024
    :cond_4
    instance-of v1, p1, Lorg/eclipse/paho/a/a/a/a/c;

    if-eqz v1, :cond_c

    .line 1025
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/a/a/a/a/c;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/c;->getReturnCode()I

    move-result v2

    if-nez v2, :cond_b

    .line 1027
    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v5

    .line 1028
    :try_start_2
    iget-boolean v2, p0, Lorg/eclipse/paho/a/a/a/b;->j:Z

    if-eqz v2, :cond_5

    .line 1029
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/a/b;->d()V

    .line 1032
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v2, v0, p1}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 1034
    :cond_5
    iput v4, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    .line 1035
    iput v4, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    .line 4441
    new-instance v2, Ljava/util/Vector;

    iget v6, p0, Lorg/eclipse/paho/a/a/a/b;->l:I

    invoke-direct {v2, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    .line 4442
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    .line 4444
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 4445
    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_9

    .line 4461
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 4462
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_8

    .line 4471
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->r:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 4472
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_7

    .line 4481
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/b;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    .line 4482
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/b;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    .line 1037
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/b;->connected()V

    .line 1027
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1044
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->g:Lorg/eclipse/paho/a/a/a/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/paho/a/a/a/a;->connectComplete(Lorg/eclipse/paho/a/a/a/a/c;Lorg/eclipse/paho/a/a/p;)V

    .line 1045
    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 1046
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    .line 1049
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter p1

    .line 1050
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1049
    monitor-exit p1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 4473
    :cond_7
    :try_start_4
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    .line 4474
    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/b;->r:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/paho/a/a/a/a/o;

    .line 4476
    iget-object v8, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v9, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v10, "restoreInflightMessages"

    const-string v11, "512"

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v6, v12, v4

    invoke-interface {v8, v9, v10, v11, v12}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4477
    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-static {v6, v7}, Lorg/eclipse/paho/a/a/a/b;->a(Ljava/util/Vector;Lorg/eclipse/paho/a/a/a/a/u;)V

    goto :goto_2

    .line 4463
    :cond_8
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    .line 4464
    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/paho/a/a/a/a/o;

    .line 4465
    invoke-virtual {v7, v3}, Lorg/eclipse/paho/a/a/a/a/o;->setDuplicate(Z)V

    .line 4467
    iget-object v8, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v9, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v10, "restoreInflightMessages"

    const-string v11, "612"

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v6, v12, v4

    invoke-interface {v8, v9, v10, v11, v12}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4469
    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-static {v6, v7}, Lorg/eclipse/paho/a/a/a/b;->a(Ljava/util/Vector;Lorg/eclipse/paho/a/a/a/a/u;)V

    goto/16 :goto_1

    .line 4446
    :cond_9
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    .line 4447
    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/paho/a/a/a/a/u;

    .line 4448
    instance-of v8, v7, Lorg/eclipse/paho/a/a/a/a/o;

    if-eqz v8, :cond_a

    .line 4450
    iget-object v8, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v9, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v10, "restoreInflightMessages"

    const-string v11, "610"

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v6, v12, v4

    invoke-interface {v8, v9, v10, v11, v12}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4452
    invoke-virtual {v7, v3}, Lorg/eclipse/paho/a/a/a/a/u;->setDuplicate(Z)V

    .line 4453
    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    check-cast v7, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-static {v6, v7}, Lorg/eclipse/paho/a/a/a/b;->a(Ljava/util/Vector;Lorg/eclipse/paho/a/a/a/a/u;)V

    goto/16 :goto_0

    .line 4454
    :cond_a
    instance-of v8, v7, Lorg/eclipse/paho/a/a/a/a/n;

    if-eqz v8, :cond_6

    .line 4456
    iget-object v8, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v9, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v10, "restoreInflightMessages"

    const-string v11, "611"

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v6, v12, v4

    invoke-interface {v8, v9, v10, v11, v12}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4458
    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    check-cast v7, Lorg/eclipse/paho/a/a/a/a/n;

    invoke-static {v6, v7}, Lorg/eclipse/paho/a/a/a/b;->a(Ljava/util/Vector;Lorg/eclipse/paho/a/a/a/a/u;)V

    goto/16 :goto_0

    :catchall_2
    move-exception p1

    .line 1027
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 1040
    :cond_b
    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p1

    .line 1041
    throw p1

    .line 1053
    :cond_c
    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 1054
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/b;->getMessageId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/a/a/a/b;->b(I)V

    .line 1055
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    goto :goto_4

    .line 1011
    :cond_d
    :goto_3
    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 1058
    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/b;->c()Z

    return-void
.end method

.method protected final a(Lorg/eclipse/paho/a/a/a/a/o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v3, "undo"

    const-string v4, "618"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 638
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 640
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 643
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/b;->c(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    .line 645
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v1

    if-lez v1, :cond_1

    .line 647
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/eclipse/paho/a/a/a/b;->b(I)V

    .line 649
    invoke-virtual {p1, v7}, Lorg/eclipse/paho/a/a/a/a/o;->setMessageId(I)V

    .line 652
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/b;->c()Z

    .line 633
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final a(Lorg/eclipse/paho/a/a/v;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 1127
    iget-object v0, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getWireMessage()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1129
    instance-of v1, v0, Lorg/eclipse/paho/a/a/a/a/b;

    if-eqz v1, :cond_2

    .line 1132
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1133
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object v0, v3, p1

    const-string v6, "notifyComplete"

    const-string v7, "629"

    .line 1132
    invoke-interface {v1, v2, v6, v7, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    move-object v1, v0

    check-cast v1, Lorg/eclipse/paho/a/a/a/a/b;

    .line 1137
    instance-of v2, v1, Lorg/eclipse/paho/a/a/a/a/k;

    if-eqz v2, :cond_0

    .line 1140
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/b;->c(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 1141
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/b;->e(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 1142
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/b;->getMessageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/a/b;->f()V

    .line 1144
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/b;->b(I)V

    .line 1145
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    .line 1147
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v0, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    .line 1148
    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/b;->getMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "650"

    .line 1147
    invoke-interface {p1, v0, v6, v1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1149
    :cond_0
    instance-of v2, v1, Lorg/eclipse/paho/a/a/a/a/l;

    if-eqz v2, :cond_1

    .line 1151
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/b;->c(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 1152
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/b;->d(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 1153
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/b;->e(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 1154
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/b;->getMessageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    iget v2, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    .line 1157
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/a/b;->f()V

    .line 1158
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/eclipse/paho/a/a/a/b;->b(I)V

    .line 1159
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    .line 1162
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array p1, p1, [Ljava/lang/Object;

    .line 1163
    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/b;->getMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    .line 1164
    iget v1, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "645"

    .line 1162
    invoke-interface {v0, v2, v6, v1, p1}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/b;->c()Z

    :cond_2
    return-void
.end method

.method protected final a(Lorg/eclipse/paho/a/a/f;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 664
    invoke-interface {p1}, Lorg/eclipse/paho/a/a/f;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v0

    .line 665
    invoke-interface {p1}, Lorg/eclipse/paho/a/a/f;->getMessageId()I

    move-result p1

    .line 667
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 668
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 669
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 673
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 674
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 678
    :cond_1
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 681
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    const-string v3, "s-"

    .line 4201
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-interface {v0, v3}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 682
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 683
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v3, v0}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Ljava/lang/String;)Lorg/eclipse/paho/a/a/v;

    .line 684
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/b;->b(I)V

    .line 667
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final b()Lorg/eclipse/paho/a/a/a/a/u;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    monitor-exit v0

    return-object v2

    .line 819
    :cond_1
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 820
    :cond_2
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    iget v4, p0, Lorg/eclipse/paho/a/a/a/b;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v4, :cond_4

    .line 823
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "644"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 828
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "647"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    :catch_0
    :cond_4
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lorg/eclipse/paho/a/a/a/b;->C:Z

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 837
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/a/a/a/a/u;

    instance-of v3, v3, Lorg/eclipse/paho/a/a/a/a/d;

    if-nez v3, :cond_5

    goto/16 :goto_1

    .line 851
    :cond_5
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_7

    .line 853
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/a/a/a/a/u;

    .line 854
    instance-of v3, v2, Lorg/eclipse/paho/a/a/a/a/n;

    if-eqz v3, :cond_6

    .line 855
    iget v3, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    .line 858
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v6, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v7, "get"

    const-string v8, "617"

    new-array v5, v5, [Ljava/lang/Object;

    iget v9, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v4

    invoke-interface {v3, v6, v7, v8, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/b;->c()Z

    goto/16 :goto_0

    .line 862
    :cond_7
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 866
    iget v3, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    iget v6, p0, Lorg/eclipse/paho/a/a/a/b;->l:I

    if-ge v3, v6, :cond_8

    .line 869
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/a/a/a/a/u;

    .line 870
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 871
    iget v3, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    add-int/2addr v3, v5

    iput v3, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    .line 874
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v6, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v7, "get"

    const-string v8, "623"

    new-array v5, v5, [Ljava/lang/Object;

    iget v9, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v4

    invoke-interface {v3, v6, v7, v8, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 877
    :cond_8
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "622"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    :cond_9
    :goto_1
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v4, "get"

    const-string v5, "621"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 813
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method protected final b(Lorg/eclipse/paho/a/a/a/a/u;)V
    .locals 9

    .line 907
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/a/a/a/b;->y:J

    .line 909
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "notifySent"

    const-string v6, "625"

    invoke-interface {v0, v1, v4, v6, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getToken()Lorg/eclipse/paho/a/a/v;

    move-result-object v0

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/f;->getToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 916
    :cond_0
    iget-object v1, v0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    .line 4269
    iget-object v3, v1, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "notifySent"

    const-string v8, "403"

    invoke-interface {v3, v4, v7, v8, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4270
    iget-object v3, v1, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    .line 4271
    :try_start_0
    iput-object v4, v1, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    .line 4272
    iput-boolean v5, v1, Lorg/eclipse/paho/a/a/a/q;->c:Z

    .line 4270
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4274
    iget-object v6, v1, Lorg/eclipse/paho/a/a/a/q;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 4275
    :try_start_1
    iput-boolean v2, v1, Lorg/eclipse/paho/a/a/a/q;->e:Z

    .line 4276
    iget-object v1, v1, Lorg/eclipse/paho/a/a/a/q;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4274
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 917
    instance-of v1, p1, Lorg/eclipse/paho/a/a/a/a/i;

    if-eqz v1, :cond_1

    .line 918
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 919
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 920
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->A:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 921
    :try_start_3
    iput-wide v3, p0, Lorg/eclipse/paho/a/a/a/b;->z:J

    .line 922
    iget v0, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    .line 920
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 925
    :try_start_4
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v0, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v3, "notifySent"

    const-string v4, "635"

    new-array v2, v2, [Ljava/lang/Object;

    iget v6, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-interface {p1, v0, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 920
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception p1

    .line 918
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    .line 928
    :cond_1
    instance-of v1, p1, Lorg/eclipse/paho/a/a/a/a/o;

    if-eqz v1, :cond_2

    .line 929
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v1

    if-nez v1, :cond_2

    .line 932
    iget-object v1, v0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v1, v4, v4}, Lorg/eclipse/paho/a/a/a/q;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V

    .line 933
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/a/a/a/c;->asyncOperationComplete(Lorg/eclipse/paho/a/a/v;)V

    .line 934
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/a/b;->f()V

    .line 935
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/a/a/a/b;->b(I)V

    .line 936
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    .line 937
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/b;->c()Z

    :cond_2
    return-void

    :catchall_2
    move-exception p1

    .line 4274
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 4270
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1
.end method

.method protected final c()Z
    .locals 7

    .line 958
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/f;->count()I

    move-result v0

    .line 959
    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/b;->m:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/c;->isQuiesced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lorg/eclipse/paho/a/a/a/b;->m:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x3

    iget v6, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x4

    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v6}, Lorg/eclipse/paho/a/a/a/c;->isQuiesced()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "checkQuiesceLock"

    const-string v2, "626"

    invoke-interface {v1, v3, v0, v2, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->x:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 962
    monitor-exit v0

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return v2
.end method

.method public checkForActivity(Lorg/eclipse/paho/a/a/c;)Lorg/eclipse/paho/a/a/v;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 707
    iget-object v2, v1, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "checkForActivity"

    const-string v7, "616"

    invoke-interface {v2, v3, v6, v7, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    iget-object v2, v1, Lorg/eclipse/paho/a/a/a/b;->x:Ljava/lang/Object;

    monitor-enter v2

    .line 712
    :try_start_0
    iget-boolean v3, v1, Lorg/eclipse/paho/a/a/a/b;->m:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 713
    monitor-exit v2

    return-object v5

    .line 709
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 720
    iget-boolean v2, v1, Lorg/eclipse/paho/a/a/a/b;->C:Z

    if-eqz v2, :cond_9

    iget-wide v2, v1, Lorg/eclipse/paho/a/a/a/b;->i:J

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_9

    .line 721
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 728
    iget-object v6, v1, Lorg/eclipse/paho/a/a/a/b;->A:Ljava/lang/Object;

    monitor-enter v6

    .line 731
    :try_start_1
    iget v7, v1, Lorg/eclipse/paho/a/a/a/b;->B:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x3

    const-wide/32 v12, 0x186a0

    const/4 v14, 0x1

    if-lez v7, :cond_2

    move-object v15, v6

    :try_start_2
    iget-wide v5, v1, Lorg/eclipse/paho/a/a/a/b;->n:J

    sub-long v5, v2, v5

    iget-wide v7, v1, Lorg/eclipse/paho/a/a/a/b;->i:J

    add-long/2addr v7, v12

    cmp-long v16, v5, v7

    if-gez v16, :cond_1

    goto :goto_0

    .line 737
    :cond_1
    iget-object v0, v1, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v6, "checkForActivity"

    const-string v7, "619"

    new-array v8, v9, [Ljava/lang/Object;

    iget-wide v12, v1, Lorg/eclipse/paho/a/a/a/b;->i:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    iget-wide v12, v1, Lorg/eclipse/paho/a/a/a/b;->y:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v14

    iget-wide v12, v1, Lorg/eclipse/paho/a/a/a/b;->n:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v11

    iget-wide v2, v1, Lorg/eclipse/paho/a/a/a/b;->z:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v8, v3

    invoke-interface {v0, v5, v6, v7, v8}, Lorg/eclipse/paho/a/a/b/b;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x7d00

    .line 741
    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object v0

    throw v0

    :cond_2
    move-object v15, v6

    .line 745
    :goto_0
    iget v5, v1, Lorg/eclipse/paho/a/a/a/b;->B:I

    if-nez v5, :cond_4

    iget-wide v5, v1, Lorg/eclipse/paho/a/a/a/b;->y:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x2

    iget-wide v12, v1, Lorg/eclipse/paho/a/a/a/b;->i:J

    mul-long v12, v12, v7

    cmp-long v7, v5, v12

    if-gez v7, :cond_3

    goto :goto_1

    .line 748
    :cond_3
    iget-object v0, v1, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v6, "checkForActivity"

    const-string v7, "642"

    new-array v8, v9, [Ljava/lang/Object;

    iget-wide v12, v1, Lorg/eclipse/paho/a/a/a/b;->i:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    iget-wide v12, v1, Lorg/eclipse/paho/a/a/a/b;->y:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v14

    iget-wide v12, v1, Lorg/eclipse/paho/a/a/a/b;->n:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v11

    iget-wide v2, v1, Lorg/eclipse/paho/a/a/a/b;->z:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v8, v3

    invoke-interface {v0, v5, v6, v7, v8}, Lorg/eclipse/paho/a/a/b/b;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x7d02

    .line 752
    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object v0

    throw v0

    .line 764
    :cond_4
    :goto_1
    iget v5, v1, Lorg/eclipse/paho/a/a/a/b;->B:I

    if-nez v5, :cond_5

    iget-wide v5, v1, Lorg/eclipse/paho/a/a/a/b;->n:J

    sub-long v5, v2, v5

    iget-wide v7, v1, Lorg/eclipse/paho/a/a/a/b;->i:J

    const-wide/32 v12, 0x186a0

    sub-long/2addr v7, v12

    cmp-long v9, v5, v7

    if-gez v9, :cond_6

    .line 765
    :cond_5
    iget-wide v5, v1, Lorg/eclipse/paho/a/a/a/b;->y:J

    sub-long v5, v2, v5

    iget-wide v7, v1, Lorg/eclipse/paho/a/a/a/b;->i:J

    const-wide/32 v12, 0x186a0

    sub-long/2addr v7, v12

    cmp-long v9, v5, v7

    if-ltz v9, :cond_8

    .line 768
    :cond_6
    iget-object v2, v1, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v5, "checkForActivity"

    const-string v6, "620"

    new-array v7, v11, [Ljava/lang/Object;

    iget-wide v8, v1, Lorg/eclipse/paho/a/a/a/b;->i:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    iget-wide v8, v1, Lorg/eclipse/paho/a/a/a/b;->y:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v14

    iget-wide v8, v1, Lorg/eclipse/paho/a/a/a/b;->n:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v2, v3, v5, v6, v7}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    new-instance v2, Lorg/eclipse/paho/a/a/v;

    iget-object v3, v1, Lorg/eclipse/paho/a/a/a/b;->g:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 774
    invoke-virtual {v2, v0}, Lorg/eclipse/paho/a/a/v;->setActionCallback(Lorg/eclipse/paho/a/a/c;)V

    .line 776
    :cond_7
    iget-object v0, v1, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    iget-object v3, v1, Lorg/eclipse/paho/a/a/a/b;->o:Lorg/eclipse/paho/a/a/a/a/u;

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 777
    iget-object v0, v1, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    iget-object v3, v1, Lorg/eclipse/paho/a/a/a/b;->o:Lorg/eclipse/paho/a/a/a/a/u;

    invoke-virtual {v0, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 779
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/a/a/a/b;->a()J

    move-result-wide v5

    .line 782
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/a/a/a/b;->notifyQueueLock()V

    goto :goto_2

    .line 786
    :cond_8
    iget-object v0, v1, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v6, "checkForActivity"

    const-string v7, "634"

    const/4 v8, 0x0

    invoke-interface {v0, v5, v6, v7, v8}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x1

    .line 787
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/a/a/a/b;->a()J

    move-result-wide v9

    iget-wide v11, v1, Lorg/eclipse/paho/a/a/a/b;->y:J

    sub-long/2addr v2, v11

    sub-long/2addr v9, v2

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object v2, v8

    .line 728
    :goto_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 791
    iget-object v0, v1, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v4, "checkForActivity"

    const-string v8, "624"

    invoke-interface {v0, v3, v4, v8, v7}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    iget-object v0, v1, Lorg/eclipse/paho/a/a/a/b;->D:Lorg/eclipse/paho/a/a/t;

    invoke-interface {v0, v5, v6}, Lorg/eclipse/paho/a/a/t;->schedule(J)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v15, v6

    .line 728
    :goto_3
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_9
    move-object v8, v5

    move-object v2, v8

    :goto_4
    return-object v2

    :catchall_2
    move-exception v0

    .line 709
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public connected()V
    .locals 4

    .line 1198
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v2, "connected"

    const-string v3, "631"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1199
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/b;->C:Z

    .line 1201
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->D:Lorg/eclipse/paho/a/a/t;

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/t;->start()V

    return-void
.end method

.method public disconnected(Lorg/eclipse/paho/a/a/p;)V
    .locals 5

    .line 1255
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "disconnected"

    const-string v4, "633"

    invoke-interface {v0, v1, p1, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1257
    iput-boolean v3, p0, Lorg/eclipse/paho/a/a/a/b;->C:Z

    .line 1260
    :try_start_0
    iget-boolean p1, p0, Lorg/eclipse/paho/a/a/a/b;->j:Z

    if-eqz p1, :cond_0

    .line 1261
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/a/b;->d()V

    .line 1264
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 1265
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 1266
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->A:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :try_start_1
    iput v3, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    .line 1266
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public getActualInFlight()I
    .locals 1

    .line 1396
    iget v0, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    return v0
.end method

.method public getDebug()Ljava/util/Properties;
    .locals 3

    .line 1434
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1435
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->c:Ljava/util/Hashtable;

    const-string v2, "In use msgids"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    const-string v2, "pendingMessages"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    const-string v2, "pendingFlows"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget v1, p0, Lorg/eclipse/paho/a/a/a/b;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxInflight"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget v1, p0, Lorg/eclipse/paho/a/a/a/b;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nextMsgID"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    iget v1, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "actualInFlight"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    iget v1, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "inFlightPubRels"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/b;->m:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "quiescing"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    iget v1, p0, Lorg/eclipse/paho/a/a/a/b;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pingoutstanding"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-wide v1, p0, Lorg/eclipse/paho/a/a/a/b;->y:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastOutboundActivity"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-wide v1, p0, Lorg/eclipse/paho/a/a/a/b;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastInboundActivity"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    const-string v2, "outboundQoS2"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    const-string v2, "outboundQoS1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->r:Ljava/util/Hashtable;

    const-string v2, "outboundQoS0"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    const-string v2, "inboundQoS2"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    const-string v2, "tokens"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxInFlight()I
    .locals 1

    .line 1400
    iget v0, p0, Lorg/eclipse/paho/a/a/a/b;->l:I

    return v0
.end method

.method public notifyQueueLock()V
    .locals 5

    .line 1368
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 1370
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v3, "notifyQueueLock"

    const-string v4, "638"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1368
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyReceivedBytes(I)V
    .locals 4

    if-lez p1, :cond_0

    .line 973
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/a/a/a/b;->n:J

    .line 976
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 977
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "notifyReceivedBytes"

    const-string v3, "630"

    .line 976
    invoke-interface {v0, v1, p1, v3, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public notifySentBytes(I)V
    .locals 4

    if-lez p1, :cond_0

    .line 892
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/a/a/a/b;->y:J

    .line 895
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 896
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "notifySentBytes"

    const-string v3, "643"

    .line 895
    invoke-interface {v0, v1, p1, v3, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public persistBufferedMessage(Lorg/eclipse/paho/a/a/a/a/u;)V
    .locals 8

    const-string v0, "513"

    const-string v1, "persistBufferedMessage"

    .line 588
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/b;->e(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 592
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/a/b;->g()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/eclipse/paho/a/a/a/a/u;->setMessageId(I)V

    .line 593
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/b;->e(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    move-object v6, p1

    check-cast v6, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-interface {v5, v2, v6}, Lorg/eclipse/paho/a/a/m;->put(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)V
    :try_end_1
    .catch Lorg/eclipse/paho/a/a/s; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 598
    :catch_0
    :try_start_2
    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v6, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v7, "515"

    invoke-interface {v5, v6, v1, v7}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/b;->g:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v6}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/b;->g:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v7}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/paho/a/a/d;->getServerURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/eclipse/paho/a/a/m;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    check-cast p1, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-interface {v5, v2, p1}, Lorg/eclipse/paho/a/a/m;->put(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)V

    .line 603
    :goto_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-interface {p1, v5, v1, v0, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 606
    :catch_1
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-interface {p1, v5, v1, v0, v4}, Lorg/eclipse/paho/a/a/b/b;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public quiesce(J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1325
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "quiesce"

    const-string v6, "637"

    invoke-interface {v0, v1, v4, v6, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 1327
    :try_start_0
    iput-boolean v2, p0, Lorg/eclipse/paho/a/a/a/b;->m:Z

    .line 1326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1330
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/c;->quiesce()V

    .line 1331
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/b;->notifyQueueLock()V

    .line 1333
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 1338
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/f;->count()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1339
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/a/c;->isQuiesced()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1341
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v6, "quiesce"

    const-string v7, "639"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    iget-object v9, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x2

    iget v9, p0, Lorg/eclipse/paho/a/a/a/b;->v:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-interface {v3, v4, v6, v7, v8}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->x:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1333
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1355
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter p1

    .line 1356
    :try_start_3
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 1357
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 1358
    iput-boolean v5, p0, Lorg/eclipse/paho/a/a/a/b;->m:Z

    .line 1359
    iput v5, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    .line 1355
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1362
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object p2, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v0, "quiesce"

    const-string v1, "640"

    invoke-interface {p1, p2, v0, v1}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 1355
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    .line 1333
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :catchall_2
    move-exception p1

    .line 1326
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public resolveOldTokens(Lorg/eclipse/paho/a/a/p;)Ljava/util/Vector;
    .locals 5

    .line 1216
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "resolveOldTokens"

    const-string v4, "632"

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 1223
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    const/16 v0, 0x7d66

    invoke-direct {p1, v0}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    .line 1230
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/f;->getOutstandingTokens()Ljava/util/Vector;

    move-result-object v0

    .line 1231
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1232
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 1233
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/a/a/v;

    .line 1234
    monitor-enter v2

    .line 1235
    :try_start_0
    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/v;->isComplete()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    .line 5084
    iget-boolean v3, v3, Lorg/eclipse/paho/a/a/a/q;->d:Z

    if-nez v3, :cond_3

    .line 1235
    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/v;->getException()Lorg/eclipse/paho/a/a/p;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1236
    iget-object v3, v2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v3, p1}, Lorg/eclipse/paho/a/a/a/q;->setException(Lorg/eclipse/paho/a/a/p;)V

    .line 1234
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    instance-of v3, v2, Lorg/eclipse/paho/a/a/o;

    if-nez v3, :cond_1

    .line 1242
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    iget-object v2, v2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Ljava/lang/String;)Lorg/eclipse/paho/a/a/v;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1234
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public send(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 496
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->isMessageIdRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v0

    if-nez v0, :cond_2

    .line 497
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/o;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v0

    if-nez v0, :cond_1

    .line 499
    :cond_0
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/k;

    if-nez v0, :cond_1

    .line 500
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/m;

    if-nez v0, :cond_1

    .line 501
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/n;

    if-nez v0, :cond_1

    .line 502
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/l;

    if-nez v0, :cond_1

    .line 503
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/r;

    if-nez v0, :cond_1

    .line 504
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/q;

    if-nez v0, :cond_1

    .line 505
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/t;

    if-nez v0, :cond_1

    .line 506
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/s;

    if-eqz v0, :cond_2

    .line 507
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/a/b;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/a/a/a/a/u;->setMessageId(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 511
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/a/a/a/a/u;->setToken(Lorg/eclipse/paho/a/a/v;)V

    .line 513
    :try_start_0
    iget-object v0, p2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/a/q;->setMessageID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 518
    :cond_3
    :goto_0
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/o;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 519
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_1
    iget v4, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    iget v5, p0, Lorg/eclipse/paho/a/a/a/b;->l:I

    if-ge v4, v5, :cond_6

    .line 527
    move-object v4, p1

    check-cast v4, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v4

    .line 529
    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v6, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v7, "send"

    const-string v8, "628"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    aput-object p1, v9, v1

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v3

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_4

    goto :goto_1

    .line 533
    :cond_4
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/b;->c(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/paho/a/a/m;->put(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)V

    .line 535
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/u;)V

    goto :goto_1

    .line 538
    :cond_5
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->q:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/b;->c(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/paho/a/a/m;->put(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)V

    .line 540
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 543
    :goto_1
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/b;->d:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 544
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 519
    monitor-exit v0

    return-void

    .line 522
    :cond_6
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object p2, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v1, "send"

    const-string v4, "613"

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/paho/a/a/a/b;->u:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-interface {p1, p2, v1, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    const/16 p2, 0x7dca

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 519
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 548
    :cond_7
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    aput-object p1, v1, v2

    const-string v2, "send"

    const-string v5, "615"

    invoke-interface {v0, v4, v2, v5, v1}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/d;

    if-eqz v0, :cond_8

    .line 551
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 555
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {p2, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 556
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 551
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 559
    :cond_8
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/i;

    if-eqz v0, :cond_9

    .line 560
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->o:Lorg/eclipse/paho/a/a/a/a/u;

    goto :goto_2

    .line 562
    :cond_9
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/n;

    if-eqz v0, :cond_a

    .line 563
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->p:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/b;->d(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/eclipse/paho/a/a/a/a/n;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/paho/a/a/m;->put(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)V

    goto :goto_2

    .line 566
    :cond_a
    instance-of v0, p1, Lorg/eclipse/paho/a/a/a/a/l;

    if-eqz v0, :cond_b

    .line 567
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 570
    :cond_b
    :goto_2
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_3
    instance-of v1, p1, Lorg/eclipse/paho/a/a/a/a/b;

    if-nez v1, :cond_c

    .line 572
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/b;->f:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 574
    :cond_c
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/b;->e:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 575
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/b;->w:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 570
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public setKeepAliveInterval(J)V
    .locals 0

    .line 886
    iput-wide p1, p0, Lorg/eclipse/paho/a/a/a/b;->i:J

    return-void
.end method

.method public unPersistBufferedMessage(Lorg/eclipse/paho/a/a/a/a/u;)V
    .locals 8

    const-string v0, "unPersistBufferedMessage"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 617
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v5, "517"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {v3, v4, v0, v5, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/b;->e(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/s; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 621
    :catch_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "518"

    invoke-interface {v3, v4, v0, p1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
