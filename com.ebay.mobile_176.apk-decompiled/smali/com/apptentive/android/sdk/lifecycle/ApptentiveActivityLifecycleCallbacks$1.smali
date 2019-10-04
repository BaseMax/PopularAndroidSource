.class Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ApptentiveActivityLifecycleCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->registerCallbacks(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$1;->this$0:Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    const-string v0, "Sending missing foreground notification."

    const/4 v1, 0x0

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "APP_ENTERED_FOREGROUND"

    .line 80
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;)V

    return-void
.end method
