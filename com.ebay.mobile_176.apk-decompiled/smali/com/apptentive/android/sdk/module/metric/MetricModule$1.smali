.class final Lcom/apptentive/android/sdk/module/metric/MetricModule$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "MetricModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/metric/MetricModule;->sendMetric(Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$trigger:Ljava/lang/String;

.field final synthetic val$type:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/metric/MetricModule$1;->val$type:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/metric/MetricModule$1;->val$trigger:Ljava/lang/String;

    iput-object p3, p0, Lcom/apptentive/android/sdk/module/metric/MetricModule$1;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/metric/MetricModule$1;->val$type:Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/metric/MetricModule$1;->val$trigger:Ljava/lang/String;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/metric/MetricModule$1;->val$data:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/module/metric/MetricModule;->sendMetric(Lcom/apptentive/android/sdk/model/EventPayload$EventLabel;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
