.class public final synthetic Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$BHzYXZ2Dhy3tBi11QgEyZepXgjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

.field private final synthetic f$1:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$BHzYXZ2Dhy3tBi11QgEyZepXgjw;->f$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$BHzYXZ2Dhy3tBi11QgEyZepXgjw;->f$1:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$BHzYXZ2Dhy3tBi11QgEyZepXgjw;->f$0:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$BHzYXZ2Dhy3tBi11QgEyZepXgjw;->f$1:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->lambda$onFocusChange$2(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;Lcom/google/android/material/textfield/TextInputEditText;)V

    return-void
.end method
