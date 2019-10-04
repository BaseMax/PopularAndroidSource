.class public Lcom/codahale/metrics/JmxAttributeGauge;
.super Ljava/lang/Object;
.source "JmxAttributeGauge.java"

# interfaces
.implements Lcom/codahale/metrics/Gauge;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codahale/metrics/Gauge<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final attributeName:Ljava/lang/String;

.field private final mBeanServerConn:Ljavax/management/MBeanServerConnection;

.field private final objectName:Ljavax/management/ObjectName;


# direct methods
.method public constructor <init>(Ljavax/management/MBeanServerConnection;Ljavax/management/ObjectName;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/codahale/metrics/JmxAttributeGauge;->mBeanServerConn:Ljavax/management/MBeanServerConnection;

    .line 36
    iput-object p2, p0, Lcom/codahale/metrics/JmxAttributeGauge;->objectName:Ljavax/management/ObjectName;

    .line 37
    iput-object p3, p0, Lcom/codahale/metrics/JmxAttributeGauge;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/management/ObjectName;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/codahale/metrics/JmxAttributeGauge;-><init>(Ljavax/management/MBeanServerConnection;Ljavax/management/ObjectName;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/codahale/metrics/JmxAttributeGauge;->mBeanServerConn:Ljavax/management/MBeanServerConnection;

    iget-object v2, p0, Lcom/codahale/metrics/JmxAttributeGauge;->objectName:Ljavax/management/ObjectName;

    iget-object v3, p0, Lcom/codahale/metrics/JmxAttributeGauge;->attributeName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljavax/management/MBeanServerConnection;->getAttribute(Ljavax/management/ObjectName;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0

    :catch_1
    return-object v0
.end method
