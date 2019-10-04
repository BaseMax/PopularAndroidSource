.class public final synthetic Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$7HWO4eTq0JBwO-3aknZFbDhF0ik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$7HWO4eTq0JBwO-3aknZFbDhF0ik;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$7HWO4eTq0JBwO-3aknZFbDhF0ik;->f$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
