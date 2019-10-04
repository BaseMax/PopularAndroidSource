.class public final synthetic Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$SelectionFieldViewModel$AKpEewvLnVk9eU1yaurkjY-R3Rc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/widget/TextView;

.field private final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$SelectionFieldViewModel$AKpEewvLnVk9eU1yaurkjY-R3Rc;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$SelectionFieldViewModel$AKpEewvLnVk9eU1yaurkjY-R3Rc;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$SelectionFieldViewModel$AKpEewvLnVk9eU1yaurkjY-R3Rc;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$SelectionFieldViewModel$AKpEewvLnVk9eU1yaurkjY-R3Rc;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->lambda$setError$0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method
