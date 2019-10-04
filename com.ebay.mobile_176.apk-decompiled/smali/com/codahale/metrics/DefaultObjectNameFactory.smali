.class public Lcom/codahale/metrics/DefaultObjectNameFactory;
.super Ljava/lang/Object;
.source "DefaultObjectNameFactory.java"

# interfaces
.implements Lcom/codahale/metrics/ObjectNameFactory;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/codahale/metrics/JmxReporter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/codahale/metrics/DefaultObjectNameFactory;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 3

    .line 16
    :try_start_0
    new-instance v0, Ljavax/management/ObjectName;

    const-string v1, "name"

    invoke-direct {v0, p2, v1, p3}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljavax/management/ObjectName;->isPattern()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    new-instance v0, Ljavax/management/ObjectName;

    const-string v1, "name"

    invoke-static {p3}, Ljavax/management/ObjectName;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 23
    :catch_0
    :try_start_1
    new-instance v0, Ljavax/management/ObjectName;

    const-string v1, "name"

    invoke-static {p3}, Ljavax/management/ObjectName;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p2

    .line 25
    sget-object v0, Lcom/codahale/metrics/DefaultObjectNameFactory;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "Unable to register {} {}"

    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
