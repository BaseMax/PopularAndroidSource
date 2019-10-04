.class Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager$2;
.super Ljava/lang/Object;
.source "ApptentiveToastNotificationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->startDismissalAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager$2;->this$0:Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->access$100(Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
