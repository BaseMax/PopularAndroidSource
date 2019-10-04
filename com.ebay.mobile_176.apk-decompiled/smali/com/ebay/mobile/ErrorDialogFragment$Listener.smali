.class final Lcom/ebay/mobile/ErrorDialogFragment$Listener;
.super Ljava/lang/Object;
.source "ErrorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ErrorDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/ErrorDialogFragment;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/ErrorDialogFragment;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/ebay/mobile/ErrorDialogFragment$Listener;->this$0:Lcom/ebay/mobile/ErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/ErrorDialogFragment;Lcom/ebay/mobile/ErrorDialogFragment$1;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/ebay/mobile/ErrorDialogFragment$Listener;-><init>(Lcom/ebay/mobile/ErrorDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/ebay/mobile/ErrorDialogFragment$Listener;->this$0:Lcom/ebay/mobile/ErrorDialogFragment;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/ErrorDialogFragment;->dismissMessage(Z)V

    return-void
.end method
