.class Lcom/codahale/metrics/JvmAttributeGaugeSet$2;
.super Ljava/lang/Object;
.source "JvmAttributeGaugeSet.java"

# interfaces
.implements Lcom/codahale/metrics/Gauge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codahale/metrics/JvmAttributeGaugeSet;->getMetrics()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codahale/metrics/Gauge<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codahale/metrics/JvmAttributeGaugeSet;


# direct methods
.method constructor <init>(Lcom/codahale/metrics/JvmAttributeGaugeSet;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/codahale/metrics/JvmAttributeGaugeSet$2;->this$0:Lcom/codahale/metrics/JvmAttributeGaugeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/codahale/metrics/JvmAttributeGaugeSet$2;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .line 45
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s %s %s (%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/codahale/metrics/JvmAttributeGaugeSet$2;->this$0:Lcom/codahale/metrics/JvmAttributeGaugeSet;

    .line 47
    invoke-static {v3}, Lcom/codahale/metrics/JvmAttributeGaugeSet;->access$000(Lcom/codahale/metrics/JvmAttributeGaugeSet;)Ljava/lang/management/RuntimeMXBean;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/management/RuntimeMXBean;->getVmVendor()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/codahale/metrics/JvmAttributeGaugeSet$2;->this$0:Lcom/codahale/metrics/JvmAttributeGaugeSet;

    .line 48
    invoke-static {v3}, Lcom/codahale/metrics/JvmAttributeGaugeSet;->access$000(Lcom/codahale/metrics/JvmAttributeGaugeSet;)Ljava/lang/management/RuntimeMXBean;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/management/RuntimeMXBean;->getVmName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/codahale/metrics/JvmAttributeGaugeSet$2;->this$0:Lcom/codahale/metrics/JvmAttributeGaugeSet;

    .line 49
    invoke-static {v3}, Lcom/codahale/metrics/JvmAttributeGaugeSet;->access$000(Lcom/codahale/metrics/JvmAttributeGaugeSet;)Ljava/lang/management/RuntimeMXBean;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/management/RuntimeMXBean;->getVmVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/codahale/metrics/JvmAttributeGaugeSet$2;->this$0:Lcom/codahale/metrics/JvmAttributeGaugeSet;

    .line 50
    invoke-static {v3}, Lcom/codahale/metrics/JvmAttributeGaugeSet;->access$000(Lcom/codahale/metrics/JvmAttributeGaugeSet;)Ljava/lang/management/RuntimeMXBean;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/management/RuntimeMXBean;->getSpecVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 45
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
