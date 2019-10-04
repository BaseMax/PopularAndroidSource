.class Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar$1;
.super Ljava/lang/Object;
.source "ApptentiveMaterialIndeterminateProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;->start()V
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

    .line 34
    iput-object p1, p0, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar$1;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar$1;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;->setProgress(I)V

    .line 39
    iget-object v0, p0, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar$1;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/apptentive/android/sdk/R$anim;->apptentive_material_inndeterminate_progress_bar:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar$1;->this$0:Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;

    iget-object v1, v1, Lcom/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar;->bar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
