.class Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$2;
.super Ljava/lang/Object;
.source "ApptentiveAvatarView.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;->fetchImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 247
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "UncaughtException in AvatarView."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 248
    invoke-static {p2, p1, p1}, Lcom/apptentive/android/sdk/module/metric/MetricModule;->sendError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
