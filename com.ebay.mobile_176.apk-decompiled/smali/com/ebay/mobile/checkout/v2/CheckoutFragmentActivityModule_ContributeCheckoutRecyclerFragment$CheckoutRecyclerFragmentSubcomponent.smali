.class public interface abstract Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivityModule_ContributeCheckoutRecyclerFragment$CheckoutRecyclerFragmentSubcomponent;
.super Ljava/lang/Object;
.source "CheckoutFragmentActivityModule_ContributeCheckoutRecyclerFragment.java"

# interfaces
.implements Ldagger/android/AndroidInjector;


# annotations
.annotation runtime Lcom/ebay/nautilus/shell/dagger/FragmentScope;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivityModule_ContributeCheckoutRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckoutRecyclerFragmentSubcomponent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivityModule_ContributeCheckoutRecyclerFragment$CheckoutRecyclerFragmentSubcomponent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/android/AndroidInjector<",
        "Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;",
        ">;"
    }
.end annotation
