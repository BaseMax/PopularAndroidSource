.class public final Lorg/eclipse/paho/a/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private b:Lorg/eclipse/paho/a/a/b/b;

.field private d:Ljava/lang/String;

.field private e:Lorg/eclipse/paho/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/e/a;->a:Ljava/lang/String;

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 39
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/paho/a/a/a/a;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lorg/eclipse/paho/a/a/e/a;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/e/a;->b:Lorg/eclipse/paho/a/a/b/b;

    .line 50
    iput-object p1, p0, Lorg/eclipse/paho/a/a/e/a;->d:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/eclipse/paho/a/a/e/a;->e:Lorg/eclipse/paho/a/a/a/a;

    .line 52
    iget-object p2, p0, Lorg/eclipse/paho/a/a/e/a;->b:Lorg/eclipse/paho/a/a/b/b;

    invoke-interface {p2, p1}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpProperties(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "============== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " =============="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-nez p1, :cond_0

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "=========================================="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    const/16 v4, 0x20

    invoke-static {p1, v3, v4}, Lorg/eclipse/paho/a/a/e/a;->left(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static left(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 1

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-object p0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p1, p0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public final dumpBaseDebug()V
    .locals 6

    .line 1091
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "============== Version Info =============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    const/16 v3, 0x14

    const-string v4, "Version"

    invoke-static {v4, v3, v2}, Lorg/eclipse/paho/a/a/e/a;->left(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/eclipse/paho/a/a/a/a;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Build Level"

    invoke-static {v5, v3, v2}, Lorg/eclipse/paho/a/a/e/a;->left(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/eclipse/paho/a/a/a/a;->BUILD_LEVEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=========================================="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/eclipse/paho/a/a/e/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1096
    iget-object v1, p0, Lorg/eclipse/paho/a/a/e/a;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dumpVersion"

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/e/a;->dumpSystemProperties()V

    .line 2084
    iget-object v0, p0, Lorg/eclipse/paho/a/a/e/a;->b:Lorg/eclipse/paho/a/a/b/b;

    invoke-interface {v0}, Lorg/eclipse/paho/a/a/b/b;->dumpTrace()V

    return-void
.end method

.method public final dumpClientComms()V
    .locals 5

    .line 124
    iget-object v0, p0, Lorg/eclipse/paho/a/a/e/a;->e:Lorg/eclipse/paho/a/a/a/a;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getDebug()Ljava/util/Properties;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lorg/eclipse/paho/a/a/e/a;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/e/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/e/a;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : ClientComms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/paho/a/a/e/a;->dumpProperties(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dumpClientComms"

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final dumpClientDebug()V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/e/a;->dumpClientComms()V

    .line 63
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/e/a;->dumpConOptions()V

    .line 64
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/e/a;->dumpClientState()V

    .line 65
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/e/a;->dumpBaseDebug()V

    return-void
.end method

.method public final dumpClientState()V
    .locals 5

    .line 113
    iget-object v0, p0, Lorg/eclipse/paho/a/a/e/a;->e:Lorg/eclipse/paho/a/a/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getClientState()Lorg/eclipse/paho/a/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/eclipse/paho/a/a/e/a;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getClientState()Lorg/eclipse/paho/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/b;->getDebug()Ljava/util/Properties;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lorg/eclipse/paho/a/a/e/a;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/e/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/e/a;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : ClientState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/paho/a/a/e/a;->dumpProperties(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dumpClientState"

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final dumpConOptions()V
    .locals 5

    .line 135
    iget-object v0, p0, Lorg/eclipse/paho/a/a/e/a;->e:Lorg/eclipse/paho/a/a/a/a;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getConOptions()Lorg/eclipse/paho/a/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/n;->getDebug()Ljava/util/Properties;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lorg/eclipse/paho/a/a/e/a;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/e/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/e/a;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : Connect Options"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/paho/a/a/e/a;->dumpProperties(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dumpConOptions"

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final dumpSystemProperties()V
    .locals 4

    .line 104
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lorg/eclipse/paho/a/a/e/a;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/e/a;->a:Ljava/lang/String;

    const-string v3, "SystemProperties"

    invoke-static {v0, v3}, Lorg/eclipse/paho/a/a/e/a;->dumpProperties(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dumpSystemProperties"

    invoke-interface {v1, v2, v3, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
