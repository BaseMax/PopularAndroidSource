.class Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar$2;
.super Ljava/lang/Object;
.source "ApptentiveMaterialIndeterminateProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar$2;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar$2;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;->setProgress(I)V

    .line 51
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar$2;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;

    iget-object v0, v0, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;->bar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
