.class Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$1;
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


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;

    const-string v1, "com.apptentive"

    const-string v2, "About"

    const-string v4, "close"

    const/4 p1, 0x0

    move-object v7, p1

    check-cast v7, [Lcom/apptentive/android/sdk/model/ExtendedData;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;->engage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V

    .line 71
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment$1;->this$0:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment;->transit()V

    return-void
.end method
