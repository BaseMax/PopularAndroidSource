.class public Lorg/eclipse/paho/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/b/b;


# instance fields
.field private a:Ljava/util/logging/Logger;

.field private b:Ljava/util/ResourceBundle;

.field private c:Ljava/util/ResourceBundle;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->a:Ljava/util/logging/Logger;

    .line 37
    iput-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->b:Ljava/util/ResourceBundle;

    .line 38
    iput-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->c:Ljava/util/ResourceBundle;

    .line 39
    iput-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->d:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->e:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->f:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/ResourceBundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 181
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method private static a(I)Ljava/util/logging/Level;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 236
    :pswitch_0
    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    goto :goto_0

    .line 233
    :pswitch_1
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    goto :goto_0

    .line 230
    :pswitch_2
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    .line 227
    :pswitch_3
    sget-object p0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    goto :goto_0

    .line 224
    :pswitch_4
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0

    .line 221
    :pswitch_5
    sget-object p0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    .line 218
    :pswitch_6
    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "====="

    .line 193
    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 194
    invoke-static {p4, p5}, Lorg/eclipse/paho/a/a/b/a;->a(Ljava/util/ResourceBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 196
    :cond_0
    new-instance p4, Ljava/util/logging/LogRecord;

    new-instance p6, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p4, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p4, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lorg/eclipse/paho/a/a/b/a;->f:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    if-eqz p7, :cond_1

    .line 207
    invoke-virtual {p4, p7}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 210
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/a/a/b/a;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 106
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 110
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 114
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public dumpTrace()V
    .locals 4

    .line 256
    iget-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->a:Ljava/util/logging/Logger;

    :goto_0
    if-eqz v0, :cond_2

    .line 1263
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v1

    const/4 v2, 0x0

    .line 1265
    :goto_1
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 1274
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_0

    .line 1266
    :cond_0
    aget-object v3, v1, v2

    instance-of v3, v3, Ljava/util/logging/MemoryHandler;

    if-eqz v3, :cond_1

    .line 1267
    aget-object v3, v1, v2

    monitor-enter v3

    .line 1268
    :try_start_0
    aget-object v0, v1, v2

    check-cast v0, Ljava/util/logging/MemoryHandler;

    .line 1269
    invoke-virtual {v0}, Ljava/util/logging/MemoryHandler;->push()V

    .line 1270
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 1267
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 130
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 134
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 138
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 142
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 146
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 150
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 154
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 158
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 162
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 248
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/paho/a/a/b/a;->b:Ljava/util/ResourceBundle;

    invoke-virtual {p2, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 94
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 98
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 102
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public initialise(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->b:Ljava/util/ResourceBundle;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->c:Ljava/util/ResourceBundle;

    .line 51
    iput-object p3, p0, Lorg/eclipse/paho/a/a/b/a;->e:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lorg/eclipse/paho/a/a/b/a;->f:Ljava/lang/String;

    .line 54
    iget-object p2, p0, Lorg/eclipse/paho/a/a/b/a;->f:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/paho/a/a/b/a;->a:Ljava/util/logging/Logger;

    .line 55
    iput-object p1, p0, Lorg/eclipse/paho/a/a/b/a;->b:Ljava/util/ResourceBundle;

    .line 56
    iput-object p1, p0, Lorg/eclipse/paho/a/a/b/a;->c:Ljava/util/ResourceBundle;

    .line 57
    iget-object p1, p0, Lorg/eclipse/paho/a/a/b/a;->b:Ljava/util/ResourceBundle;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/a/a/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method public isLoggable(I)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/eclipse/paho/a/a/b/a;->a:Ljava/util/logging/Logger;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/b/a;->a(I)Ljava/util/logging/Level;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8

    .line 119
    invoke-static {p1}, Lorg/eclipse/paho/a/a/b/a;->a(I)Ljava/util/logging/Level;

    move-result-object v1

    .line 120
    iget-object p1, p0, Lorg/eclipse/paho/a/a/b/a;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget-object v4, p0, Lorg/eclipse/paho/a/a/b/a;->b:Ljava/util/ResourceBundle;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/paho/a/a/b/a;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/eclipse/paho/a/a/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 70
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 74
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 78
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8

    .line 167
    invoke-static {p1}, Lorg/eclipse/paho/a/a/b/a;->a(I)Ljava/util/logging/Level;

    move-result-object v1

    .line 168
    iget-object p1, p0, Lorg/eclipse/paho/a/a/b/a;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    iget-object v4, p0, Lorg/eclipse/paho/a/a/b/a;->c:Ljava/util/ResourceBundle;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/paho/a/a/b/a;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 82
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 86
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 90
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/a/a/b/a;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
