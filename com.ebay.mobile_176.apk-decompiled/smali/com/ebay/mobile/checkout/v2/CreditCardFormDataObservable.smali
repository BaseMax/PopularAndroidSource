.class public Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;
.super Ljava/lang/Object;
.source "CreditCardFormDataObservable.java"


# static fields
.field private static final instance:Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;


# instance fields
.field private cardNumber:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;-><init>()V

    sput-object v0, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->instance:Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->cardNumber:Landroidx/databinding/ObservableField;

    return-void
.end method

.method public static getInstance()Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;
    .locals 1

    .line 20
    sget-object v0, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->instance:Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;

    return-object v0
.end method


# virtual methods
.method public observeCardNumber(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->cardNumber:Landroidx/databinding/ObservableField;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->cardNumber:Landroidx/databinding/ObservableField;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->cardNumber:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->notifyChange()V

    return-void
.end method
