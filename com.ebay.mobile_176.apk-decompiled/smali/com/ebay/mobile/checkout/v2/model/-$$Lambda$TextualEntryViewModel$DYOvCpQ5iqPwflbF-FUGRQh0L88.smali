.class public final synthetic Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$DYOvCpQ5iqPwflbF-FUGRQh0L88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/material/textfield/TextInputLayout;

.field private final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$DYOvCpQ5iqPwflbF-FUGRQh0L88;->f$0:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$DYOvCpQ5iqPwflbF-FUGRQh0L88;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$DYOvCpQ5iqPwflbF-FUGRQh0L88;->f$0:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$DYOvCpQ5iqPwflbF-FUGRQh0L88;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->lambda$setError$0(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/CharSequence;)V

    return-void
.end method
