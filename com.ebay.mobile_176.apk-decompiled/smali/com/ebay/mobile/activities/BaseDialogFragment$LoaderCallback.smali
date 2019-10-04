.class final Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;
.super Ljava/lang/Object;
.source "BaseDialogFragment.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/app/FwLoaderManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/BaseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/BaseDialogFragment;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/activities/BaseDialogFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/activities/BaseDialogFragment;Lcom/ebay/mobile/activities/BaseDialogFragment$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;-><init>(Lcom/ebay/mobile/activities/BaseDialogFragment;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseDialogFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/BaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/activities/BaseDialogFragment;->onCanceled(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    return-void
.end method

.method public onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/activities/BaseDialogFragment;->onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    return-void
.end method

.method public onTaskStarted(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseDialogFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/activities/BaseDialogFragment;->onTaskStarted(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    return-void
.end method
