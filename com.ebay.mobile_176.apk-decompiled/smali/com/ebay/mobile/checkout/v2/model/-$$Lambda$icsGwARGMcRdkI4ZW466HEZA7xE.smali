.class public final synthetic Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$icsGwARGMcRdkI4ZW466HEZA7xE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$icsGwARGMcRdkI4ZW466HEZA7xE;->f$0:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$icsGwARGMcRdkI4ZW466HEZA7xE;->f$0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
