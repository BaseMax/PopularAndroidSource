.class public final synthetic Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$bvF-Koe-Gu0nMMH826huPsf7m3c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

.field private final synthetic f$1:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$bvF-Koe-Gu0nMMH826huPsf7m3c;->f$0:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$bvF-Koe-Gu0nMMH826huPsf7m3c;->f$1:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$bvF-Koe-Gu0nMMH826huPsf7m3c;->f$0:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$bvF-Koe-Gu0nMMH826huPsf7m3c;->f$1:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    invoke-static {v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->lambda$onTextInputEditText$1(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;Landroid/view/View;)V

    return-void
.end method
