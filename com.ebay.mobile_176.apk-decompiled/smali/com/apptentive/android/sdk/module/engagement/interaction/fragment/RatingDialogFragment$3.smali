.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$3;
.super Ljava/lang/Object;
.source "RatingDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$3;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$3;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;

    const-string v0, "decline"

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->engageInternal(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$3;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->transit()V

    return-void
.end method
