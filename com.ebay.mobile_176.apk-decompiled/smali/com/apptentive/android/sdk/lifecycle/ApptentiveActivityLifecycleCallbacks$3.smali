.class Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$3;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ApptentiveActivityLifecycleCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;Landroid/app/Activity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$3;->this$0:Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;

    iput-object p2, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$3;->this$0:Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->access$102(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 121
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "ACTIVITY_RESUMED"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "activity"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$3;->val$activity:Landroid/app/Activity;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
