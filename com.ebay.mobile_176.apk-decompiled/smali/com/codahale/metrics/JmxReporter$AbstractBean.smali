.class abstract Lcom/codahale/metrics/JmxReporter$AbstractBean;
.super Ljava/lang/Object;
.source "JmxReporter.java"

# interfaces
.implements Lcom/codahale/metrics/JmxReporter$MetricMBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/JmxReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractBean"
.end annotation


# instance fields
.field private final objectName:Ljavax/management/ObjectName;


# direct methods
.method constructor <init>(Ljavax/management/ObjectName;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/codahale/metrics/JmxReporter$AbstractBean;->objectName:Ljavax/management/ObjectName;

    return-void
.end method


# virtual methods
.method public objectName()Ljavax/management/ObjectName;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/codahale/metrics/JmxReporter$AbstractBean;->objectName:Ljavax/management/ObjectName;

    return-object v0
.end method
