.class final Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/app/FwLoaderManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/BaseFragment;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/activities/BaseFragment;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/activities/BaseFragment;Lcom/ebay/mobile/activities/BaseFragment$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;-><init>(Lcom/ebay/mobile/activities/BaseFragment;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/activities/BaseFragment;->onCanceled(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    return-void
.end method

.method public onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/activities/BaseFragment;->onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    return-void
.end method

.method public onTaskStarted(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ebay/mobile/activities/BaseFragment$LoaderCallback;->this$0:Lcom/ebay/mobile/activities/BaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/activities/BaseFragment;->onTaskStarted(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    return-void
.end method
