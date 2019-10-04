.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$3;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$3;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 90
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://www.apptentive.com/privacy/?source=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$3;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 91
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$3;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/Util;->canLaunchIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$3;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
